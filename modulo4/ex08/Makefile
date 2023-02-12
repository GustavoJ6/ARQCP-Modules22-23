ex08: main.o calc.o 
	gcc -g -Wall main.o calc.o -o ex08
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
calc.o: calc.s
	gcc -g -Wall -c calc.s -o calc.o
	
vg: ex08	
	valgrind ./ex08
clean:
	rm -f *.o ex08
	
run: ex08
	./ex08
