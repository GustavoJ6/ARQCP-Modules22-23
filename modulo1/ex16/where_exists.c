#include <ctype.h>
#include <string.h>

/* Verifica a ocorrência de uma string na outra e regista a primeira ocorrência (caso aconteça). */
char* where_exists(char* str1, char* str2){

	int sizeStr1 = strlen(str1);
    int sizeStr2 = strlen(str2);  


    if (sizeStr1 == 0 || sizeStr2 == 0 || str1 == NULL || str2 == NULL || sizeStr1 > sizeStr2 )
    {
        return NULL;
    }
    
	char *ptrStr1 = str1;
	int lettersToCheck = sizeStr1;
	char *resultAddress;
	
	while (*str2 != '\0' && lettersToCheck > 0){ 
    
        if(tolower(*str2) != tolower(*ptrStr1)){ // Verify if both letters are the same
			//Reset value of letters to check to str2 and the ptrStr1 to the initital address of the str1
            lettersToCheck = sizeStr1; 
            ptrStr1 = str1;
            
        } else {
			if(lettersToCheck == sizeStr1){
				resultAddress = str2;
			}
           lettersToCheck--; // Remove one letter of the total of letters to check aka str1 size 
           ptrStr1++; // Move one position on the str1

        }

        str2++;
    }

    if(lettersToCheck == 0){ // Means that we verified that all the letters were the same

        return resultAddress; 
    }

    return NULL;
}
