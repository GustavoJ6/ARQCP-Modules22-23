ex14: main.o getArea.o 
	gcc -g -Wall -s main.o getArea.o -o ex14
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
getArea.o: getArea.s
	gcc -g -Wall -c getArea.s -o getArea.o
	
clean:
	rm -f *.o ex14
	
run: ex14
	./ex14
