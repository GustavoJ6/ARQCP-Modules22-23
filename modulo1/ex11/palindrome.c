#include <string.h>

int remove_white_spaces(char *str, int length);
int removePoints(char *str, int length);
int removeCommas(char *str, int length);
void copy_vec(char *str, char *newVec, int length);
	
int palindrome(char *str) {
			
			
		if (*str != '\0') {

			int length = strlen(str);
			char newVec[length];
			char *ptrNewVec = newVec;
			
			copy_vec(str,ptrNewVec, length);
			
			
			int items_removed = remove_white_spaces(ptrNewVec, length);
			length = length - items_removed;
			items_removed = removeCommas(ptrNewVec, length);
			length = length - items_removed;
			items_removed = removePoints(ptrNewVec,length);
			length = length - items_removed -1;



			if (length == 0 || length == 1) {

				return 1;

			}

			while (length > 1) {

				int lowerCase = *str + 32;
				int upperCase = *str - 32;
				if (*ptrNewVec == ptrNewVec[length] || lowerCase == ptrNewVec[length] || upperCase == ptrNewVec[length]) {
					length--;
					ptrNewVec++;
				} else {
					return 0;
				}

			}

			return 1;
			
		} else {
			
			return 0;
        
		}


}


void copy_vec(char *vec1, char *vec2, int n){
	int positionIndex = 0;
	while (n>positionIndex){
		*vec2 = *vec1;
		vec1++;
		vec2++;
		positionIndex++;
	}
}



// Removes all the white spaces in a String.
// Returns the number of items that were removed.
int remove_white_spaces(char *str, int length) {
    int items_removed = 0;

    for (int i = 0; i < length; i++) {
        if (*str == ' ' ) {
            char *firstPositionSwitcher = str;
            char *secondPosSwitcher = str;
            secondPosSwitcher++;

            while (*firstPositionSwitcher != '\0') {

                *firstPositionSwitcher = *secondPosSwitcher;
                firstPositionSwitcher++;
                secondPosSwitcher++;

            }

            items_removed++;
        }
        str++;
    }

    return items_removed;
}

// Removes all the periods in a String.
// Returns the number of items that were removed.
int removePoints(char *str, int length) {
    int items_removed = 0;

    for (int i = 0; i < length; i++) {
        if ( *str == '.') {
            char *firstPositionSwitcher = str;
            char *secondPosSwitcher = str;
            secondPosSwitcher++;

            while (*firstPositionSwitcher != '\0') {

                *firstPositionSwitcher = *secondPosSwitcher;
                firstPositionSwitcher++;
                secondPosSwitcher++;

            }

            items_removed++;
        }
        str++;
    }

    return items_removed;
}
// Removes all the commas in a String.
// Returns the number of items that were removed.
int removeCommas(char *str, int length) {
    int items_removed = 0;

    for (int i = 0; i < length; i++) {
        if ( *str == ',') {
            char *firstPositionSwitcher = str;
            char *secondPosSwitcher = str;
            secondPosSwitcher++;

            while (*firstPositionSwitcher != '\0') {

                *firstPositionSwitcher = *secondPosSwitcher;
                firstPositionSwitcher++;
                secondPosSwitcher++;

            }

            items_removed++;
        }
        str++;
    }

    return items_removed;
}
