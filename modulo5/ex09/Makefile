# A Makefile with variables and suffix rules
# variaveis
INCLUDES = structs.h funs.h
SOURCES = funs.s main.c
OBJFILES = funs.o main.o
EXEC = ex09

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