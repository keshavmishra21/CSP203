#include <stdio.h>
#include <stdlib.h>

int main() {
    char filename[100];
    int n;
    printf("Enter the filename: ");
    scanf("%s", filename);
    printf("Enter the number of lines to print: ");
    scanf("%d", &n);
    FILE *file = fopen(filename, "r");
    if(file == NULL){
        printf("Could not open file %s\n", filename);
        return 1;
    }
    
    char line[256];
    int count = 0;
    while(fgets(line, sizeof(line), file) != NULL && count < n){
        printf("%s", line);
        count++;
    }
    fclose(file);
    return 0;
}
