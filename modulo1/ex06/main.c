#include <stdio.h>
#include "power_ref.h"


int main(){


int base = 2;
int *x = &base;

power_ref(x, 3);

printf("The result is: %d\n", *x);



return 0;
}
