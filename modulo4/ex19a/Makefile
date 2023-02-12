ex19a: main.o add_byte.o
	gcc main.o add_byte.o -o ex19a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

add_byte.o: add_byte.c
	gcc -g -Wall -c add_byte.c -o add_byte.o
	
vg: ex19a	
	valgrind ./ex19a
	
clean:
	rm -f *.o ex19a
	
run: ex19a
	./ex19a
