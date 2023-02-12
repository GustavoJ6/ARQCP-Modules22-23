int sum_multiples_x(char *vec, int x){
	int sum = 0;
	int secondByteMask = 0xFF00;			//mask that activates the second byte.
	int multiple = x & secondByteMask;		//activating the second byte of x.
	multiple = multiple >> 8;				//move multiple to the second byte of x.
	while(*vec != '\0'){
		if(multiple!=0 && (*vec % multiple == 0)){
		sum += *vec;
		}
		vec++;
	}
	return sum;
}
