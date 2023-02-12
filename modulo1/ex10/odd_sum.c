/* Através da aritmética de apontadores, soma todos os valores ímpares de um array de valores inteiros, excluindo a primeira posiçao referente ao tamanho do array. */
int odd_sum(int *p){
	int sum = 0;
	int size = *p;
	p++;
	while(size > 0)
	{
		if(*p % 2 != 0)
		{
			sum += *p;
		}
		size--;
		p++;
	}
	return sum;
}
