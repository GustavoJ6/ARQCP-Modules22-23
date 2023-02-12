ex20a: main.o sum_multiples_x.o 
	gcc -g -Wall main.o sum_multiples_x.o -o ex20a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
sum_multiples_x.o: sum_multiples_x.c
	gcc -g -Wall -c sum_multiples_x.c -o sum_multiples_x.o
	
vg: ex20a
	valgrind ./ex20a
clean:
	rm -f *.o ex20a
	
run: ex20a
	./ex20a
