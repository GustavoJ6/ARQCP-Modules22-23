#include <stdio.h>
#include "capitalize.h"

#define MAX_SIZE 100

int main()
{
	char str[MAX_SIZE] = "The number must be saved";
	capitalize(str);
	printf("The Capitalized String is: %s\n" , str);
	return 0;
}
