ex05: main.o needed_time.o 
	gcc -g -Wall main.o needed_time.o -o ex19
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
needed_time.o: needed_time.s
	gcc -g -Wall -c needed_time.s -o needed_time.o
	
clean:
	rm -f *.o ex19
	
run: ex19
	./ex19
