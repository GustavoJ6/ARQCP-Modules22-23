void changes(int *ptr){
	int secondByteMask = 0xFF00;				//mask that activates second byte bits.
	int byteChecker = *ptr & secondByteMask;	//byteChecker activates the second byte on *ptr.
	if((byteChecker >> 8) > 15){				//shift to the right on byteChecker to go to the second byte, and check if it's greater than 15.
		 *ptr = *ptr ^ 0xFF0000;				// *ptr XOR 0xFF0000 which is a mask that activates all the third byte bits.
	}
}
