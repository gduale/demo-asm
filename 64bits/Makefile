# Makefile for NASM Assembly program

# NASM source file without extention
SOURCE_FILE = demo

# NASM options
NASM_OPTIONS = -f elf64

# LD options (linker)
LD_OPTIONS = -s

# Assemble command
ASSEMBLE = nasm $(NASM_OPTIONS)

# Linking command
LINK = ld $(LD_OPTIONS)

# Default target
all: $(SOURCE_FILE)

$(SOURCE_FILE): $(SOURCE_FILE).o
	$(LINK) -o $@ $<

$(SOURCE_FILE).o: $(SOURCE_FILE).asm
	$(ASSEMBLE) -o $@ $<

clean:
	rm -f $(SOURCE_FILE) $(SOURCE_FILE).o
