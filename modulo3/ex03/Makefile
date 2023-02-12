ex03: main.o str_copy_porto2.o 
	gcc -g -Wall main.o str_copy_porto2.o -o ex03
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
str_copy_porto2.o: str_copy_porto2.s
	gcc -g -Wall -c str_copy_porto2.s -o str_copy_porto2.o
	
clean:
	rm -f *.o ex03
	
run: ex03
	./ex03
