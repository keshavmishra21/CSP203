#include<stdio.h>

int main(){
char filename[256];
printf("Enter the filename: ");
scanf("%s", filename);
FILE *file = fopen(filename, "r");
if (file == NULL) {
    perror("Error opening file");
    return 1;
}
int lines=0;
int words=0;
int chars=0;
int ch;
int in_word=0;
while((ch=fgetc(file))!=EOF){
chars++;
if(ch=='\n'){
lines++;
}
if(ch==' ' || ch == '\t' || ch == '\n'){
if(in_word){
words++;
in_word=0;
}
}
else{
in_word=1;
}
}
if(in_word){
words++;
}
if (chars > 0 && (ch == EOF && fgetc(file) == EOF)) {
    lines++;
}
fclose(file);
printf("%d %d %d %s\n", lines, words, chars, filename);
return 0;
}

