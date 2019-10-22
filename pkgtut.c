#include <stdio.h>

// Obligitory: this is bad code. Don't use scanf. It was written this way
// to illustrate the debian packaging system and updates.

int main(void) {
    int greet_cnt;

    printf("How many times should I greet you? ");
    scanf("%d", &greet_cnt);

    while(greet_cnt > 0) {
        printf("Hello!\n");
        greet_cnt--;
    }

    return 0;
}
