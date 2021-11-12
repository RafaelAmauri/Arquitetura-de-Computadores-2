#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    clock_t inicio, fim, T;
    float Tempo, media = 0;
    register int c;

    float a, b;
    //int *i = &a;
    //int *j = &b;
    
    a=3;
    b=1;

    int k, num1 = 1, num2 = 3;

    T = CLOCKS_PER_SEC;
    for (k = 1; k <= 10; k = k + 1)
    {
        inicio = clock();
        for (c = 1; c <= 10000000; c = c + 1)
        {
            a = a + b;
        }

        fim = clock();
        Tempo = ((fim - inicio) * 1000 / CLOCKS_PER_SEC);
        printf("\nTempo : %g ms", Tempo);
        media = media + Tempo;
    }
    printf("\n\n%g ms\n", media / 10);
}
