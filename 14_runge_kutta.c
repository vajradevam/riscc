/*
 * Program: Runge-Kutta 4th Order Method (Single Step)
 * Architecture: RV32IMCB
 * Description:
 *   Solves dy/dx = x + y from x=0, y=1 with h=0.1
 *   Uses fixed-point (Q16.16) math to simulate floats.
 *   Expected fixed-point result: y ≈ 1.110341 (0x00011BC7)
 */

unsigned int rk4_fixed(unsigned int x, unsigned int y, unsigned int h) {
    unsigned int k1 = h * (x + y);
    unsigned int k2 = h * (x + h/2 + y + k1/2);
    unsigned int k3 = h * (x + h/2 + y + k2/2);
    unsigned int k4 = h * (x + h + y + k3);
    return y + (k1 + 2*k2 + 2*k3 + k4) / 6;
}

void _start() {
    unsigned int x = 0;
    unsigned int y = 1 << 16;      // 1.0 in Q16.16
    unsigned int h = 0x199A;       // 0.1 in Q16.16

    unsigned int result = rk4_fixed(x, y, h);

    if ((result & 0xFFFFFFF0) == 0x00011BC0)  // ~1.11034
        asm volatile("li x7, 2025");
    else
        asm volatile("li x7, 0xDEAD");

    while (1);
}
