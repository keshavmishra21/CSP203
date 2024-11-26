#include<stdio.h>
#include<string.h>

int main(){
char pattern[256];
char filename[256];
printf("Enter the search pattern: ");
scanf("%s", pattern);
printf("Enter the filename: ");
scanf("%s",filename);
FILE *file = fopen(filename, "r");
    if (file == NULL) {
        perror("Error opening file");
        return 1;
    }
char line[1024];
int line_number=0;
while(fgets(line, sizeof(line), file)!=NULL){
line_number++;
if(strstr(line, pattern)!=NULL){
printf("%d: %s", line_number, line);
}
}
fclose(file);
return 0;
}
