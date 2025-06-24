/*
 * Program: GCD (Greatest Common Divisor) using Euclidean Algorithm
 * Architecture: RV32IMCB
 *
 * Description:
 *   This program calculates the GCD of two positive integers using the
 *   iterative Euclidean algorithm. It exercises modulus `%` and loop
 *   control instructions, which are useful for validating RV32I and M
 *   (integer multiply/divide) extensions.
 *
 *   It verifies the correctness by computing gcd(48, 18), which is 6.
 *   If the result is correct, it writes 2025 to x7; otherwise, 0xDEAD.
 */

// Computes GCD of a and b using the iterative Euclidean algorithm
unsigned int gcd(unsigned int a, unsigned int b) {
  while (b != 0) {
    unsigned int temp = b;
    b = a % b;  // Modulo operation requires M-extension
    a = temp;
  }
  return a;
}

void _start() {
  unsigned int result = gcd(48, 18); // Known GCD is 6

  // Check correctness
  if (result == 6)
    asm volatile("li x7, 2025");   // Test passed
  else
    asm volatile("li x7, 0xDEAD"); // Test failed

  // Infinite loop to prevent exit in bare-metal context
  while (1);
}
