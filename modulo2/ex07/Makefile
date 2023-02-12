ex07: main.o crossSumBytes.o 
	gcc -g -Wall main.o crossSumBytes.o -o ex07
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
crossSumBytes.o: crossSumBytes.s
	gcc -g -Wall -c crossSumBytes.s -o crossSumBytes.o
	
clean:
	rm -f *.o ex07
	
run: ex07
	./ex07
