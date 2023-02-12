void frequencies(float *grades, int n, int *freq)
{
	
	for(int i = 0; i<21; i++)
	{
		for(int j = 0; j<n; j++)
		{
			if((int) *(grades+j) == i)
			{
			*(freq+i)+=1;
			}
		}
	}
}
