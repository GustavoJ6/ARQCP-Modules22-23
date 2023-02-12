ex14: main.o new_matrix.o add_matrixes.o
	gcc -g -Wall main.o new_matrix.o add_matrixes.o -o ex14
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o

add_matrixes.o: add_matrixes.c
	gcc -g -Wall -c add_matrixes.c -o add_matrixes.o
	
vg: ex14
	valgrind ./ex14
	
clean:
	rm -f *.o ex14
	
run: ex14
	./ex14
