int sum_even(int *p, int num ) { //Sums all the even numbers
    int total = 0;

    if( *p != 0 ){
        for (int i = 0; i < num; ++i) {

            if (p[i] % 2 == 0) { // Verifies if number is even
                total = total + p[i];
            }

        }
   }

    return total;

}
