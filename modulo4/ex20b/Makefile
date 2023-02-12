ex20b: main.o sum_multiples_x.o 
	gcc -g -Wall main.o sum_multiples_x.o -o ex20b
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
sum_multiples_x.o: sum_multiples_x.s
	gcc -g -Wall -c sum_multiples_x.s -o sum_multiples_x.o
	
vg: ex20b
	valgrind ./ex20b
clean:
	rm -f *.o ex20b
	
run: ex20b
	./ex20b
