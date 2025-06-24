/*
 * Program: Prime Counter
 * Architecture: RV32IMCB
 *
 * Description:
 *   This program counts the number of prime numbers between 2 and 100.
 *   A helper function implements trial division for primality testing.
 *   If the correct number of primes (25) is found, x7 is set to 2025;
 *   otherwise, x7 is set to 0xDEAD.
 */

// Returns 1 if 'n' is prime, 0 otherwise
int is_prime(unsigned int n) {
    if (n < 2) return 0;
    for (unsigned int i = 2; i * i <= n; i++) {
        if (n % i == 0) return 0;  // Not prime if divisible by i
    }
    return 1;
}

void _start() {
    unsigned int count = 0;

    // Check all numbers from 2 to 100
    for (unsigned int i = 2; i <= 100; i++) {
        if (is_prime(i)) count++;
    }

    // Expected number of primes between 2 and 100 is 25
    if (count == 25) {
        asm volatile("li x7, 2025");  // Test passed
    } else {
        asm volatile("li x7, 0xDEAD"); // Test failed
    }

    // Infinite loop to halt execution
    while (1);
}
