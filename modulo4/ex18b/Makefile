ex18b: main.o changes.o 
	gcc -g -Wall main.o changes.o -o ex18b
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
changes.o: changes.s
	gcc -g -Wall -c changes.s -o changes.o
	
vg: ex18b
	valgrind ./ex18b
clean:
	rm -f *.o ex18b
	
run: ex18b
	./ex18b
