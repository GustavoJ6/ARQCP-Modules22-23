ex10: main.o str_cat.o 
	gcc -g -Wall main.o str_cat.o -o ex10
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
str_cat.o: str_cat.s
	gcc -g -Wall -c str_cat.s -o str_cat.o
	
clean:
	rm -f *.o ex10
	
run: ex10
	./ex10
