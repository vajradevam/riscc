
4_fast_power.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <fast_pow>:
80000000:	87aa                	c.mv	a5,a0
80000002:	4505                	c.li	a0,1
80000004:	cd99                	c.beqz	a1,80000022 <fast_pow+0x22>
80000006:	0015f713          	andi	a4,a1,1
8000000a:	cb01                	c.beqz	a4,8000001a <fast_pow+0x1a>
8000000c:	8185                	c.srli	a1,0x1
8000000e:	02f50533          	mul	a0,a0,a5
80000012:	02f787b3          	mul	a5,a5,a5
80000016:	f9e5                	c.bnez	a1,80000006 <fast_pow+0x6>
80000018:	8082                	c.jr	ra
8000001a:	02f787b3          	mul	a5,a5,a5
8000001e:	8185                	c.srli	a1,0x1
80000020:	b7dd                	c.j	80000006 <fast_pow+0x6>
80000022:	8082                	c.jr	ra

80000024 <_start>:
80000024:	7e900393          	addi	t2,zero,2025
80000028:	a001                	c.j	80000028 <_start+0x4>
