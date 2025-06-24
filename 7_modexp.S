
7_modexp.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <modexp>:
80000000:	02c577b3          	remu	a5,a0,a2
80000004:	4505                	c.li	a0,1
80000006:	c58d                	c.beqz	a1,80000030 <modexp+0x30>
80000008:	0015f713          	andi	a4,a1,1
8000000c:	cf01                	c.beqz	a4,80000024 <modexp+0x24>
8000000e:	8185                	c.srli	a1,0x1
80000010:	02a78533          	mul	a0,a5,a0
80000014:	02f787b3          	mul	a5,a5,a5
80000018:	02c57533          	remu	a0,a0,a2
8000001c:	02c7f7b3          	remu	a5,a5,a2
80000020:	f5e5                	c.bnez	a1,80000008 <modexp+0x8>
80000022:	8082                	c.jr	ra
80000024:	02f787b3          	mul	a5,a5,a5
80000028:	8185                	c.srli	a1,0x1
8000002a:	02c7f7b3          	remu	a5,a5,a2
8000002e:	bfe9                	c.j	80000008 <modexp+0x8>
80000030:	8082                	c.jr	ra

80000032 <_start>:
80000032:	7e900393          	addi	t2,zero,2025
80000036:	a001                	c.j	80000036 <_start+0x4>
