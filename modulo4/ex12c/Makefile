ex12c: main.o vec_count_bits_one.o 
	gcc -g -Wall main.o vec_count_bits_one.o -o ex12c
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
vec_count_bits_one.o: vec_count_bits_one.s
	gcc -g -Wall -c vec_count_bits_one.s -o vec_count_bits_one.o
	
vg: ex12c
	valgrind ./ex12c
clean:
	rm -f *.o ex12c
	
run: ex12c
	./ex12c
