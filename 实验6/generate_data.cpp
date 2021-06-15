#include<iostream>
#include<cstdlib>
#include<time.h>

using namespace std;
void print_num(int n){putchar(n<=9?'0'+n:n-10+'a');}
void print_hex(int n){
    if(n>=16)print_hex(n>>4);
    print_num(n&15);
}


int main(){
    cout<<"v2.0 raw\n";
    srand(time(NULL));
    int n;
    cin>>n;
    print_hex(n);putchar(' ');
    for(int i=0;i<n;i++)print_hex(rand()%100),putchar(' ');
    return 0;
}