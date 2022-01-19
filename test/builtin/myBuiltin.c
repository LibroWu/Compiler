#include<stdio.h>
#include<string.h>
#include<stdlib.h>

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

char* getString(){
    char carr[255];
    scanf("%s",carr);
    int t = strlen(carr);
    char* cptr = (char *) malloc(t+1);
    strcpy(cptr,carr);
    return cptr;
}

int getInt(){
    int t;
    scanf("%d",&t);
    return t;
}

char* toString(int i) {
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
    return cptr;
}

