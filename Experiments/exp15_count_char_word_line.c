#include <stdio.h>

int main() {
    FILE *fp = fopen("sample.c", "r");
    char ch;
    int chars = 0, words = 0, lines = 0;

    if (!fp) {
        printf("Error opening file.\n");
        return 1;
    }

    while ((ch = fgetc(fp)) != EOF) {
        chars++;
        if (ch == '\n') lines++;
        if (ch == ' ' || ch == '\t' || ch == '\n') words++;
    }
    fclose(fp);

    printf("Characters: %d\nWords: %d\nLines: %d\n", chars, words, lines);
    return 0;
}
