/*
 * Program: Fast Inverse Square Root (Integer-based)
 * Architecture: RV32IMCB
 *
 * Description:
 *   This is a simplified integer-only version of the famous Quake III Arena
 *   "fast inverse square root" algorithm. It avoids actual floating-point math
 *   and works by manipulating IEEE-754 float bit patterns directly as integers.
 *
 *   The goal is to test bit manipulation (shifts, XOR, subtraction) and branching.
 *   This version tests the core logic and validates the bit pattern of the result.
 *   If the top bits of the result match the expected output (approximation of 1/sqrt(4.0)),
 *   it writes 2025 to x7; otherwise, 0xDEAD to indicate failure.
 */

// Approximates 1/sqrt(x) using bit-level hacking (no floating-point ops)
unsigned int Q_rsqrt(unsigned int number) {
  unsigned int i = number;

  // "Magic number" for IEEE-754 inverse sqrt approximation
  i = 0x5f3759df - (i >> 1);

  return i; // This is the int-representation of a float ~ 1/sqrt(number)
}

void _start() {
  // Input: float(4.0) = 0x40800000 (bit pattern of IEEE-754 float)
  unsigned int result = Q_rsqrt(0x40800000);

  // Expect approx 1/sqrt(4) = 0.5 → IEEE-754 float(0.5) ≈ 0x3f000000
  // Match top 12 bits for approximation validation
  if ((result & 0xFFF00000) == 0x3f000000)
    asm volatile("li x7, 2025");   // Test passed
  else
    asm volatile("li x7, 0xDEAD"); // Test failed

  while (1); // Infinite loop to halt
}
