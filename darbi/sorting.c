#include<stdio.h>

void main()
 {
 int a,b,c, t;
 printf("Cienījamais lietotāj, lūdzu, ievadi trīs skaitļus: ");
 
 scanf("%d",&a);
 scanf("%d",&b);
 scanf("%d",&c);

 if(a>b && a>c)//if(fabs(a)>fabs(b) && fabs(a)>fabs(c))
  if (b>c)
   ;//a,b,c
  else
   {t=c;c=b;b=t;}//a,b,c
  
 if(b>a && b>c)
  if(a>c)
   {t=b;b=a;a=t;}//b,a,c
  else
   {t=a;a=b;b=t;t=b;b=c;c=t;}//b,c,a

 if(c>a && c>b)
  if(a>b)
   {t=a;a=c;c=t;t=c;c=b;b=t;}//c,a,b
  else
   {t=a;a=c;c=t;}//c,b,a

printf("Augošā secībā: %d %d %d\n",c,b,a);
}
