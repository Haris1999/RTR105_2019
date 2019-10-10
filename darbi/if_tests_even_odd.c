#include<stdio.h>

void main()
 {
 int number;
 printf("Cienījamais lietotāj, lūdzu, ievadi skaitli: ");
 scanf("%d",&number);
// if ((number%2)=0 )//viena vienadības zīme - tā ir piešķiršanas operācija!
  if ((number%2)==0)

  printf("Tavs skaitlis %d ir pāru skaitlis \n",number);
 else
  printf("Tavs skaitlis %d ir nepāra skaitlis \n",number); 
 }
