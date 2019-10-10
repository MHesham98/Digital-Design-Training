#define n_i 10
int main()
{
    while (1)
    {
        int n = n_i;
        int a = 0, b = 1, c, i = 2;

        if (n == 0)
            c = a;
        while (i <= n)
        {
            c = a + b;
            a = b;
            b = c;
            i++;
        }
        c = b;
    }
}