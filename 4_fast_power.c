/*
 * Program: Fast Exponentiation (Binary Exponentiation)
 * Architecture: RV32IMCB
 * Description:
 *   This program implements fast (binary) exponentiation to compute base^exp efficiently.
 *   It tests multiplication, bitwise AND, shift, and conditional logic. These operations
 *   are common in cryptography and number theory, and help exercise RV32IM features.
 *
 *   The function computes 3^10 = 59049. The result is validated against this value.
 *   If correct, x7 is set to 2025; otherwise, x7 is set to 0xDEAD to signal failure.
 */

// Fast exponentiation: calculates base raised to exp using binary exponentiation
unsigned int fast_pow(unsigned int base, unsigned int exp) {
  unsigned int result = 1;

  // While exponent is not zero
  while (exp > 0) {
    // If lowest bit of exponent is 1, multiply result by base
    if (exp & 1) result *= base;

    // Square the base
    base *= base;

    // Right shift exponent (divide by 2)
    exp >>= 1;
  }

  return result;
}

void _start() {
  // Call fast_pow(3, 10), expected result is 59049
  unsigned int result = fast_pow(3, 10);

  // Check result
  if (result == 59049)
    asm volatile("li x7, 2025");   // Test passed
  else
    asm volatile("li x7, 0xDEAD"); // Test failed

  // Infinite loop to halt program
  while (1);
}
