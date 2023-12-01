use anyhow::Result;
use clap::{Args, Parser};
use xshell::{cmd, Shell};
use project_root;

#[derive(Parser)]
enum Cli {
    Synthesize(Synthesize)
}

#[derive(Args)]
struct Synthesize {
    /// Build artifacts in release mode, with optimizations.
    #[arg(long, short)]
    release: bool,
}

fn main() -> Result<()> {
    let Cli::Synthesize(Synthesize { release }) = Cli::parse();

    let release_flag = release.then_some("--release");
    const TARGET: &str = "riscv32i-unknown-none-elf";
    let project_dir = project_root::get_project_root()?.to_string_lossy().to_string();

    let sh = Shell::new()?;
    cmd!(
        sh,
        "cargo build {release_flag...} --target {TARGET}"
    ).run()?;

    let profile_dir = if release { "release" } else { "debug" };
    let bin_path = format!("{project_dir}/target/{TARGET}/{profile_dir}/teletext.bin");

    cmd!(
        sh,
        "cargo objcopy --target {TARGET} -- -O binary {bin_path}"
    ).run()?;

    let build_script = format!("{project_dir}/litex/basys3_build.py");
    let out_dir = format!("{project_dir}/litex_build");

    cmd!(
        sh,
        "python3 {build_script} --build --load --integrated-rom-init={bin_path} --output-dir={out_dir} --no-compile-software"
    ).run()?;

    Ok(())
}
