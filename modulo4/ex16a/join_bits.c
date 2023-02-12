int join_bits(int a, int b , int pos){
	unsigned int generalMask = 0xFFFFFFFF;				//mask containing 4 bytes of bits with value 1 : 1111 1111 1111 1111
	int aMask = generalMask >> (31-pos);				//deactivate the irrelevant bits for the mask to apply to a.
	int bMask = ~aMask;									//deactivate the irrelevant bits for the mask to apply to b.
	int concatenatedValue = (a & aMask) | (b & bMask);  //apply the operations that concatenate a and b.
	return concatenatedValue;
}
