ex12: main.o vec_zero.o 
	gcc -g -Wall main.o vec_zero.o -o ex12
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
vec_zero.o: vec_zero.s
	gcc -g -Wall -c vec_zero.s -o vec_zero.o
	
clean:
	rm -f *.o ex12
	
run: ex12
	./ex12
