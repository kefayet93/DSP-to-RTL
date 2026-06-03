#include<stdio.h>

int main()
{
    int num1 = 10, num2 = 20;
    int sum;
    int *p, *q;
    p = &num1;
    q = &num2;
    sum = *p + *q;

    printf("Sum = %d", sum);

    return 0;
}
