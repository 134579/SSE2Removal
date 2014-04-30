#include "stdio.h"
#include "xmmintrin.h"
#include "emmintrin.h"
int main()
{
	__m128i a;
	int i;
	scanf("%d",&i);
	__m128i b = _mm_slli_si128(a, i);
	printf("%d\n",1);
	return 0;
}
