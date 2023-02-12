/* Passa a primeira letra de todas as palavras para de minúscula (lowercase) para maiúscula (uppercase). */
void capitalize(char*str)
{
	if(*str <= 122 && *str >= 97)
	{
		*str -= 32;
	}

	while(*str != '\0')
	{
		if(*str == ' ')
		{
			str++;
			if(*str <= 122 && *str >= 97)
			{
				*str -= 32;
			}
		}
	str++;
	}
}
