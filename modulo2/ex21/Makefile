ex21: main.o new_salary.o 
	gcc -g -Wall main.o new_salary.o -o ex21
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
new_salary.o: new_salary.s
	gcc -g -Wall -c new_salary.s -o new_salary.o
	
clean:
	rm -f *.o ex21
	
run: ex21
	./ex21
