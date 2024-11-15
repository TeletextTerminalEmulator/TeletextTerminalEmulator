use ldscript_parser::RootItem;
use std::{env, error::Error, fs, process::Command};
use svd2rust::{Config, Target};

fn main() -> Result<(), Box<dyn Error>> {
    const LINKER_SCRIPT_NAME: &str = "memory.x";
    const SVD_NAME: &str = "soc.svd";
    let out_dir = env::var("OUT_DIR")?;

    Command::new("python")
        .arg("../litex/basys3_build.py")
        .arg(format!("--output-dir={out_dir}/litex_basys3"))
        .arg(format!("--soc-svd={out_dir}/{SVD_NAME}"))
        .arg(format!("--memory-x={out_dir}/{LINKER_SCRIPT_NAME}"))
        .arg("--no-compile")
        .arg("--build")
        .status()?;

    println!("cargo:rustc-link-search={out_dir}"); // Let linker find the generated linker script

    let mut svd_config = Config::default();
    svd_config.target = Target::RISCV;
    svd_config.make_mod = true;

    // Generate the svd file to a string in RAM
    let mut generation = svd2rust::generate(
        fs::read_to_string(format!("{out_dir}/{SVD_NAME}"))?.as_str(),
        &svd_config,
    )?;

    // Add newlines as the svd2rust utility do
    generation.lib_rs = generation.lib_rs.replace("] ", "]\n");

    // Write the generate peripheral access code
    fs::write("src/soc.rs", generation.lib_rs)?;

    println!("written svd2rust");

    let raw_script = fs::read_to_string(format!("{out_dir}/{LINKER_SCRIPT_NAME}"))?;
    let parsed_script = ldscript_parser::parse(&raw_script)?;

    let mut mem_map_rs = String::new();

    for root_item in parsed_script {
        if let RootItem::Memory { regions } = root_item {
            for region in regions {
                let region_name = region.name.to_uppercase();
                let region_origin = region.origin;
                let region_length = region.length;
                mem_map_rs.push_str(&format!(
                    "pub const {region_name}_ORIGIN: usize = 0x{region_origin:X};\n"
                ));
                mem_map_rs.push_str(&format!(
                    "pub const {region_name}_LENGTH: usize = 0x{region_length:X};\n"
                ))
            }
        }
    }
    fs::write("src/mem_map.rs", mem_map_rs)?;

    Ok(())
}
