ex02: main.o sum_n2.o 
	gcc -g -Wall main.o sum_n2.o -o ex02
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
sum_n2.o: sum_n2.s
	gcc -g -Wall -c sum_n2.s -o sum_n2.o
	
clean:
	rm -f *.o ex02
	
run: ex02
	./ex02
