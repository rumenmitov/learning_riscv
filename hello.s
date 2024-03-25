.global _start
.text

_start:
    # write (1, message, 13)
    li a0, 1                # file handle 1 is stdout
    la a1, message          # load whatever is in address message
    li a2, 13               # load the size of the message (in this case 13)
    li a7, 64               # invoke write system call
    ecall                   # invoke system call

    li a0, 0                # set return value to 0
    li a7, 93               # system call 93 is exit
    ecall

message:
    .ascii "Hello, world!\n"
