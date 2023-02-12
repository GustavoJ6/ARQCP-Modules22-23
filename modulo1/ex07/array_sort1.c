void array_sort1(int *vec, int n ){ // Sorts an array

	for(int i = 0; i < n; i++){
	
	
		for	(int j = 0; j< n -i -1; j++){
		
			if(vec[j] > vec[j+1]){
				//Swaps the position of the values
				int temp = vec[j]; 
				vec[j] = vec[j+1];
				vec[j+1] = temp;
				
			}
		}
	}
}
