use anyhow::Result;
use clap::{Args, Parser};
use project_root;
use xshell::{cmd, PushEnv, Shell};

#[derive(Parser)]
enum Cli {
    Synthesize(BuildArgs),
    Build(BuildArgs),
    Check(BuildArgs),
    Clippy(BuildArgs),
    Doc(BuildArgs),
}

#[derive(Args)]
struct BuildArgs {
    /// Build artifacts in release mode, with optimizations.
    #[arg(long, short)]
    release: bool,

    /// Add backtrace functionality to the panic handler
    #[arg(long, short)]
    backtrace: bool,

    /// Split debug and terminal output
    #[arg(long, short)]
    terminal_uart: bool,
}

struct Environment<'a> {
    release_flag: Option<&'static str>,
    feature_flags: Vec<String>,
    env: Option<(PushEnv<'a>, PushEnv<'a>, Option<PushEnv<'a>>)>
}

const TARGET: &str = "riscv32imac-unknown-none-elf";

/// Takes the build args and transforms them into command line arguments and environment variables
fn prepare_env<'a>(sh: &'a Shell, args: &BuildArgs) -> Environment<'a> {

    let features: String = [
        args.backtrace.then_some("backtrace"),
        args.terminal_uart.then_some("terminal_uart"),
    ]
    .into_iter()
    .flatten()
    .collect::<Vec<&str>>()
    .join(" ");

    Environment {
        release_flag: args.release.then_some("--release"),
        feature_flags: if !features.is_empty() {
            vec!["--features".into(), features]
        } else {
            vec![]
        },
        env: args.backtrace.then(|| {
            (
                sh.push_env("CXX_riscv32imac_unknown_none_elf", "clang++"),
                sh.push_env(
                    "BINDGEN_EXTRA_CLANG_ARGS_riscv32imac_unknown_none_elf",
                    "--target=riscv32-unknown-none-elf",
                ),
                cmd!(sh, "llvm-ar")
                    .quiet()
                    .ignore_stdout()
                    .ignore_status()
                    .ignore_stderr()
                    .run().ok().map(|_| sh.push_env("AR_riscv32imac_unknown_none_elf", "llvm-ar")),
            )
        }),
    }
}

/// Returns the path to the binary file
fn build_binary(sh: &Shell, project_dir: &str, args: &BuildArgs) -> Result<String> {
    let Environment { release_flag, ref feature_flags, env } = prepare_env(sh, args);

    cmd!(
        sh,
        "cargo build {release_flag...} {feature_flags...} --target {TARGET}"
    )
    .run()?;

    let profile_dir = if args.release { "release" } else { "debug" };
    let bin_path = format!("{project_dir}/target/{TARGET}/{profile_dir}/teletext.bin");

    cmd!(
        sh,
        "cargo objcopy {release_flag...} {feature_flags...} --quiet --target {TARGET} -- -O binary {bin_path}"
    )
    .run()?;

    drop(env);
    Ok(bin_path)
}

fn check_code(sh: &Shell, args: &BuildArgs, command: &str) -> Result<()> {
    let Environment { release_flag, ref feature_flags, env } = prepare_env(sh, args);

    cmd!(
        sh,
        "cargo {command} {release_flag...} {feature_flags...} --target {TARGET}"
    )
    .run()?;
    
    drop(env);
    Ok(())
}

fn synthesize(sh: &Shell, project_dir: &str, bin_path: &str) -> Result<()> {
    let build_script = format!("{project_dir}/litex/basys3_build.py");
    let out_dir = format!("{project_dir}/litex_build");

    let env = sh.push_env("PYTHONUTF8", "1");

    cmd!(
        sh,
        "python {build_script} --build --integrated-rom-init={bin_path} --output-dir={out_dir} --no-compile-software"
    ).run()?;

    drop(env);
    Ok(())
}

fn main() -> Result<()> {
    let sh = Shell::new()?;
    let project_dir = project_root::get_project_root()?
        .to_string_lossy()
        .to_string();

    match Cli::parse() {
        Cli::Build(args) => {
            build_binary(&sh, &project_dir, &args)?;
        }
        Cli::Synthesize(args) => {
            let bin_path = build_binary(&sh, &project_dir, &args)?;
            synthesize(&sh, &project_dir, &bin_path)?;
        },
        Cli::Check(args) => {
            check_code(&sh, &args, "check")?;
        },
        Cli::Clippy(args) => {
            check_code(&sh, &args, "clippy")?;
        },
        Cli::Doc(args) => {
            check_code(&sh, &args, "doc")?;
        }
    }

    Ok(())
}
