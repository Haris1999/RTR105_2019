#include<stdio.h>

void main()
{
 int i=0,N=20,fact=1;
 
 for(i=1;i<=N;i++)
 { 
 fact = fact * i;
printf("Skaitļa %d faktoriāls ir: %d\n",i,fact);
 }
}
