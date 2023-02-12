/* Altera todos os caracteres minúsculos (lowercase) de uma string para maiúsculos (uppercase)  */
void upper1(char *str){
	int charArrIndex = 0;
	while(str[charArrIndex] != '\0' ){
		if(str[charArrIndex] >=97 && str[charArrIndex] <= 122){
			str[charArrIndex] -= 32;
		}
	charArrIndex++;
	}
}
