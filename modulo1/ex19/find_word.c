#include <ctype.h>
#include <string.h>

char* find_word(char* word, char* initial_addr){

	int sizeWord = strlen(word);
    int sizeString = strlen(initial_addr);  


    if (sizeWord == 0 || sizeString == 0 || word == NULL || initial_addr == NULL || sizeWord > sizeString )
    {
        return NULL;
    }
    
	char *ptrWord = word;
	int lettersToCheck = sizeWord;
	char *resultAddress;
	
	while (*initial_addr != '\0' && lettersToCheck > 0){ 
    
        if(tolower(*initial_addr) != tolower(*ptrWord)){ // Verify if both letters are the same
			//Reset value of leters to check to initial and the ptrWord to the initital address of the word
            lettersToCheck = sizeWord; 
            ptrWord = word;
            
        } else {
			if(lettersToCheck == sizeWord){
				resultAddress = initial_addr;
			}
           lettersToCheck--; // Remove one letter of the total of letters to check aka word size 
           ptrWord++; // Move one position on the word

        }

        initial_addr++;
    }

    if(lettersToCheck == 0){ // Means that we verified that all the letters were the same

        return resultAddress; 
    }

    return NULL;

}


