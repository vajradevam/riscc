/*
 * Program: Fibonacci ANDN Test
 * Architecture: RV32IMCB
 *
 * Description:
 *   This program computes the first 10 Fibonacci numbers using an iterative approach,
 *   applies a bitmask equivalent to the ANDN instruction (c & ~0xAAAAAAAA),
 *   and accumulates the result. If the final sum matches the precomputed value (705),
 *   it sets register x7 to 2025 to signal test pass; otherwise, to 0xDEAD.
 */

void _start() {
    unsigned int sum = 0;

    // Loop through first 10 Fibonacci indices
    for (unsigned int i = 0; i < 10; i++) {
        unsigned int a = 0, b = 1, c;

        // Compute Fibonacci number at position i
        if (i < 2) {
            c = i;
        } else {
            for (unsigned int j = 2; j <= i; j++) {
                c = a + b;
                a = b;
                b = c;
            }
        }

        // Bitwise AND with negated 0xAAAAAAAA mask (simulating ANDN instruction)
        unsigned int masked = c & (~0xAAAAAAAA);

        // Accumulate masked Fibonacci value
        sum += masked;
    }

    // Check if the computed sum matches expected result
    if (sum == 705) {
        asm volatile("li x7, 2025");  // Indicate test passed
    } else {
        asm volatile("li x7, 0xDEAD"); // Indicate test failed
    }

    // Halt by looping indefinitely
    while (1);
}
