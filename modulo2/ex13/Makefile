ex13: main.o getArea.o 
	gcc -g -Wall main.o getArea.o -o ex13
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
getArea.o: getArea.s
	gcc -g -Wall -c getArea.s -o getArea.o
	
clean:
	rm -f *.o ex13
	
run: ex13
	./ex13
