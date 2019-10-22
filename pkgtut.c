#include <stdio.h>

#ifndef GIT_VERSION
#define GIT_VERSION "unversioned"
#endif

// Obligitory: this is bad code. Don't use scanf. It was written this way
// to illustrate the debian packaging system and updates.

int main(int argc, char **argv) {
    int greet_cnt;

    printf("%s version %s\n", argv[0], GIT_VERSION);

    printf("How many times should I greet you? ");
    scanf("%d", &greet_cnt);

    while(greet_cnt > 0) {
        printf("Hello!\n");
        greet_cnt--;
    }

    return 0;
}
