ex11: main.o call_proc.o proc.o 
	gcc -g -Wall main.o call_proc.o proc.o -o ex11
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o	
	
call_proc.o: call_proc.s
	gcc -g -Wall -c call_proc.s -o call_proc.o
	
proc.o: proc.s
	gcc -g -Wall -c proc.s -o proc.o	
	
clean:
	rm -f *.o ex11
	
run: ex11
	./ex11
