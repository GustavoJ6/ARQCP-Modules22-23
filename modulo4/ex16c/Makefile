ex16c: main.o mixed_sum.o 
	gcc -g -Wall main.o mixed_sum.o -o ex16c
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
mixed_sum.o: mixed_sum.s
	gcc -g -Wall -c mixed_sum.s -o mixed_sum.o
	
vg: ex16c
	valgrind ./ex16c
clean:
	rm -f *.o ex16c
	
run: ex16c
	./ex16c
