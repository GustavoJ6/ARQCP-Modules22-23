#include <stdio.h>
#include "where_exists.h"


int main()
{
	char str1[] = "unidade";
	char str2[] = "arqcp é uma unidade curricular";
	char* str1Pointer = str1;
	char* str2Pointer = str2;
	
	printf("%c" , *where_exists(str1Pointer,str2Pointer));
	
}
