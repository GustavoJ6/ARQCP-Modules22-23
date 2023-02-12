ex18: sumOperations.o main.o
	gcc -g -Wall sumOperations.o main.o -o ex18
	
sumOperations.o: sumOperations.s
	gcc -g -Wall -c sumOperations.s -o sumOperations.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex18
	
run: ex18
	./ex18
