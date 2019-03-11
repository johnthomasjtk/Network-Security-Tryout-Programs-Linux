


FLAGS = -ggstabs --execstack
#CC = gcc
AS = as
LD = ld
#OBJ=asm1.o asm2.o asm3.o

%.o: %.s 
	$(AS) -o $@ $(FLAGS) $<

#demo1:$(OBJ)
#	$(LD) -o $@ demo1.o

exit: exit.o
	$(LD) -o $@ $< 

exitfixed: exitfixed.o
	$(LD) -o $@ $< 

exitfixed1: exitfixed1.o
	$(LD) -o $@ $< 

shell: spawnshell.o
	$(LD) -o $@ $< 

shellasm: shellasm.o
	$(LD) -o $@ $< 

shellcode: shellcode.o
	$(LD) -o $@ $< 

all: exit exitfixed spawnshell shellasm shellcode
clean:
	rm -f *.o
	rm -f exit
	rm -f exitfixed
	rm -f shellasm 
	rm -f shellcode
