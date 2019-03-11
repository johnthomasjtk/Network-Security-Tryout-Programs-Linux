.text
    .global _start

    _start:

	xor %bl, %bl
        movb $1, %al
	int $0x80
