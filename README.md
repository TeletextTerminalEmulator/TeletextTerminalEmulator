# Teletext Terminal

A university project about using FPGAs.

### Prerequisites


- A Digilent Basys3 board. (Other FPGAs might work but need adjusted code.)
- A composite adapter (TODO: schematics)
- Install LiteX: https://github.com/enjoy-digital/litex/wiki/Installation
- Install Rust: https://rustup.rs
    - Install RISC-V toolchain: `$ rustup target add riscv32imac-unknown-none-elf`
    - Install LLVM tools: `$ rustup component add llvm-tools`
    - Install cargo binutils: `$ cargo install cargo-binutils`

### Compile

To just compile the binary for the internal risc-v cpu you can run `cargo xtask build [--release]`

### Synthesize

To synthesize the SoC you have to either add the Vivado folder to your `PATH` or to the `LITEX_ENV_VIVADO` env variable.
The you can simply run: `cargo xtask synthesize --release [--terminal-uart]`.
(When synthesizing, --release because the binary file needs to be as small as possible)
