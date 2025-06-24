/*
 * Program: AES Key Schedule Test
 * Architecture: RV32IMCB
 * Description:
 *   This program performs a simplified AES-128 key expansion (key schedule)
 *   using a fixed 128-bit key. It calculates the expanded 11 round keys
 *   (total of 44 32-bit words), and then verifies the result by checking
 *   that the last word (w[43]) matches an expected hardcoded value.
 *
 *   If the result is correct, the program writes the value 2025 to register x7,
 *   signaling a PASS to the testbench or hardware monitor.
 *   Otherwise, it writes 0xDEAD to indicate failure.
 *
 *   SubWord (S-box substitution) is omitted for simplicity, making this
 *   a logic-heavy test focusing on control flow, shifts, rotations, and XORs.
 */

void _start() {
    // Input AES key (128-bit), 4 words
    unsigned int key[4] = {0x2b7e1516, 0x28aed2a6, 0xabf71588, 0x09cf4f3c};

    // AES round constants (Rcon) for key expansion
    unsigned int rcon[10] = {
        0x01000000, 0x02000000, 0x04000000, 0x08000000,
        0x10000000, 0x20000000, 0x40000000, 0x80000000,
        0x1b000000, 0x36000000
    };

    // Expanded key schedule (44 words)
    unsigned int w[44];

    // Copy original key into the first 4 words
    for (int i = 0; i < 4; i++) w[i] = key[i];

    // Key expansion loop (AES-128 requires 11 round keys -> 44 words total)
    for (int i = 4; i < 44; i++) {
        unsigned int temp = w[i - 1];

        // Every 4th word undergoes key schedule core (RotWord + Rcon)
        if (i % 4 == 0) {
            temp = (temp << 8) | (temp >> 24); // RotWord: rotate left by 8 bits (1 byte)
            // SubWord normally here: skipped in this simplified implementation
            temp ^= rcon[(i / 4) - 1];          // XOR with round constant
        }

        // XOR with word 4 positions earlier
        w[i] = w[i - 4] ^ temp;
    }

    // Final check: compare last key word (w[43]) to expected constant
    if (w[43] == 0xb6630ca6)
        asm volatile("li x7, 2025");  // Indicate test passed
    else
        asm volatile("li x7, 0xDEAD"); // Indicate test failed

    // Infinite loop to prevent exit
    while (1);
}
