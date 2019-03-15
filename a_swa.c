
int main()
{
	int ar1[5]={10,20,30,40,50};
	int ar2[5]={0,1,2,3,4};
	int i,temp;
	
	for (i=0;i<4;++i)
	{
	temp=ar1[i];
	ar1[i]=ar2[i];
	ar2[i]=temp;	
	}
	return 0;
}
