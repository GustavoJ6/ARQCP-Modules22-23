 int distance(char* a, char* b) {
	
	 int distance = 0;
	
	
	 while (*a != '\0' && *b != '\0') {
		 if (*a != *b) {
			 distance++;
		 }
		 a++;
		 b++;
	 }

	 if (*a != '\0' || *b != '\0') {
		 return -1;
	 }
	
	 return distance;
}