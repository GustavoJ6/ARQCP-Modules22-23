#include <stdio.h>
#include "greater_date.h"


unsigned int build_date(int year, int month, int day) {

	return  (year << 8) | (day << 24) | month;
}

int main(){
	
	unsigned int date1 = build_date(2017, 11, 11);
	unsigned int date2 = build_date(2017, 11, 15);

	// Call the function and get the result
	unsigned int result = greater_date(date1, date2);
	
	// Print the result
	printf("Result: %ud \n",result);
	
	return 0;
}
