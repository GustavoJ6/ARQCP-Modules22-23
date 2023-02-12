/* Comprime shorts dois a dois de um array de shorts para inteiros */
void compress_shorts(short *shorts, int n_shorts, int *integers)
{
	int *shortsPointer = (int*) shorts;
	for(int i=0; i<n_shorts/2; i++)
	{
		*(integers+i) = *(shortsPointer+i);
	}
}
