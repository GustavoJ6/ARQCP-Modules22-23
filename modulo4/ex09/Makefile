ex09: main.o calculate.o 
	gcc -g -Wall main.o calculate.o -o ex09
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
calculate.o: calculate.s
	gcc -g -Wall -c calculate.s -o calculate.o
	
clean:
	rm -f *.o ex09
	
run: ex09
	./ex09
