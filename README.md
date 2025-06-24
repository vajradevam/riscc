# RISC-V Testbench Program Suite

This repository contains a suite of standalone RISC-V programs written in C, designed to test various aspects of a RISC-V processor core. Each program performs computations and writes a known result to register `x7` (`0x7`) for automated testbench verification:
- **PASS**: Sets `x7 = 2025`
- **FAIL**: Sets `x7 = 0xDEAD`


## Installation (Arch Linux)

Install the RISC-V toolchain:
```bash
sudo pacman -S base-devel git
git clone https://aur.archlinux.org/riscv64-unknown-elf-gcc.git
cd riscv64-unknown-elf-gcc
makepkg -si
```

## Purpose

These programs test:

    Arithmetic, logic, memory, and control flow instructions

    Ideal for simulation, waveform inspection, or hardware validation

## Building

Compile programs and generate annotated assembly:

```bash
make  # Generates .elf binaries and .S disassembly
```
Clean build artifacts:

```bash
make clean
```
Converting ELF to HEX for Verilog simulations:

```bash
riscv64-unknown-elf-objcopy -O ihex program.elf program.hex
riscv64-unknown-elf-objcopy -O binary program.elf program.bin
```

## Waveform Testing

```
Load .hex or .bin into memory in your Verilog testbench

Simulate using ModelSim/Verilator/Icarus

Inspect x7 register:

    PASS: x7 == 2025

    FAIL: x7 == 0xDEAD

Use GTKWave for debugging registers/memory
```
## 📜 License

Released under the [MIT License](LICENSE).  
Copyright (c) 2025 Aman Pathak.