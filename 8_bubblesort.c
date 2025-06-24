/*
 * Program: Sort and XOR Check
 * Architecture: RV32IMCB
 *
 * Description:
 *   This program tests sorting (bubble sort) and bitwise XOR operations.
 *   It sorts a fixed array of integers in ascending order, then computes
 *   the XOR of all elements. If the result matches the expected value
 *   (89), it sets x7 = 2025 to indicate the test passed.
 */

// Static input data
unsigned int data[6] = {23, 5, 99, 1, 17, 42};

void _start() {
    // Bubble sort the array in-place
    for (unsigned int i = 0; i < 5; i++) {
        for (unsigned int j = 0; j < 5 - i; j++) {
            if (data[j] > data[j+1]) {
                // Swap using temporary variable
                unsigned int t = data[j];
                data[j] = data[j+1];
                data[j+1] = t;
            }
        }
    }

    // Compute XOR of sorted array elements
    unsigned int xor_sum = 0;
    for (unsigned int i = 0; i < 6; i++) {
        xor_sum ^= data[i];
    }

    // Check if XOR result matches expected value
    if (xor_sum == 89) {
        asm volatile("li x7, 2025");  // Test passed
    } else {
        asm volatile("li x7, 0xDEAD"); // Test failed
    }

    // Infinite loop to halt program
    while (1);
}
