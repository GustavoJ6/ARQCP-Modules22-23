#include <stdio.h>
#include "find_all_words.h"

#define MAX_SIZE 10


int main(){

	
	char string[] = {"aarrxrt xrt xrt xrt"};
    char word[] = {"xrt"};
    char* chars[MAX_SIZE];

    find_all_words(string, word , chars);


	printf("Result Address: ");
	
	for(int i = 0; i<MAX_SIZE; i++)
	{
			printf("%p\n", *(chars+i));
	}
   
    return 0;

	
	
}
