#include <stdio.h>
#include <string.h>

/*char shellcode[] = "\xbb\x14\x00\x00\x00" 
		"\xb8\x01\x00\x00\x00"
		"\xcd\x80";
*/
//char shellcode[] = "\xb3\x14\xb0\x01\xcd\x80";
char shellcode[] = "\x30\xdb\xb0\x01\xcd\x80";

void main()
{

 printf("Shellcode Length:  %d\n", strlen(shellcode));
  int *ret;

  ret = (int *)&ret + 2;
  *ret = (int)shellcode;

   

//int (*ret)() = (int(*)())shellcode;

//ret();
}
