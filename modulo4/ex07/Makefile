ex07: main.o count_odd.o 
	gcc -g -Wall main.o count_odd.o -o ex07
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
count_odd.o: count_odd.s
	gcc -g -Wall -c count_odd.s -o count_odd.o
	
clean:
	rm -f *.o ex07
	
run: ex07
	./ex07
