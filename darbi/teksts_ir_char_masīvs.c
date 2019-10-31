#include<stdio.h>

int main()
{
 char y[]="hello";

 int i;
 printf("The string is '%s'\n", y);
 for(i=0;i<sizeof(y);i++)
  {
  printf("code of %u-th character '%c' is %d\n", i, y[i], y[i]);
  }
 printf("size is %lu\n", sizeof(y));
}
