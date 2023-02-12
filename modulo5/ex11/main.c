#include <stdio.h>
#include <stdlib.h>
#include "new_matrix.h"

int main(void){

    int lines = 3;
    int columns = 4;
    int **matrix = new_matrix(lines, columns);
    
    if(matrix!=NULL){
        printf("Matrix Created!");
        for(int i = 0; i < lines; i++ ){
        free(*(matrix+i));
        }
        free(matrix);
        return 0;
    }

    for(int i = 0; i < lines; i++ ){
        free(*(matrix+i));
    }
    free(matrix);


    return 1;
}