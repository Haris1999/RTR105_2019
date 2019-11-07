#include<stdio.h>
#include<string.h>
#define N 5

int main()
{
    //char s1[N];
    //char s2[N];
    char s1[N]={0};
    char s2[N]={0};

{
    char str[20];
    printf("Enter a string:    ");
    scanf("%[^\n]", str);
    printf("%s\n", str);
}

    int i;
    printf("s1 masīva elementu saturs pēc deklarēšanas, pirms kopēšanas:\n");
    for(i=0;i<N;i++)
     if(s1[i] < 32) printf("%d. simbols char:   dec: %d\n",i,s1[i]);
     else           printf("%d. simbols char: %c dec: %d\n",i,s1[i],s1[i]);
    printf("s2 masīva elementu saturs pēc deklarēšanas, pirms kopēšanas:\n");
    for(i=0;i<N;i++)
     if(s2[i] < 32) printf("%d. simbols char:   dec: %d\n",i,s2[i]);
     else           printf("%d. simbols char: %c dec: %d\n",i,s2[i],s2[i]);

    strcpy(s1, "ABC");     //copies "studytonight" to string s1

    printf("s1 masīva elementu saturs pēc pirmās kopēšanas:\n");
    for(i=0;i<N;i++)
     if(s1[i] < 32) printf("%d. simbols char:   dec: %d\n",i,s1[i]);
     else           printf("%d. simbols char: %c dec: %d\n",i,s1[i],s1[i]);
    printf("s2 masīva elementu saturs pēc pirmās kopēšanas:\n");
    for(i=0;i<N;i++)
     if(s2[i] < 32) printf("%d. simbols char:   dec: %d\n",i,s2[i]);
     else           printf("%d. simbols char: %c dec: %d\n",i,s2[i],s2[i]);

    strcpy(s2, s1);     //copies string s1 to string s2

    printf("s1 masīva elementu saturs pēc otrās kopēšanas:\n");
    for(i=0;i<N;i++)
     if(s1[i] < 32) printf("%d. simbols char:   dec: %d\n",i,s1[i]);
     else           printf("%d. simbols char: %c dec: %d\n",i,s1[i],s1[i]);
    printf("s2 masīva elementu saturs pēc otrās kopēšanas:\n");
    for(i=0;i<N;i++)
     if(s2[i] < 32) printf("%d. simbols char:   dec: %d\n",i,s2[i]);
     else           printf("%d. simbols char: %c dec: %d\n",i,s2[i],s2[i]);

    printf("%s\n", s2);
    
    return(0);
}
