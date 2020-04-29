 #include<stdio.h>
#include<stdlib.h>
int main()
{   
	FILE *fp;
	
	char c[100];
	char d;
	fp=fopen("filetext.txt","r");
	if(fp==NULL)
	{
		printf(" Cannot open file\n");
		
	}
	else
	{  
	d=fgetc(fp);
	fseek(fp,0,SEEK_SET);
	while(d!=EOF)
	 {
	 fscanf(fp,"%[^\n]",c);
	 d=fgetc(fp);
	 if(d==EOF)
	 	break;	 
	 printf("%s\n",c);
}
	}
	fclose(fp);
	return 0;
}
