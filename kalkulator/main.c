#include <stdio.h>

extern int add(int a, int b);
extern int sub(int a, int b);

int main() {
    int liczba1;
    int liczba2;
    int wybor = 1;
    start();
    int wynik;

    wypiszPobranieLiczb();
    liczba1 = scanf("%d", &liczba1);
    liczba2 = scanf("%d", &liczba2);

    printf("checkpoint1");
    if (wybor == 1)
    {
        wynik = add(liczba1,liczba2);
        printf("%d wynik dodania to:", wynik);
    }
    else if(wybor==2)
    {
        wynik = sub(liczba1, liczba2);
        printf("%d wynik odejmowania to: ", wynik);
    }
    else
    {
        printf("Niepoprawny input");
    }
    printf("checkpoint2");
    return 0;
}
