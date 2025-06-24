/*
 * Program: Modular Exponentiation
 * Architecture: RV32IMCB
 *
 * Description:
 *   This program computes (base^exp) % mod using fast exponentiation
 *   (a.k.a. exponentiation by squaring). It exercises arithmetic and
 *   bitwise operations from the RV32I and RV32M extensions.
 *
 *   Input: base = 5, exp = 3, mod = 13
 *   Expected output: (5^3) % 13 = 125 % 13 = 8
 *   Writes 2025 to x7 if test passes, else 0xDEAD.
 */

// Computes (base^exp) % mod efficiently
unsigned int modexp(unsigned int base, unsigned int exp, unsigned int mod) {
  unsigned int result = 1;
  base %= mod; // Initial modulus to simplify computation

  while (exp > 0) {
    if (exp & 1)               // If LSB of exponent is 1
      result = (result * base) % mod;

    base = (base * base) % mod; // Square the base
    exp >>= 1;                  // Shift exponent right (divide by 2)
  }

  return result;
}

void _start() {
  unsigned int result = modexp(5, 3, 13); // Expected: 8

  // Validation check
  if (result == 8)
    asm volatile("li x7, 2025");   // Success
  else
    asm volatile("li x7, 0xDEAD"); // Failure

  // Infinite loop to hold processor in bare-metal
  while (1);
}
