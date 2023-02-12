/* Organiza por ordem crescente, sem repetições um array src, passando o produto final para um outro array, retornando o seu tamanho. */
int sort_without_reps(int *src, int n, int *dest)
{
	int aux; 
	int size = 0;
	
	int src_copied[n];
	
	for(int l= 0; l<n ; l++)
	{
		*(src_copied+l) = *(src+l);
	}
	

	for(int i=0; i<n; i++)
	{
		for(int j=0;j+i<n;j++)
		{
			if(*(src_copied+i) > *(src_copied+(j+i)))
			{
				aux = *(src_copied+i);
				*(src_copied+i) = *(src_copied+(j+i));
				*(src_copied+(j+i)) = aux;
			}
		}
	}
	
	for(int k=0; k<n-1; k++)
	{
		if(*(src_copied+k) != *(src_copied+(k+1)))
		{
			*(dest+size) = *(src_copied+k);		
			size++;
		}
	}
	
	return size;
}
