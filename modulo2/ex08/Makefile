ex08: main.o crossSumBytes.o 
	gcc -g -Wall main.o crossSumBytes.o -o ex08
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
crossSumBytes.o: crossSumBytes.s
	gcc -g -Wall -c crossSumBytes.s -o crossSumBytes.o
	
clean:
	rm -f *.o ex08
	
run: ex08
	./ex08
