
int main()
{
	int arr[50];
	int i,n ,large,small;
	 for (i=0;i<n;++i)
	 large=small=arr[i];
	 for(i=1;i<n;++i)
	 {
	 	if(arr[i]>large)
	 	large=arr[i];
	 	if(arr[i]<small)
	 	small=arr[i];
	 }
	 return 0;
	 
}
