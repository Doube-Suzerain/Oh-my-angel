long long fact(long long x)
{
    if(!x)return 1;
    return x*fact(x-1);
}
int main()
{
    long long a=6;
    long long b=fact(a);
    return 0;
}