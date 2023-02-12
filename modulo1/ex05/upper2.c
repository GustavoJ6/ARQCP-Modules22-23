/* Através da aritmética de apontadores, altera todos os caracteres minúsculos (lowercase) para maiúsculo (uppercase) */
void upper2(char *str)
{
while(*str != '\0')
{
	if(*str >= 97 && *str <= 122){
		*str -= 32;
}
	str++;
}
}
