#include <stdio.h>
#include "funs.h"


int main(void) {

	// Struct B start
	structB bStruct;
	structB* ptrB = &bStruct;

	// First A struct
	structA aStruct;
	aStruct.y = 10;
	aStruct.x = 15;

	// Second A struct
	structA a2ndStruct;
	a2ndStruct.y = 20;
	a2ndStruct.x = 36;
	structA* ptr_a = &a2ndStruct;

	// Filling bStruct with information
	bStruct.a = aStruct;
	bStruct.b = ptr_a;
	bStruct.x = 100;
	bStruct.z = 50;
	bStruct.c = 25;
	bStruct.y = 5;

	// Results
	printf("Fun1 Result: %hd\n", fun1(ptrB));
	printf("Fun2 Result: %hd\n", fun2(ptrB));
	printf("Fun3 Result: %hd\n", *fun3(ptrB));
	printf("Fun4 Result: %hd\n", fun4(ptrB));

	return 0;
}