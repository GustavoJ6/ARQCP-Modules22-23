ex15c: main.o activate_bits.o activate_invert_bits.o
	gcc main.o activate_bits.o activate_invert_bits.o -o ex15c
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

activate_bits.o: activate_bits.s
	gcc -g -Wall -c activate_bits.s -o activate_bits.o

activate_invert_bits.o: activate_invert_bits.s
	gcc -g -Wall -c activate_invert_bits.s -o activate_invert_bits.o
	
vg: ex15c
	valgrind ./ex15c
	
clean:
	rm -f *.o ex15c
	
run: ex15c
	./ex15c
