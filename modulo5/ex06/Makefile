ex06: main.o student.o update_grades.o locate_greater.o
	gcc -g -Wall main.o student.o update_grades.o locate_greater.o -o ex06
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
student.o: student.c	
	gcc -g -Wall -c student.c -o student.o
	
update_grades.o: update_grades.s	
	gcc -g -Wall -c update_grades.s -o update_grades.o
	
locate_greater.o: locate_greater.s	
	gcc -g -Wall -c locate_greater.s -o locate_greater.o
	
vg: ex06
	valgrind ./ex06
	
clean:
	rm -f *.o ex06
	
run: ex06
	./ex06
