
#include<stdio.h>
#include<stdlib.h>
/**
 * Created by hardCode on 2/20/2016.
 */
 int x[100001];

int compare(const void *a, const void *b)
{
	return *(int *)a - *(int *)b;
}



int findSet(int a)
{
        if (x[a]!=a)
            x[a]=findSet(x[a]);
            
        return x[a];
}
void setUnion(int a,int b)
{
        x[findSet(a)]=findSet(b);
}

void solve(int n,int m) 
{
	long from,to,i,j;
	long M=1000000007;
 	long long prod=1,count=0;

	for(i=1;i<=n;i++){
		x[i]=i;
	}
	
	for (i = 0; i<m ; i++) {
	    scanf("%ld %ld",&from,&to);
	    setUnion(from,to);
	}

	for (i = 1; i <= n; i++) {
	    findSet(i);
	}

       qsort(x + 1, n, sizeof(int), compare);

	for (i = 1; i <= n; i++) 
		
	{
		for (j = i+1; j <= n; j++) 
		{
	        	if (x[i]!=x[j])break;
	    	}
	    count++;
	    prod=prod*(j-i)%M;
	    i=j-1;
	}

	printf("%lld %lld\n",count,prod);

}

 
int main(){

	int t,n,m;
	scanf("%d",&t);

	while (t--){
	   scanf("%d%d",&n,&m);
	    solve(n,m);
	}
}

