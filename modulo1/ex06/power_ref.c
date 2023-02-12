void power_ref(int *x, int y) { // Calculates the x^y 
    int value = 1;

    if (y > 0) { // Verifies if the exponent is not 0 or less

        for (int i = 0; i < y; ++i) {
            value = value * *x;
        }
        *x = value;

    }else if (y == 0){
        *x = 1;
    }else{
		*x = 0;
	}
		
}
