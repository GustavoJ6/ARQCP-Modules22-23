#include <string.h>

void copy_vec(char *vec1, char *vec2, int n);

int where_is (char *str, char c, int * p){ // Finds how many times it finds the char 'c' in a
	// string a return the number of times it did


    int length = strlen(str);
    char newVec[length];
    char *ptrNewVec = newVec;
    int index = 0;
    int *ptrIndex = &index;

    copy_vec(str,ptrNewVec, length);
    int counter = 0;
    int *ptrCounter = &counter;

    for (int i = 0; i < length; i++)
    {
        if (*ptrNewVec== c)
        {
            *p = *ptrIndex;
            p++;
            *ptrCounter = *ptrCounter +1;
        }
        ptrNewVec++;
        *ptrIndex = *ptrIndex + 1;

    }

    return *ptrCounter;
}

void copy_vec(char *vec1, char *vec2, int n){ // Make a copy of a vector
    int positionIndex = 0;
    while (n>positionIndex){
        *vec2 = *vec1;
        vec1++;
        vec2++;
        positionIndex++;
    }
}

