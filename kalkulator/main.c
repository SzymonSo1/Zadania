#include <stdio.h>

extern int add(int a, int b);
extern int sub(int a, int b);

int liczba1;
int liczba2;
char wybor = '+';

int main() {
    start();
    int wynik;

    wypiszPobranieLiczby();
    getNumbs();

    if (wybor == '+')
    {
        wynik = add(liczba1,liczba2);
        printf("%d wynik dodania to:", wynik);
    }else if(wybor=='-')
    {
        wynik = sub(liczba1, liczba2);
        printf("%d wynik odejmowania to: ", wynik);
    }else
    {
        printf("Niepoprawny input");
    }

    return 0;
}

void getNumbs(){
    scanf("%d", &liczba1);
    scanf("%d", &liczba2);
}
