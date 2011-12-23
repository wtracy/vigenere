#include <stdio.h>
#include <string.h>

char ciphertext[] = "xfbhlqtlj";
char key[] = {6,1,8,0,3,3,9,8,8,7,4};

int main(int argc, char** argv) {
  int len = strlen(ciphertext);
  int i;

  for (i = 0; i < len; ++i) {
    char result = ciphertext[i] - key[i];

    if (result < 'a')
      result += 26;

    printf("%c", result);
  }
  printf("\n");

  return 0;
}
