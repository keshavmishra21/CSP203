#include <stdio.h>

int main(){
    FILE *file;
    char filename[100];
    char ch;
    printf("Enter the name of the file: ");
    scanf("%s", filename);

    file = fopen(filename, "r");
    if(file == NULL){
        printf("Error opening file\n");
        return 1;
    }
    while((ch = fgetc(file)) != EOF){
        putchar(ch);
    }
    fclose(file);
    return 0;
}