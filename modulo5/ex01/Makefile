ex01: main.o
	gcc -g -Wall main.o -o ex01
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
vg: ex01
	valgrind ./ex01
	
clean:
	rm -f *.o ex01
	
run: ex01
	./ex01
