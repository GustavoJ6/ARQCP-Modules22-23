ex09: main.o sum_and_subtract.o 
	gcc -g -Wall main.o sum_and_subtract.o -o ex09
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
sum_and_subtract.o: sum_and_subtract.s
	gcc -g -Wall -c sum_and_subtract.s -o sum_and_subtract.o
	
clean:
	rm -f *.o ex09
	
run: ex09
	./ex09
