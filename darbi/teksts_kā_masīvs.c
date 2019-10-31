#include<stdio.h>

int main()
{
 char abc[20]="Latvija";

 int i;
 for(i=0;i<sizeof(abc);i++)
  {
  printf("%c %s\n",abc[i],abc+i);
  }
}
