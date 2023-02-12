ex17a: main.o greater_date.o
	gcc main.o greater_date.o -o ex17a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

greater_date.o: greater_date.c
	gcc -g -Wall -c greater_date.c -o greater_date.o
	
vg: ex17a	
	valgrind ./ex17a
	
clean:
	rm -f *.o ex17a
	
run: ex17a
	./ex17a
