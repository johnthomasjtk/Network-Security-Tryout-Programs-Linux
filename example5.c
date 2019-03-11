//Example1 - using the stack 
//to call subroutines
#include <stdio.h>
int add(int x, int y){
//	char ch[10] = "AAAABBCCCC";
	int a = 0xfeed;
//	int b=0xdead, c= 0xbeef;
	int b=0xdead;
	int z = x + y;
	return z;
}

int main(){
	add(6,8);
	return 0xf00d;
}

