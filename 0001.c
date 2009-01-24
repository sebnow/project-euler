#include <stdio.h>

int solve(int min, int max) {
	int sum = 0;
	int num;
	for(num = min; num < max; num++) {
		if(num % 3 == 0 || num % 5 == 0) {
			sum += num;
		}
	}
	return sum;
}

int main()
{
	printf("Answer: %d", solve(0, 1000));
	return 0;
}
