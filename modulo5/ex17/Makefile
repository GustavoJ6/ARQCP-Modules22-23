ex17: main.o return_unionB_b.o
	gcc -g -Wall main.o return_unionB_b.o -o ex17
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

return_unionB_b.o: return_unionB_b.s
	gcc -g -Wall -c return_unionB_b.s -o return_unionB_b.o
	
vg: ex17
	valgrind ./ex17
	
clean:
	rm -f *.o ex17
	
run: ex17
	./ex17
