#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    char sourceFile[256], destFile[256];
    FILE *source, *destination;
    char buffer[1024];

    printf("Enter the source file: ");
    if(fgets(sourceFile, sizeof(sourceFile), stdin) == NULL){
        fprintf(stderr, "Error reading source file name\n");
        return 1;
    }

    sourceFile[strcspn(sourceFile, "\n")] = '\0';

    printf("Enter the destination file path: ");
    if(fgets(destFile, sizeof(destFile), stdin) == NULL){
        fprintf(stderr, "Error reading destination file name\n");
        return 1;
    }
    destFile[strcspn(destFile, "\n")] = '\0';
    source = fopen(sourceFile,"rb");
    if(source == NULL){
        perror("Error opening source file");
        return 1;
    }
    destination = fopen(destFile, "wb");
    if(destination == NULL){
        perror("Error opening destination file");
        fclose(source);
        return 1;
    }
    while(!feof(source)&&!ferror(source)){
        size_t bytes = fread(buffer, 1, sizeof(buffer), source);
        if(fwrite(buffer, 1, bytes, destination)!=bytes){
            perror("Error writing to destination file: ");
            fclose(source);
            fclose(destination);
            return 1;
        }
    }
    fclose(source);
    fclose(destination);
    printf("File copied successfully\n");
    return 0;
}