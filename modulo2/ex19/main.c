#include <stdio.h>
#include "needed_time.h"

char current=6,desired=9;

int main(void) {

	int result = needed_time();
	printf("%d seconds to got from current to desired.\n", result);
	
	return 0;
}
