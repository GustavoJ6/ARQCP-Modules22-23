#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

int nsets = 0;

int main(){
	
	
	int size = 100;
	int vec[size];
	int *ptrVec = vec;
	int limit = 20;
	
	populate(ptrVec,size,limit);

	int *ptrVec2ndPos = vec;
	ptrVec2ndPos++;
	int *ptrVec3rdPos = vec;
	ptrVec3rdPos++;
	ptrVec3rdPos++;
	
	
	for (int i = 0; i < size; i++)
	{
		if (check(*ptrVec,*ptrVec2ndPos,*ptrVec3rdPos))
		{
			inc_nsets();
		}
		ptrVec++;
		ptrVec2ndPos++;
		ptrVec3rdPos++;
	}
	
	printf("Number of sets: %d\n", nsets);

	return 0;
}
