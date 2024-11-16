#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
	int n, a, b, c, i;
	n = atoi(argv[1]);
	a = 0;
	b = 1;
	if(n == 1){
		printf("%d\n", a);
	}
	else if(n == 2){
		printf("%d\n", b);
	}
	else{
		for(i = 2; i < n; i++){
		c = a + b;
		a = b;
		b = c;
		}
		printf("%d\n", c);
	}
}
	
