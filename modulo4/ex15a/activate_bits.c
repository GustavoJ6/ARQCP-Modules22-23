int activate_bits(int a, int left, int right) {


	// Activate the bits on the right of the right bit
	a |= (1 << right) - 1;
	
	// Activate the bits on the left of the left bit and return the result
	return a |= ~((1L << (left + 1)) - 1);
}


