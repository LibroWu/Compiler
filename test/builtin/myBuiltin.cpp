#include<stdio.h>
#include<string.h>
#include<stdlib.h>
struct String{
    char* cptr;
    int len;
};
void print(char * c){
    printf("%s",c);
}

void println(char* c) {
    printf("%s\n",c);
}

void printInt(int n){
    printf("%d",n);
}

void printlnInt(int n) {
    printf("%d\n",n);
}

String getString(){
    String res;
    char carr[255];
    scanf("%s",carr);
    res.len = strlen(carr);
    res.cptr = (char *) malloc(res.len+1);
    strcpy(res.cptr,carr);
    return res;
}

int getInt(){
    int t;
    scanf("%d",&t);
    return t;
}

String toString(int i) {
    int t = 0,len=1;
    char * cptr;
    if (i==0) {
        len=2;
        cptr = (char *)malloc(len);
        cptr[0] = '0';
        cptr[1] = 0;
    }
    else {
        while (i>0) {
            t = t*10 + i%10;
            i /= 10;
            len++;
        }
        cptr = (char *) malloc(len);
        int cnt = 0;
        while (t>0)
        {
            cptr[cnt] = t%10 + '0';
            cnt++;
            t /= 10;
        }
    }
    String res;
    res.cptr = cptr;
    res.len = len;
    return res;
}

String ___Libro___stringAppend(String a,String b) {
    char* cptr = (char *) malloc(a.len+b.len+1);
    strcpy(cptr,a.cptr);
    strcpy(cptr+a.len,b.cptr);
    String res;
    res.cptr = cptr;
    res.len = a.len + b.len;
    return res;
}

bool ___Libro___stringLess(String a,String b){
    return strcmp(a.cptr,b.cptr)<0;
}

String ___Libro___stringSubString(String a,int left,int right) {
    char* cptr = (char *) malloc(right-left+1);
    for (int i=left;i<right;i++) {
        cptr[i-left] = a.cptr[i];
    }
    cptr[right] = 0;
    String res;
    res.cptr = cptr;
    res.len = right - left;
    return res;
}
