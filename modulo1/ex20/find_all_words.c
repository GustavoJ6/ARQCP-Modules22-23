#include <ctype.h>
#include <string.h>

/* Encontra todas as ocorrências de uma palavra numa string e regista o endereço inicial num array de pointers do tipo char*/
void find_all_words(char* str, char* word , char** addr){
	int sizeWord = strlen(word);  
    
	char *ptrWord = word;
	int lettersToCheck = sizeWord;
	char *resultAddress;
	
	int flag = 0;
	
		while (*str != '\0'){ 
    
			if(flag == 1) {
				//Reset value of letters to check to str and the ptrWord to the initital address of the word
				lettersToCheck = sizeWord; 
				ptrWord = word;
				flag = 0;
			}
    
    
			if((tolower(*str) != tolower(*ptrWord))){ // Verify if both letters are the same
				lettersToCheck = sizeWord; 
				ptrWord = word;
            
			} else {
				if(lettersToCheck == sizeWord){
					resultAddress = str;
				}
				lettersToCheck--; // Remove one letter of the total of letters to check aka word size 
				ptrWord++; // Move one position on the word

			}

			str++;
			
			if(lettersToCheck == 0){ // Means that we verified that all the letters were the same

				 *addr = resultAddress; 
				 flag = 1;
			}
			
			
		}

		
		
}
