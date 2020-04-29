#include<stdio.h>
#include<sys/stat.h> 
#include<sys/types.h> 
int main(){
	int check;
	char *s = "test";
	check = mkdir(s,0777);
	// printf("%d\n",check);
	char *s1 = "Yoga";
	char *s2 = "CED18I058";
	FILE *f = fopen("test/text.txt","w");
	fprintf(f,"%s",s1);
	fprintf(f,"%c",'\n');
	fprintf(f,"%s",s2);
	fclose(f);
	return 0;
}