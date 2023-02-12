#include <stdio.h>

int main()
{
    int x = 5;
int* xPtr = &x;
float y = *xPtr +3;
int vec[] = {10,11,12,13};

printf("Value of x:%d \nValue of y:%f \n",x,y);
printf("Addres of x:%p \nAddress of xPtr:%p\n",&x, &xPtr);
printf("Value pointed by xPtr: %d\n", *xPtr);
printf("Adress of vec: %p\n", &vec);
printf("Vec[0]:%d | Vec[1]:%d | Vec[2]:%d | Vec[3]:%d \n", vec[0],vec[1],vec[2],vec[3]);
printf("Vec[0]:%p | Vec[1]:%p | Vec[2]:%p | Vec[3]:%p \n", &vec[0],&vec[1],&vec[2],&vec[3]);

    return 0;
}

/*
a) The values are correctly being printed as we have both the actual values of some variables and
the addresses corresponding to those same variables.
b) They are all the same except in the end as the addresses are incresing 4 bytes, as the values of
each index are integers.
c) Different.
*/
