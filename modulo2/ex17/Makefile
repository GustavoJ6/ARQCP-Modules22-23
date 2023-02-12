ex17: main.o calculator.o 
	gcc -g -Wall -s main.o calculator.o -o ex17
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
calculator.o: calculator.s
	gcc -g -Wall -c calculator.s -o calculator.o
	
clean:
	rm -f *.o ex17
	
run: ex17
	./ex17
