#include<stdio.h>
int main()
{
    int n=20;
    int a[2]={0,1};
    int mat[2][2]={{0,1},{1,1}};
    int tmp[2][2];
    while(n)
    {
        if(n&1)
        {
            for(int i=0;i<2;++i)
            {
                tmp[0][i]=0;
                for(int j=0;j<2;++j)
                    tmp[0][i]+=a[j]*mat[j][i];
            }
            a[0]=tmp[0][0];a[1]=tmp[0][1];
        }
        n>>=1;
        for(int i=0;i<2;++i)
            for(int j=0;j<2;++j)
            {
                tmp[i][j]=0;
                for(int k=0;k<2;++k)
                    tmp[i][j]+=mat[i][k]*mat[k][j];
            }
        for(int i=0;i<2;++i)
            for(int j=0;j<2;++j)
                mat[i][j]=tmp[i][j];
    }
    printf(" %d %d \n",a[0],a[1]);
    return 0;
}