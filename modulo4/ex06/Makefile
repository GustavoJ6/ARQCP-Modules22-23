ex06: main.o test_equal.o 
	gcc -g -Wall main.o test_equal.o -o ex06
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
test_equal.o: test_equal.s
	gcc -g -Wall -c test_equal.s -o test_equal.o
	
vg: ex06	
	valgrind ./ex06
clean:
	rm -f *.o ex06
	
run: ex06
	./ex06
