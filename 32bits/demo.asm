section .data
  hello db 'Hello, World!',0  ; string to display
  hello_len equ $ - hello     ; string lenght

section .text
  global _start               ;must be declared for linker (ld)

_start:
  mov eax, 4                  ; syscall number to call write (sys_write)
  mov ebx, 1                  ; file descriptor (stdout)
  mov ecx, hello              ; pointer to the string
  mov edx, hello_len          ; string length
  int 0x80                    ; the syscall

  ; End programm
  mov eax, 1                  ; syscall number to exit (sys_exit)
  xor ebx, ebx                ; exit code
  int 0x80                    ; the syscall
