/*
 * Program: Popcount, Min, and Max
 * Architecture: RV32IMCB
 *
 * Description:
 *   This program computes the population count (number of 1 bits)
 *   for each of 4 hardcoded 32-bit integers, while simultaneously
 *   tracking the minimum and maximum values among them.
 *   It checks the correctness of all three computations.
 *   If they match expected values, it signals success by setting x7 to 2025.
 */

unsigned int popcount(unsigned int x) {
    unsigned int c = 0;
    for (int i = 0; i < 32; i++) {
        c += (x >> i) & 1;  // Isolate bit i and accumulate if set
    }
    return c;
}

void _start() {
    // Input array of four 32-bit integers
    unsigned int a[4] = {
        0xF0F0F0F0,     // alternating 11110000...
        0x12345678,     // arbitrary pattern
        0xAAAAAAAA,     // alternating 1010...
        0x55555555      // alternating 0101...
    };

    unsigned int total_pop = 0;  // Total population count
    unsigned int min = a[0];     // Initialize min to first element
    unsigned int max = a[0];     // Initialize max to first element

    // Loop through array and compute popcount, min, and max
    for (int i = 0; i < 4; i++) {
        unsigned int pc = popcount(a[i]);  // Count set bits
        total_pop += pc;

        if (a[i] < min) min = a[i];
        if (a[i] > max) max = a[i];
    }

    // Check if results match expected values
    if (total_pop == 64 && min == 0x12345678 && max == 0xF0F0F0F0) {
        asm volatile("li x7, 2025");  // Test passed
    } else {
        asm volatile("li x7, 0xDEAD"); // Test failed
    }

    // Infinite loop to halt program
    while (1);
}
