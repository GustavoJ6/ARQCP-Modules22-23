ex22: main.o functions.o 
	gcc -g -Wall main.o functions.o -o ex22
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
functions.o: functions.s
	gcc -g -Wall -c functions.s -o functions.o
	
clean:
	rm -f *.o ex22
	
run: ex22
	./ex22
