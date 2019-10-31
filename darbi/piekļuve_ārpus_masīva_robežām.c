#include<stdio.h>

int main()
{
int x[5], i;
for(i=0;i<5;i++)
  {
  x[i]=i*i;
  }
//try to access outside the array
for(i=0;i<10;i++)
  {
  printf("At %p x[%d] %d*%d=%d\n",&x[i],i,i,i,x[i]);
  }
}
