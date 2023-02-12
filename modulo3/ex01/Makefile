ex01: seven_count.o main.o
	gcc -g -Wall seven_count.o main.o -o ex01
	
seven_count.o: seven_count.s
	gcc -g -Wall -c seven_count.s -o seven_count.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex01
	
run: ex01
	./ex01
