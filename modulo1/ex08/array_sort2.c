void array_sort2(int *pVec, int n) { // Sorts an array using pointer arithmetic
    int *ptrHelper;
    int temp;
    for (int i = 0; i < n; i++) {
        ptrHelper = pVec;
        for (int j = 0; j < n - i - 1; j++) {


            ptrHelper++;
            if (*pVec > *ptrHelper) {

                temp = *pVec;
                *pVec = *ptrHelper;
                *ptrHelper = temp;


            }


        }
        pVec++;

    }


}
