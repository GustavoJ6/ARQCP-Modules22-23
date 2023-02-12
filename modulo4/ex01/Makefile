ex01: main.o cube.o 
	gcc -g -Wall main.o cube.o -o ex01
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
cube.o: cube.s
	gcc -g -Wall -c cube.s -o cube.o
	
clean:
	rm -f *.o ex01
	
run: ex01
	./ex01
