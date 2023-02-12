ex18c: main.o changes_vec.o 
	gcc -g -Wall main.o changes_vec.o -o ex18c
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
changes_vec.o: changes_vec.s
	gcc -g -Wall -c changes_vec.s -o changes_vec.o
	
vg: ex18c
	valgrind ./ex18c
clean:
	rm -f *.o ex18c
	
run: ex18c
	./ex18c
