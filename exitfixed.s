.text
    .global _start

    _start:

	movb $0, %bl
        movb $1, %al
	int $0x80
