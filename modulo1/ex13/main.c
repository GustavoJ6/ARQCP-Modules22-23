#include <stdio.h>
#include <string.h>
#include "where_is.h"



int main()
{

    char vec[] = {'a','a','a','a','c','\0'};
    int length = strlen(vec);
    int emptyVec[length];

    int num = where_is(vec,'c',emptyVec);
    printf("%d\n", num);

    int occurrences = sizeof(emptyVec)/sizeof(emptyVec[0]);

    for (int i = 0; i < occurrences ; ++i) {

        printf("%d - ", emptyVec[i]);

    }



    return 0;
}
