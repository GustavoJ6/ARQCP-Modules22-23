void add_byte(char x, int* vec1, int* vec2) {
	
	int size = *vec1;
	*vec2 = size;
	vec1++;
	vec2++;
		
	for (int i = 0; i < size; i++) {
		
		// Get the first byte of the element of vec1
		char initByte = *vec1 & 0xFF;
		
		// Add the two bytes
		char result = initByte + x;
		
		// Store the result in the vec2
		*vec2 = (*vec1 & 0xFFFFFF00) | result;

		vec1++;
		vec2++;
		
	}
}