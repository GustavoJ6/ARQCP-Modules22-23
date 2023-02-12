ex20: main.o check_num.o 
	gcc -g -Wall main.o check_num.o -o ex20
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
check_num.o: check_num.s
	gcc -g -Wall -c check_num.s -o check_num.o
	
clean:
	rm -f *.o ex20
	
run: ex20
	./ex20
