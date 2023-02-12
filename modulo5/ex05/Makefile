ex05: main.o student.o update_grades.o 
	gcc -g -Wall main.o student.o update_grades.o -o ex05
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
student.o: student.c	
	gcc -g -Wall -c student.c -o student.o
	
update_grades.o: update_grades.s	
	gcc -g -Wall -c update_grades.s -o update_grades.o
	
vg: ex05
	valgrind ./ex05
	
clean:
	rm -f *.o ex05
	
run: ex05
	./ex05
