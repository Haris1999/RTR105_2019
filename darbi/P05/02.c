# include <stdio.h>
# include <limits.h>
int main ()
{
	int a = 50000; // 50 ,000
	int b = 1000000; // 1 ,000 ,000
	int c = a * b; // kaads ir sagaidaams rezultaats?

	printf ("int datu tipa izmers ir: %d baiti \n", sizeof (int) );
	printf (" Aprēķinām a un b reizinājumu :\n");
	printf (" a = %d, b = %d \n", a, b);
	printf ("c = a * b = %d * %d \n", a,b,c); // rezultāts uz ekrāna
}
