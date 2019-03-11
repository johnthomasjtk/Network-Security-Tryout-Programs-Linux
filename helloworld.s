#my first assembly program

# all initialized data is stored in data segment 
.data 

hwstr:
	.asciz "Hello World\n" # ascii is used to define all ascii strings in assembly

.text 
.global _start

_start: 

#load args for write
mov $4, %eax
mov $1, %ebx
mov $hwstr, %ecx
mov $12, %edx

int $0x80

mov hwstr, %eax
mov $hwstr, %ebx

movl $1, %eax
movl $0, %ebx
int $0x80
