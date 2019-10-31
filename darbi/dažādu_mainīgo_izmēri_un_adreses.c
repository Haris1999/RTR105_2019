#include<stdio.h>

int main()
{
 char a=1;
 int b=14;
 long c=22;

 char* ps = &a;
 int* pb + &b;
 long* pc = &c;

 printf("Addr of a is %p and size is %ld\n", pa, sizeof(a));
 printf("Addr of b is %p and size is %ld\n", pb, sizeof(b));
 printf("Addr of c is %p and size is %ld\n", pc, sizeof(c));
}
