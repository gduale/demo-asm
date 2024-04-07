section .data
  hello db 'Hello, World!',0xA,0; string to display
  hello_len equ $ - hello	; string lenght
  cpt db 5                      ; loop counter

section .text
  global _start                 ;must be declared for linker (ld)

_start:

mov rbx, [cpt]                  ; store the loop counter
MY_LOOP:
  mov rax, 1                    ; syscall number to call write (sys_write)
  mov rdi, 1                    ; file descriptor (stdout)
  mov rsi, hello                ; pointer to the string
  mov rdx, hello_len            ; string length
  syscall                       ; the syscall
  dec rbx                       ; decrement rbx
  cmp rbx, 0
JNE MY_LOOP

  ; End programm
  mov rax, 60                   ; syscall number to exit (sys_exit)
  xor rdi, rdi                  ; exit code
  syscall                       ; the syscall
