#include <stdio.h>
#include <string.h>
int main() {
  char buf[20];
  strncpy(buf, "hello world!\n", 20);
  printf("hello world!\n");
}
