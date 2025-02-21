#include <stdio.h>

extern int add(int a, int b);
extern int sub(int a, int b);
int liczba1;
int liczba2;
int main() {
    start();
    char wybor;

    scanf("%c", &wybor);
    wypiszPobranieLiczby();
    getNumbs();
    if (wybor == '+'){
        
    }else if(wybor=='-'){

    }
    return 0;
}
void getNumbs(){
    scanf("%d", &liczba1);
    scanf("%d", &liczba2);
}
