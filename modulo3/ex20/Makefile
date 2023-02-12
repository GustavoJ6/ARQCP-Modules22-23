ex20: main.o count_max.o 
	gcc -g -Wall main.o count_max.o -o ex20
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
count_max.o: count_max.s
	gcc -g -Wall -c count_max.s -o count_max.o
	
clean:
	rm -f *.o ex20
	
run: ex20
	./ex20
