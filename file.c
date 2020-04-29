#include<stdio.h>
int main(){
	FILE *f = fopen("filetext.txt","r");
	char  ch[100],c;
	while(fscanf(f, "%[^\n]", ch)!=EOF){
		// printf("%c",ch);
		printf("%s",ch);
		
	}
	fclose(f);
	return 0;
}
//fopen
// FILE *f = fopen(filetext.txt,"r");
// FILE *f = fopen(filetext.txt,"w");
// FILE *f = fopen(filetext.txt,"a");

//fclose

//fgetc
// char ch = fgetc(f);

//fputc
// fputc("A",f)

//fread
// int arr[10];
// fread(arr,sizeof(int),10,f);

//fwrite
// int arr[10];
// fwrite(arr,sizeof(int),10,f);