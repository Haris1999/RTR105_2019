#include<stdio.h>
#include<string.h>

void main()
{
    char str[20];
    printf("Enter a string:    ");
    scanf("%[^\n]", str);
    printf("%s\n", str);
}
