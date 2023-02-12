ex15: main.o compute.o 
	gcc -g -Wall -s main.o compute.o -o ex15
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
compute.o: compute.s
	gcc -g -Wall -c compute.s -o compute.o
	
clean:
	rm -f *.o ex15
	
run: ex15
	./ex15
