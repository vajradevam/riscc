/*
 * Program: Matrix Hash Runner
 * Architecture: RV32IMCB
 * Description:
 *   Runs through a pseudo-random matrix transformation,
 *   performs bit-noise diffusion, and verifies against a magic number.
 */

#define N 16
unsigned int mat[N][N];

void _start() {
    unsigned int seed = 0x12345678;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            seed ^= (seed >> 13);
            seed *= 0x5BD1E995;
            seed ^= (seed << 11);
            mat[i][j] = seed ^ (i * j);
        }
    }

    unsigned int hash = 0x7F4A7C15;

    for (int k = 0; k < 3; k++) {
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                unsigned int x = mat[i][j];
                x = ((x << 5) ^ (x >> 3)) + (x ^ hash);
                x ^= ((i + j) * 0x13371337);
                mat[i][j] = x;
                hash = (hash ^ x) + (hash << 1);
                hash ^= (hash >> 17);
            }
        }
    }

    if ((hash & 0xFFFF) == 0xDADA)
        asm volatile("li x7, 2025");
    else
        asm volatile("li x7, 0xDEAD");

    while (1);
}
