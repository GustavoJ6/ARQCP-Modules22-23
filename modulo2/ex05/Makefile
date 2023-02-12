ex05: main.o swapBytes.o 
	gcc -g -Wall main.o swapBytes.o -o ex05
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
swapBytes.o: swapBytes.s
	gcc -g -Wall -c swapBytes.s -o swapBytes.o
	
clean:
	rm -f *.o ex05
	
run: ex05
	./ex05
