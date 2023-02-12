# A Makefile with variables and suffix rules
# variaveis
INCLUDES = student.h
SOURCES = student.c main.c
OBJFILES = student.o main.o
EXEC = ex03

# Suffix rules
.SUFFIXES: .c .o

# How to build an object .o from a code file .c ; $< -- file name
.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
	
vg: 
	valgrind  ./${EXEC}
	
db:
	gdb -tui ./${EXEC}