#include <stdio.h>
#include "fill_s1.h"

int main(void){
    s1 s;
    int vi = 1;
    char vc = 'a';
    int vj = 2;
    char vd = 'b';
    fill_s1(&s, vi, vc, vj, vd);
    printf("%d %c %d %c\n", s.i, s.c, s.j, s.d);
    return 0;
}