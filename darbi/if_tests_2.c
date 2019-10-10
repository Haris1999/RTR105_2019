#include<stdio.h>

void main()
 {
 int number1, number2;
 printf("Cienījamais lietotāj, lūdzu, ievadi 1. skaitli: ");
 scanf("%d",&number1);
 printf("Cienījamais lietotāj, lūdzu, ievadi 2. skaitli: ");
 scanf("%d",&number2);

 if (number1 > number2)
  {
  printf("Tavs 1. skaitlis %d ir > nekā 2. skaitlis %d\n",number1, number2);
  printf("Pretēji ir divi gadījumi - 1. < 2. vai 1. == 2.\n");
  }
 else
  //printf("Tavs 1. skaitlis %d ir > nekā 2. skaitlis %d\n",number1, number2);
  printf("Tavs 1. skaitlis  ir vai nu < nekā 2. skaitlis\n"); 
  printf("Vai nu tavs 1. skaitlis ir == ar 2. skaitli\n");
 }
