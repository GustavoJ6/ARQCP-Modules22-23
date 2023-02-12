ex15: main.o stack.o 
	gcc -g -Wall main.o stack.o -o ex15
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
stack.o: stack.c	
	gcc -g -Wall -c stack.c -o stack.o
	
vg: ex15
	valgrind ./ex15
	
clean:
	rm -f *.o ex15
	
run: ex15
	./ex15

db: ex15
	gdb -tui ./ex15