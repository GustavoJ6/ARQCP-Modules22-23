ex04: main.o vec_add_two.o 
	gcc -g -Wall main.o vec_add_two.o -o ex04
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
vec_add_two.o: vec_add_two.s
	gcc -g -Wall -c vec_add_two.s -o vec_add_two.o
	
clean:
	rm -f *.o ex04
	
run: ex04
	./ex04
