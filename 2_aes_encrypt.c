/*
 * Program: AES Encryption Round Test (Simplified)
 * Architecture: RV32IMCB
 * Description:
 *   This program performs a simplified single AES AddRoundKey operation,
 *   which is the XOR of a plaintext block (`state[]`) with a 128-bit AES key.
 *
 *   Both the plaintext and the key are fixed, hardcoded values. The result
 *   is validated by summing all 16 output bytes and comparing the result
 *   to a known constant (1417). If the result matches, x7 is set to 2025 to
 *   indicate the test passed; otherwise, x7 is set to 0xDEAD.
 *
 *   This test primarily verifies byte-level memory accesses and bitwise
 *   operations. It is useful for confirming correct behavior of load/store,
 *   arithmetic, and XOR instructions in your RISC-V IP core.
 */

// Input plaintext state (16 bytes)
unsigned char state[16] = {
    0x32, 0x88, 0x31, 0xe0,
    0x43, 0x5a, 0x31, 0x37,
    0xf6, 0x30, 0x98, 0x07,
    0xa8, 0x8d, 0xa2, 0x34
};

// AES 128-bit key (16 bytes)
unsigned char key[16] = {
    0x2b, 0x7e, 0x15, 0x16,
    0x28, 0xae, 0xd2, 0xa6,
    0xab, 0xf7, 0x15, 0x88,
    0x09, 0xcf, 0x4f, 0x3c
};

void _start() {
    // Perform AddRoundKey step: XOR each byte of state with the key
    for (int i = 0; i < 16; i++)
        state[i] ^= key[i];

    // Sum all bytes in state to get a deterministic result for testing
    unsigned int check = 0;
    for (int i = 0; i < 16; i++)
        check += state[i];

    // Check if the result matches expected checksum
    if (check == 1417)
        asm volatile("li x7, 2025");  // Test passed
    else
        asm volatile("li x7, 0xDEAD"); // Test failed

    // Infinite loop to prevent return
    while (1);
}
