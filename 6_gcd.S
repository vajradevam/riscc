
6_gcd.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <gcd>:
80000000:	87aa                	c.mv	a5,a0
80000002:	c599                	c.beqz	a1,80000010 <gcd+0x10>
80000004:	852e                	c.mv	a0,a1
80000006:	02b7f5b3          	remu	a1,a5,a1
8000000a:	87aa                	c.mv	a5,a0
8000000c:	fde5                	c.bnez	a1,80000004 <gcd+0x4>
8000000e:	8082                	c.jr	ra
80000010:	8082                	c.jr	ra

80000012 <_start>:
80000012:	47c9                	c.li	a5,18
80000014:	03000713          	addi	a4,zero,48
80000018:	86be                	c.mv	a3,a5
8000001a:	02f777b3          	remu	a5,a4,a5
8000001e:	8736                	c.mv	a4,a3
80000020:	ffe5                	c.bnez	a5,80000018 <_start+0x6>
80000022:	4799                	c.li	a5,6
80000024:	00f68663          	beq	a3,a5,80000030 <_start+0x1e>
80000028:	63b9                	c.lui	t2,0xe
8000002a:	ead38393          	addi	t2,t2,-339 # dead <gcd-0x7fff2153>
8000002e:	a001                	c.j	8000002e <_start+0x1c>
80000030:	7e900393          	addi	t2,zero,2025
80000034:	bfed                	c.j	8000002e <_start+0x1c>
