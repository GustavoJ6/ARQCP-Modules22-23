int count_bits_one(int x){
	int counter = 0;
	for(int i =0; i<32; i++){   //goes through all bits.
		if(x & 1){				//uses the mask to check if the bit is 1.
			counter++;			//counts.
		}
		x = x >> 1;				//shift to the right.
	}
	return counter;
}
