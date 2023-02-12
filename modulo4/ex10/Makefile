ex10: main.o asm.o 
	gcc -g -Wall main.o asm.o -o ex10
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o
	
vg: ex10	
	valgrind ./ex10
clean:
	rm -f *.o ex10
	
run: ex10
	./ex10
