#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    char filename[100];
    int n;
    printf("Enter the filename: ");
    scanf("%s", filename);
    printf("Enter the number of lines to print from the bottom: ");
    scanf("%d", &n);

    FILE *file = fopen(filename, "r");
    if(file == NULL){
        printf("Could not open file %s\n", filename);
        return 1;
    }
    
    char *lines[1000];
    int count = 0;
    
    while(count < 1000){
        lines[count] = malloc(256);
        if(fgets(lines[count], 256, file) == NULL){
            free(lines[count]);
            break;
        }
        count++;
    }

    if(n > count) 
    n = count;
    for(int i = count - n; i < count; i++){
        printf("%s", lines[i]);
        free(lines[i]);
    }
    
    for(int i = 0; i < count - n; i++){
        free(lines[i]);
    }
    fclose(file);
    return 0;
}
