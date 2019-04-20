#include <stdio.h>
#include <stdlib.h>

#include "include/add.h"

int main() 
{
    int ret = 0;

    ret = add1(1, 2);
    printf("add1 ret = %d\r\n", ret);
    ret = add2(1, 2);
    printf("add2 ret = %d\r\n", ret);
}
