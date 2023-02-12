ex21a: main.o distance.o
	gcc main.o distance.o -o ex21a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

distance.o: distance.s
	gcc -g -Wall -c distance.s -o distance.o
	
vg: ex21a	
	valgrind ./ex21a
	
clean:
	rm -f *.o ex21a
	
run: ex21a
	./ex21a
