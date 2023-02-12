ex17b: main.o greater_date.o
	gcc main.o greater_date.o -o ex17b
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

greater_date.o: greater_date.s
	gcc -g -Wall -c greater_date.s -o greater_date.o
	
vg: ex17a	
	valgrind ./ex17b
	
clean:
	rm -f *.o ex17b
	
run: ex17b
	./ex17b
