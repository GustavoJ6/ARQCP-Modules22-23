ex12a: main.o count_bits_one.o 
	gcc -g -Wall main.o count_bits_one.o -o ex12a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
count_bits_one.o: count_bits_one.c
	gcc -g -Wall -c count_bits_one.c -o count_bits_one.o
	
vg: ex12a
	valgrind ./ex12a
clean:
	rm -f *.o ex12a
	
run: ex12a
	./ex12a
