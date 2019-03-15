long int multno(int n);
int main()
{
int i;
i=multno(6);
return 0;	
}
long int multno(int n)
{
	if (n>=1)
	return n*multno(n-1);
	else
	return 1;	 
}
