# demo-asm

## Setup

`apt -y install make nasm binutils vim git`

## For 64 bits

 - nasm -f elf64 demo.asm
 - ld -o demo demo.o

## For 32 bits

 - nasm -f elf32 demo.asm
 - ld -m elf_i386 -o demo demo.o

## Linux kernel syscall reference

 - 32bits https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/x86/entry/syscalls/syscall_32.tbl?h=v6.8-rc7
 - 64bits https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/x86/entry/syscalls/syscall_64.tbl?h=v6.8-rc7
