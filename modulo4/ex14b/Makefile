ex14b: main.o reset_bit.o 
	gcc -g -Wall main.o reset_bit.o -o ex14b
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
reset_bit.o: reset_bit.s
	gcc -g -Wall -c reset_bit.s -o reset_bit.o
	
vg: ex14b
	valgrind ./ex14b
clean:
	rm -f *.o ex14b
	
run: ex14b
	./ex14b
