/*
 * Program: ChaCha20 Core Round Test (Simplified)
 * Architecture: RV32IMCB
 * Description:
 *   This program runs 10 rounds of the ChaCha20 quarterround operations
 *   on a standard ChaCha state. It uses a simplified form of the ChaCha20
 *   algorithm to verify ALU operations (add, xor), rotation logic (shift, or),
 *   and array indexing — all relevant for validating RV32I + M + B extensions.
 *
 *   The final result is validated by computing a checksum (sum of all 16 words),
 *   and comparing it against a known constant. If it matches, x7 is set to 2025;
 *   otherwise, x7 is set to 0xDEAD to indicate a test failure.
 */

// Initial ChaCha20 state (constants + key + counter + nonce)
unsigned int state[16] = {
  0x61707865, 0x3320646e, 0x79622d32, 0x6b206574, // constants
  0x03020100, 0x07060504, 0x0b0a0908, 0x0f0e0d0c, // key part 1
  0x00000001, 0x09000000, 0x4a000000, 0x00000000, // counter + nonce part 1
  0x00000000, 0x00000000, 0x00000000, 0x00000000  // nonce part 2 (zeros)
};

// Rotate-left (32-bit)
#define ROTL(a,b) (((a) << (b)) | ((a) >> (32 - (b))))

// Quarterround function (core of ChaCha20)
void quarterround(unsigned int *x, int a, int b, int c, int d) {
  x[a] += x[b]; x[d] ^= x[a]; x[d] = ROTL(x[d],16);
  x[c] += x[d]; x[b] ^= x[c]; x[b] = ROTL(x[b],12);
  x[a] += x[b]; x[d] ^= x[a]; x[d] = ROTL(x[d],8);
  x[c] += x[d]; x[b] ^= x[c]; x[b] = ROTL(x[b],7);
}

void _start() {
  // Run 10 ChaCha20 rounds (each round = 8 quarterrounds)
  for (int i = 0; i < 10; i++) {
    // Column rounds
    quarterround(state, 0, 4, 8, 12);
    quarterround(state, 1, 5, 9, 13);
    quarterround(state, 2, 6,10, 14);
    quarterround(state, 3, 7,11, 15);
    // Diagonal rounds
    quarterround(state, 0, 5,10, 15);
    quarterround(state, 1, 6,11, 12);
    quarterround(state, 2, 7, 8, 13);
    quarterround(state, 3, 4, 9, 14);
  }

  // Sum all 16 words of the state to produce a checksum
  unsigned int sum = 0;
  for (int i = 0; i < 16; i++) sum += state[i];

  // Validate checksum to determine pass/fail
  if (sum == 4160930768)
    asm volatile("li x7, 2025");  // Test passed
  else
    asm volatile("li x7, 0xDEAD"); // Test failed

  // Infinite loop to prevent program exit
  while (1);
}
