#include<stdio.h>

int main()

{
   int i=1;      // assigning value "1" to variable "i"
   int *p=&i;    // assigning the address taken by variable "i" to the pointer variable "p"
   int *q;       // declaring integer pointer variable "q"
   q = p;        // assigning the value taken by "p" to "q"
   *q = 5;       // assigning value 5 to the location pointed by q
   printf("%d", *p);
}




