ex10: sum3ints.o main.o
	gcc -g -Wall sum3ints.o main.o -o ex10
	
sum3ints.o: sum3ints.s
	gcc -g -Wall -c sum3ints.s -o sum3ints.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex10
	
run: ex10
	./ex10
