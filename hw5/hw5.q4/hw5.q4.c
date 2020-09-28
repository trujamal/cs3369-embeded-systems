#include <stdint.h>

void foo(uint8_t* dst, uint8_t* src, uint8_t len) {
    while (len--) {
        dst[len] = src[len];
    }
}

// implement bar to unroll the loop in foo
void bar(uint8_t* dst, uint8_t* src, uint8_t len) {
}

int main() {
    uint8_t i, len=100;
    uint8_t dst[len], src[len];
    foo(dst, src, len);
    bar(dst, src, len);
    return 0;
}
