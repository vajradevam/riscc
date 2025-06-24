/*
 * Program: Multiply and Bit-Reverse Accumulator
 * Architecture: RV32IMCB
 *
 * Description:
 *   This program multiplies integers 1 through 8 by 7,
 *   reverses the bits of each result (bit-level reversal),
 *   and accumulates the reversed values.
 *   At the end, if the final accumulated result matches a known constant,
 *   it sets x7 to 2025 (indicating success); otherwise, it sets x7 to 0xDEAD.
 */

unsigned int reverse_bits(unsigned int x) {
    unsigned int r = 0;
    for (int i = 0; i < 32; i++) {
        r <<= 1;        // Shift result left
        r |= x & 1;     // Append LSB of x to result
        x >>= 1;        // Shift x right
    }
    return r;
}

void _start() {
    unsigned int acc = 1;

    // Loop from i = 1 to 8
    for (unsigned int i = 1; i <= 8; i++) {
        unsigned int val = i * 7;         // Multiply i by 7
        acc += reverse_bits(val);         // Reverse bits and accumulate
    }

    // Final check against precomputed result
    if (acc == 286331165) {
        asm volatile("li x7, 2025");      // Indicate success
    } else {
        asm volatile("li x7, 0xDEAD");    // Indicate failure
    }

    // Halt program
    while (1);
}
