#include<stdio.h>

int main(){
char grade;
scanf("%c",&grade);
if(grade=='A'){
printf("Your performance is excellent");
}
else if(grade=='B'){
printf("Your performance is good");
}
else if(grade=='C'){
printf("Your performance is fair");
}
else if(grade=='D'){
printf("Your performance is poor");
}
else if(grade=='E'){
printf("Your grade is not complete");
}
else if(grade=='F'){
printf("Your are failed");
}
else{
printf("Invalid character");
}
}

