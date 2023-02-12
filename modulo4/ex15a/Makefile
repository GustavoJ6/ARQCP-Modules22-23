ex15a: main.o activate_bits.o
	gcc main.o activate_bits.o -o ex15a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

activate_bits.o: activate_bits.c
	gcc -g -Wall -c activate_bits.c -o activate_bits.o
	
vg: ex15a	
	valgrind ./ex15a
	
clean:
	rm -f *.o ex15a
	
run: ex15a
	./ex15a
