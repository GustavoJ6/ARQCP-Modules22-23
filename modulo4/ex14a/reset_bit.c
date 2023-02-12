int reset_bit(int *ptr, int pos){
	int bitChecker = (*ptr >> pos);
	if(bitChecker & 1){
		*ptr ^= (1<<pos);
		return 1;
	}
	return 0;
}
