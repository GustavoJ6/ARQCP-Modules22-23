ex16: main.o swap.o 
	gcc -g -Wall main.o swap.o -o ex16
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
swap.o: swap.s
	gcc -g -Wall -c swap.s -o swap.o
	
clean:
	rm -f *.o ex16
	
run: ex16
	./ex16
