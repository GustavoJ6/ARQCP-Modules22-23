ex15b: main.o activate_bits.o
	gcc main.o activate_bits.o -o ex15b
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

activate_bits.o: activate_bits.s
	gcc -g -Wall -c activate_bits.s -o activate_bits.o
	
vg: ex15b
	valgrind ./ex15b
	
clean:
	rm -f *.o ex15b
	
run: ex15b
	./ex15b
