.global _main
.align 2 // apple silicon requires 2-byte alignment for instructions
_main:
    mov x0, #1 // file descriptor 1 (stdout)
    ldr x1, message // address of message
    ldr x2, #14 // length of message
    mov x16, #4 // write syscall
    svc #0 // make syscall

    b _exit

_exit:
    mov x0, #0 // return 0
    mov x16, #1 // exit syscall
    svc #0 // make



message:
    .asciz "Hello, world!\n"
