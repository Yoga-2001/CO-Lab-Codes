#include<stdio.h>
int main(){
	FILE *f = fopen("test/text.txt","r");
	FILE *f1 = fopen("filetext1.txt","w");
	char ch;
	int check = 0;
	while((ch = fgetc(f))!=EOF){
		check++;
		fprintf(f1,"%c",ch);
		if(ch=='\n')
			break;
	}
	char *s = "2nd Year CED";
	fprintf(f1,"%s",s);
	fprintf(f1,"%c",'\n');
	while((ch = fgetc(f))!=EOF){
		check++;
		fprintf(f1,"%c",ch);
	}
	fclose(f);
	fclose(f1);
	return 0;
}