ex12: main.o isMultiple.o 
	gcc -g -Wall main.o isMultiple.o -o ex12
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
isMultiple.o: isMultiple.s
	gcc -g -Wall -c isMultiple.s -o isMultiple.o
	
clean:
	rm -f *.o ex12
	
run: ex12
	./ex12
