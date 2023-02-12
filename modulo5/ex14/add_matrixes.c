#include "new_matrix.h"
int **add_matrixes(int **a, int **b, int y, int k){
    //create the result matrix
    int **result_matrix = new_matrix(y, k);

    //add the matrixes into the result matrix
    for(int i = 0; i < y; i++){
        for(int j = 0; j < k; j++){
            *(*(result_matrix+i)+j) = *(*(a+i)+j) + *(*(b+i)+j);
        }
    }
    return result_matrix;
}