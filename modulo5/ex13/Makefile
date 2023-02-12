ex13: main.o new_matrix.o count_odd_matrix.o 
	gcc -g -Wall main.o new_matrix.o count_odd_matrix.o -o ex13
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
new_matrix.o: new_matrix.c	
	gcc -g -Wall -c new_matrix.c -o new_matrix.o
	
count_odd_matrix.o: count_odd_matrix.s	
	gcc -g -Wall -c count_odd_matrix.s -o count_odd_matrix.o
	
vg: ex13
	valgrind ./ex13
	
clean:
	rm -f *.o ex13
	
run: ex13
	./ex13

db: ex13
	gdb -tui ./ex13