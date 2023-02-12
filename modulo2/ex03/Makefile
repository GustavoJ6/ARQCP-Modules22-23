ex03: asm.o main.o
	gcc -g -Wall asm.o main.o -o ex03
	
asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex03
	
run: ex03
	./ex03
