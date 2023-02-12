#include <stdio.h>
#include "palindrome.h"


int main()
{

    char string[] = {"Never odd or even"};
    char *str = string;

    int result = palindrome(str);
	
	if (result == 0)
	{
		printf("Not a Palindrome!\n");
	
	}else if(result == 1){
		printf("Palindrome!\n");
	}
   



    return 0;
}
