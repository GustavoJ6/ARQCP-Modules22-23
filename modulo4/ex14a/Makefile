ex14a: main.o reset_bit.o 
	gcc -g -Wall main.o reset_bit.o -o ex14a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
reset_bit.o: reset_bit.c
	gcc -g -Wall -c reset_bit.c -o reset_bit.o
	
vg: ex14a
	valgrind ./ex14a
clean:
	rm -f *.o ex14a
	
run: ex14a
	./ex14a
