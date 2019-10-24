#include<stdio.>

void main()
{
 char i=0,fact=1,fact_old=1;

 for(i=1; fact/i == fact_old ;i++)
 {
 fact_old = fact;
 fact = fact * i;
 }

printf("Skaitļa %d faktoriāls ir: %d\n",i,fact);
printf("Diemžēl ir sasniegta datu tipa robeža./n")

}
