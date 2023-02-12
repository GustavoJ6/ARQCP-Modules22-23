#include <stdio.h>

union union_u1 {
	char vec[32];
	float a;
	int b;
} u;

struct struct_s1 {
	char vec[32];
	float a;
	int b;
} s;


int main() {

	printf("Size of union: %ld\n", sizeof(u));
	printf("Size of struct: %ld\n", sizeof(s));	

	printf("Explanation: The size of the union is the size of the largest member, which is vec[32]. Since it is an array of chars its size is 32.\n");
	printf("The size of the struct is the sum of the sizes of all members, which is vec[32] + a + b. 32 again for the same reason + 4 *2 cause both float and int are 4 bytes each.\n");

	return 0;
}