ex14c: main.o reset_2bits.o 
	gcc -g -Wall main.o reset_2bits.o -o ex14c
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
reset_2bits.o: reset_2bits.s
	gcc -g -Wall -c reset_2bits.s -o reset_2bits.o
	
vg: ex14c
	valgrind ./ex14c
clean:
	rm -f *.o ex14c
	
run: ex14c
	./ex14c
