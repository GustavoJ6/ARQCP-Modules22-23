ex07: main.o fill_s1.o
	gcc -g -Wall main.o fill_s1.o -o ex07
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

fill_s1.o: fill_s1.s
	gcc -g -Wall -c fill_s1.s -o fill_s1.o
	
vg: ex07
	valgrind ./ex07
	
clean:
	rm -f *.o ex07
	
run: ex07
	./ex07
