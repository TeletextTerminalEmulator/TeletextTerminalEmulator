use anyhow::Result;
use clap::{Args, Parser};
use project_root;
use xshell::{cmd, Shell};

#[derive(Parser)]
enum Cli {
    Synthesize(BuildArgs),
    Build(BuildArgs),
}

#[derive(Args)]
struct BuildArgs {
    /// Build artifacts in release mode, with optimizations.
    #[arg(long, short)]
    release: bool,
}

/// Returns the path to the binary file
fn build_binary(sh: &Shell, project_dir: &str, args: &BuildArgs) -> Result<String> {
    let release = args.release;

    let release_flag = release.then_some("--release");
    const TARGET: &str = "riscv32i-unknown-none-elf";

    cmd!(sh, "cargo build {release_flag...} --target {TARGET}").run()?;

    let profile_dir = if release { "release" } else { "debug" };
    let bin_path = format!("{project_dir}/target/{TARGET}/{profile_dir}/teletext.bin");

    cmd!(
        sh,
        "cargo objcopy --target {TARGET} -- -O binary {bin_path}"
    )
    .run()?;

    Ok(bin_path)
}

fn synthesize(sh: &Shell, project_dir: &str, bin_path: &str) -> Result<()> {
    let build_script = format!("{project_dir}/litex/basys3_build.py");
    let out_dir = format!("{project_dir}/litex_build");

    cmd!(
        sh,
        "python3 {build_script} --build --integrated-rom-init={bin_path} --output-dir={out_dir} --no-compile-software"
    ).run()?;

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
        }
    }

    Ok(())
}
