ex03: main.o greatest.o 
	gcc -g -Wall main.o greatest.o -o ex03
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
greatest.o: greatest.s
	gcc -g -Wall -c greatest.s -o greatest.o
	
clean:
	rm -f *.o ex03
	
run: ex03
	./ex03
