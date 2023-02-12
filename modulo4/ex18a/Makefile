ex18a: main.o changes.o 
	gcc -g -Wall main.o changes.o -o ex18a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
changes.o: changes.c
	gcc -g -Wall -c changes.c -o changes.o
	
vg: ex18a
	valgrind ./ex18a
clean:
	rm -f *.o ex18a
	
run: ex18a
	./ex18a
