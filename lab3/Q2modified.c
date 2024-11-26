#include <stdio.h>

int main(){
	int n, i, j, k;
	printf("Enter the size of the matrices: ");
	scanf("%d", &n);
	float M[n][n], N[n][n], P[n][n];
	for(i = 0; i < n; i++){
		for(j = 0; j < n; j++){
			M[i][j] = i + 2*j;
			N[i][j] = 2*i + j;
		}
	}
	for(i = 0; i < n; i++){
        	for (j = 0; j < n; j++){
            		P[i][j] = 0;
            		for (k = 0; k < n; k++) {
                		P[i][j] += M[i][k] * N[k][j];
			}
		}
	}
	printf("Matrix M:\n");
	for(i = 0; i < n; i++){
                for(j = 0; j < n; j++){
                        printf("%f ", M[i][j]);
                }
                printf("\n");
        }
	printf("\nMatrix N:\n");
	for(i = 0; i < n; i++){
                for(j = 0; j < n; j++){
                        printf("%f ", N[i][j]);
                }
                printf("\n");
        }
	printf("\nMatrix P:\n");
	for(i = 0; i < n; i++){
		for(j = 0; j < n; j++){
			printf("%f ", P[i][j]);
		}
		printf("\n");
	}
}


