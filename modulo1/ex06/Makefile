ex06: power_ref.o main.o
	gcc power_ref.o main.o -o ex06
	
power_ref.o: power_ref.c
	gcc -g -Wall -c power_ref.c -o power_ref.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o ex06
	
run: ex06
	./ex06
