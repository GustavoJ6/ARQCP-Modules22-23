ex11: main.o new_matrix.o
	gcc -g -Wall main.o new_matrix.o -o ex11
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o
	
vg: ex11
	valgrind ./ex11
	
clean:
	rm -f *.o ex11
	
run: ex11
	./ex11
