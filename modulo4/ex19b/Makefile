ex19b: main.o add_byte.o
	gcc main.o add_byte.o -o ex19b
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

add_byte.o: add_byte.s
	gcc -g -Wall -c add_byte.s -o add_byte.o
	
vg: ex19b
	valgrind ./ex19b
	
clean:
	rm -f *.o ex19b
	
run: ex19b
	./ex19b
