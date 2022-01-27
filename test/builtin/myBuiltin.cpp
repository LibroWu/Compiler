#include<stdio.h>
#include<string.h>
#include<stdlib.h>
struct String{
    int len;
    char* cptr;
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

String* getString(){
    String* res = (String *) malloc(12);
    char carr[255];
    scanf("%s",carr);
    res->len = strlen(carr);
    res->cptr = (char *) malloc(res->len+1);
    strcpy(res->cptr,carr);
    return res;
}

int getInt(){
    int t;
    scanf("%d",&t);
    return t;
}

String* toString(int i) {
    int t = 0,len=1;
    bool isNeg = (i<0);
    if (isNeg) {
        len++;
        i = -i;
    }
    char * cptr;
    if (i==0) {
        len=2;
        cptr = (char *)malloc(len);
        cptr[0] = '0';
        cptr[1] = 0;
    }
    else {
        t = i;
        while (i>0) {
            i /= 10;
            len++;
        }
        cptr = (char *) malloc(len);
        int cnt = 1;
        if (isNeg) {
            cptr[0] = '-';
        }
        while (t>0)
        {
            cptr[len-cnt-1] = t%10 + '0';
            cnt++;
            t /= 10;
        }
    }
    String* res = (String *) malloc(12);
    res->cptr = cptr;
    res->len = len-1;
    return res;
}

String* _string_stringAppend(String* a,String* b) {
    char* cptr = (char *) malloc(a->len+b->len+1);
    strcpy(cptr,a->cptr);
    strcpy(cptr+a->len,b->cptr);
    String* res = (String *) malloc(12);
    res->cptr = cptr;
    res->len = a->len + b->len;
    return res;
}

String* _string_substring(String* a,int left,int right) {
    char* cptr = (char *) malloc(right-left+1);
    for (int i=left;i<right;i++) {
        cptr[i-left] = a->cptr[i];
    }
    cptr[right-left] = 0;
    String* res = (String *) malloc(12);
    res->cptr = cptr;
    res->len = right - left;
    return res;
}

int _string_parseInt(String* s){
    int res=0,len = s->len;
    for (int i=0;i<len;++i) {
        char c = s->cptr[i];
        if (c<='9' && c>='0') res=res*10+c-'0';
        else break;
    }
    return res;
}

int _string_ord(String* s,int pos){
    return s->cptr[pos];
}

int _string_length(String* s){
    return s->len;
}

int _string_getStrcmp(String* a,String* b){
    return strcmp(a->cptr,b->cptr);
}