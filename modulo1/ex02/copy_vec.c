/* Copia n elementos do vetor 1 (vec1) para o vetor 2 (vec2) */
void copy_vec(int *vec1, int *vec2, int n){
	
	for(int i =0; i<n; i++){
		*(vec2+i) = *(vec1+i);
	}
}
