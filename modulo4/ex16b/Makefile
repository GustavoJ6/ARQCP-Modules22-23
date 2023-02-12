ex16b: main.o join_bits.o 
	gcc -g -Wall main.o join_bits.o -o ex16b
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
join_bits.o: join_bits.s
	gcc -g -Wall -c join_bits.s -o join_bits.o
	
vg: ex16b
	valgrind ./ex16b
clean:
	rm -f *.o ex16b
	
run: ex16b
	./ex16b
