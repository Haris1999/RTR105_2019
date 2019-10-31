#include<stdio.h>

//function declaration
float squar(float in);

//function definition
int main() 
 {
 float x;
 for(x=0 ; x<1 ; x+=0.1)
  {
  printf("%f %f\n", x, squar(x));
  }
 }

//function definition
float squar(float in)
 {
 return in * in;
 }
