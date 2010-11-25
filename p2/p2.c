#include <stdio.h>

int main()
{
  int sum = 0;
  int fibs[2] = {1,1};
  int temp = 0;
  while(fibs[0] < 4000000) {
    temp = fibs[0] + fibs[1];
    if(temp % 2 == 0) sum += temp;
    fibs[0] = fibs[1];
    fibs[1] = temp;
  }
  printf("%d\n",sum);
  return 0;
}
