#include<stdio.h>
#include<stdlib.h>
int main(){
	FILE *f = fopen("test/text.txt","r");
	FILE *f2 = fopen("filetext2.txt","w");
	char ch;
	int check = 0;
	while((ch = fgetc(f))!=EOF){
		check++;
		fprintf(f2,"%c",ch);
		if(ch=='\n')
			break;
	}
	char s[10];
	fgets(s, 10, stdin);
	printf("%s",s);
	fprintf(f2,"%s",s);
	while((ch = fgetc(f))!=EOF){
		check++;
		fprintf(f2,"%c",ch);
	}
	fclose(f);
	fclose(f2);
	return 0;
}