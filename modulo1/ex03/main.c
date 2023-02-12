#include <stdio.h>
#include "sum_even.h"


int main() {

    int array[] = {1, 2, 3, 6, 12, 13, 24};

    int result = sum_even(array, 6, ptrA);

    printf("Sum of all evens: %d\n",result);

    return 0;
}
