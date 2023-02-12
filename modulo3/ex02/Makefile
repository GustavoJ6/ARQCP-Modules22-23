ex02: main.o str_copy_porto.o 
	gcc -g -Wall main.o str_copy_porto.o -o ex02
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
str_copy_porto.o: str_copy_porto.s
	gcc -g -Wall -c str_copy_porto.s -o str_copy_porto.o
	
clean:
	rm -f *.o ex02
	
run: ex02
	./ex02
