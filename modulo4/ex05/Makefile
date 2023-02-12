ex05: main.o inc_and_square.o 
	gcc -g -Wall main.o inc_and_square.o -o ex05
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
inc_and_square.o: inc_and_square.s
	gcc -g -Wall -c inc_and_square.s -o inc_and_square.o
	
clean:
	rm -f *.o ex05
	
run: ex05
	./ex05
