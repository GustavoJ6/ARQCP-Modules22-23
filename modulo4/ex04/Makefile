ex04: main.o sum_smaller.o 
	gcc -g -Wall main.o sum_smaller.o -o ex04
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
sum_smaller.o: sum_smaller.s
	gcc -g -Wall -c sum_smaller.s -o sum_smaller.o
	
vg: ex04	
	valgrind ./ex04
clean:
	rm -f *.o ex04
	
run: ex04
	./ex04
