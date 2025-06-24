/*
 * Program: Array Churn & Bitlogic Machine
 * Architecture: RV32IMCB
 * Description:
 *   Builds a 64-element array of values with bit manipulations,
 *   performs nonlinear mixing of values, and verifies a checksum.
 */

unsigned int rotate(unsigned int x, unsigned int r) {
    return (x << r) | (x >> (32 - r));
}

void _start() {
    unsigned int arr[64];
    unsigned int seed = 0xDEADC0DE;

    for (int i = 0; i < 64; i++) {
        seed = rotate(seed ^ (i * 0x91E9), i % 5);
        seed ^= (seed >> 3);
        arr[i] = seed;
    }

    for (int round = 0; round < 3; round++) {
        for (int i = 0; i < 64; i++) {
            unsigned int x = arr[i];
            x ^= (x >> 5) ^ (x << 7);
            x += (arr[(i + 5) % 64] ^ arr[(i + 13) % 64]);
            arr[i] = rotate(x, i % 17);
        }
    }

    unsigned int checksum = 0;
    for (int i = 0; i < 64; i++) {
        checksum ^= arr[i];
        checksum = rotate(checksum, i % 7);
    }

    if ((checksum & 0xFFFF) == 0xA2B2)
        asm volatile("li x7, 2025");
    else
        asm volatile("li x7, 0xDEAD");

    while (1);
}
