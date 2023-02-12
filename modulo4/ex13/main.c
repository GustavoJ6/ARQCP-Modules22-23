#include <stdio.h>
#include "rotate_right.h"
#include "rotate_left.h"

int main(){
	
	int num = 15;  // 0000 1111  
	int nBits = 4; 
	
	int resultLeft = rotate_left(num,nBits);  // 1111 0000 = 240
	int resultRight = rotate_right(num,nBits); // 1111 0000	0000 0000 = -268435456
	
	printf("Rotate %d to the left: %d\nRotate %d to the right: %d\n",nBits, resultLeft, nBits, resultRight);
	
	
	return 0;
}
