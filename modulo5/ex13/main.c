#include <stdio.h>
#include <stdlib.h>
#include "count_odd_matrix.h"
#include "new_matrix.h"

int main(void) {

	// Create a matrix
	int y = 3;
	int k = 2;
	int** matrix = new_matrix(y, k);

	printf("\nMatrix:\n");
	for (int i = 0; i < y; i++) {
		for (int j = 0; j < k; j++) {
			*(*(matrix + i) + j) = random() % 50; //Fill all positions with a random number between 0 and 49
			printf("%d ", *(*(matrix + i) + j));
		}
		printf("\n");
	}

	// Count the odd numbers in the matrix
	int numberOfOddNumbers = count_odd_matrix(matrix, y, k);
	
	// Print the result
	printf("The number of odd numbers in the matrix is %d.\n", numberOfOddNumbers);
	

	// Free the memory
	for (int j = 0; j < y; j++) {
		free(*(matrix + j));
	}
	free(matrix);

	return 0;
}