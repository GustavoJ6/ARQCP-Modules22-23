ex16a: main.o join_bits.o 
	gcc -g -Wall main.o join_bits.o -o ex16a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
join_bits.o: join_bits.c
	gcc -g -Wall -c join_bits.c -o join_bits.o
	
vg: ex16a
	valgrind ./ex16a
clean:
	rm -f *.o ex16a
	
run: ex16a
	./ex16a
