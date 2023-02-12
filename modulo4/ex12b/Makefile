ex12b: main.o count_bits_one.o 
	gcc -g -Wall main.o count_bits_one.o -o ex12b
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
count_bits_one.o: count_bits_one.s
	gcc -g -Wall -c count_bits_one.s -o count_bits_one.o
	
vg: ex12b
	valgrind ./ex12b
clean:
	rm -f *.o ex12b
	
run: ex12b
	./ex12b
