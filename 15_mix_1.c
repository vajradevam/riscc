/*
 * Program: Massive Mixed Computation
 * Architecture: RV32IMCB
 * Description:
 *   Stresses the CPU with a variety of operations:
 *   - Arithmetic
 *   - Shifts and logic
 *   - Loop unrolling and chaining
 *   Accumulates a hash-like checksum and verifies it.
 */

void _start() {
    unsigned int acc = 0xCAFEBABE;

    for (int outer = 0; outer < 10; outer++) {
        for (int i = 0; i < 50; i++) {
            unsigned int v = i * 17 + outer;
            v ^= (v << 3) ^ (v >> 2);
            v += (v & 0xFF00FF00) ^ 0xA5A5A5A5;
            v = ((v >> 5) | (v << 27));
            acc ^= v;
            acc += (acc >> 11) ^ (v << 1);
        }
        acc = (acc << 1) ^ (acc >> 3) ^ 0x1337BEEF;
    }

    acc = (acc ^ (acc >> 16)) + 0xBEEF0000;

    if ((acc & 0xFFFF) == 0xAADE)
        asm volatile("li x7, 2025");
    else
        asm volatile("li x7, 0xDEAD");

    while (1);
}
