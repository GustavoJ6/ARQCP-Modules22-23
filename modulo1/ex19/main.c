#include <stdio.h>
#include "find_word.h"


int main(){

	
	char string[] = {"aarrxrt xrt xrt xrt"};
    char word[] = {"xrt"};

    char *result = find_word(word, string);

    printf("Result Address: %p\n", result);
    return 0;

	
	
}
