# Makefile for compiling all C files for RV32IMCB and dumping assembly and hex

CC = riscv64-unknown-elf-gcc
OBJDUMP = riscv64-unknown-elf-objdump
OBJCOPY = riscv64-unknown-elf-objcopy

CFLAGS = -O2 -nostdlib -nostartfiles -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32
LDFLAGS = -T link.ld
OBJDUMP_FLAGS = -d -M no-aliases -S

SRC := $(wildcard *.c)
ELF := $(SRC:.c=.elf)
ASM := $(SRC:.c=.S)
BIN := $(SRC:.c=.bin)
HEX := $(SRC:.c=.hex)

.PHONY: all clean

all: $(ELF) $(ASM) $(HEX)

%.elf: %.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o $@

%.S: %.elf
	$(OBJDUMP) $(OBJDUMP_FLAGS) $< > $@

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@

%.hex: %.bin
	xxd -p $< > $@

clean:
	rm -f *.elf *.S *.bin *.hex
