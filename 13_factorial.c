/*
 * Program: Recursive Factorial Test
 * Architecture: RV32IMCB
 * Description:
 *   Computes factorial(5) recursively.
 *   Expected output: 120
 */

unsigned int fact(unsigned int n) {
    if (n == 0 || n == 1) return 1;
    return n * fact(n - 1);
}

void _start() {
    unsigned int result = fact(5);

    if (result == 120)
        asm volatile("li x7, 2025");
    else
        asm volatile("li x7, 0xDEAD");

    while (1);
}
