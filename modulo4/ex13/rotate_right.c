int rotate_right(int num, int nbits){

	int afterShift = num  >> nbits;		// shift nbits to the left
	
	int otherBits = num << (32-nbits);	// shift the other bits to the right
	
	int resultOfTheRotation = afterShift | otherBits;	// OR of the two results to "join" them
	
	return resultOfTheRotation;

}
