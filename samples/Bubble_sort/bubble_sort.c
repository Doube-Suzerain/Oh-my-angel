#include<stdio.h>
#include<stdlib.h>
int main()
{
    int n=7;
    int t;
    int a[10];
    for(int i=0;i<n;++i)a[i]=rand()%10;
    for(int i=0;i<n;++i)
        printf(" %d",a[i]);
    printf(" \n \r");
    for(int c=0;c<n;++c)
    {
        for(int i=0;i<n-1;++i)
            if(a[i]>a[i+1])
            {
                t=a[i];
                a[i]=a[i+1];
                a[i+1]=t;
            }
    }
    for(int i=0;i<n;++i)
    {
        printf(" %d",a[i]);
    }
    printf(" \n \r");
    return 0;
}