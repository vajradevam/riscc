
12_primality.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <is_prime>:
80000000:	4785                	c.li	a5,1
80000002:	00a7ff63          	bgeu	a5,a0,80000020 <is_prime+0x20>
80000006:	470d                	c.li	a4,3
80000008:	00a77e63          	bgeu	a4,a0,80000024 <is_prime+0x24>
8000000c:	4789                	c.li	a5,2
8000000e:	a029                	c.j	80000018 <is_prime+0x18>
80000010:	02f78733          	mul	a4,a5,a5
80000014:	00e56863          	bltu	a0,a4,80000024 <is_prime+0x24>
80000018:	02f57733          	remu	a4,a0,a5
8000001c:	0785                	c.addi	a5,1
8000001e:	fb6d                	c.bnez	a4,80000010 <is_prime+0x10>
80000020:	4501                	c.li	a0,0
80000022:	8082                	c.jr	ra
80000024:	4505                	c.li	a0,1
80000026:	8082                	c.jr	ra

80000028 <_start>:
80000028:	4709                	c.li	a4,2
8000002a:	4601                	c.li	a2,0
8000002c:	458d                	c.li	a1,3
8000002e:	06500513          	addi	a0,zero,101
80000032:	4789                	c.li	a5,2
80000034:	00e5e763          	bltu	a1,a4,80000042 <_start+0x1a>
80000038:	a805                	c.j	80000068 <_start+0x40>
8000003a:	02f786b3          	mul	a3,a5,a5
8000003e:	02d76063          	bltu	a4,a3,8000005e <_start+0x36>
80000042:	02f776b3          	remu	a3,a4,a5
80000046:	0785                	c.addi	a5,1
80000048:	faed                	c.bnez	a3,8000003a <_start+0x12>
8000004a:	0705                	c.addi	a4,1
8000004c:	fea713e3          	bne	a4,a0,80000032 <_start+0xa>
80000050:	47e5                	c.li	a5,25
80000052:	00f60e63          	beq	a2,a5,8000006e <_start+0x46>
80000056:	63b9                	c.lui	t2,0xe
80000058:	ead38393          	addi	t2,t2,-339 # dead <is_prime-0x7fff2153>
8000005c:	a001                	c.j	8000005c <_start+0x34>
8000005e:	0705                	c.addi	a4,1
80000060:	0605                	c.addi	a2,1
80000062:	fca718e3          	bne	a4,a0,80000032 <_start+0xa>
80000066:	b7ed                	c.j	80000050 <_start+0x28>
80000068:	0605                	c.addi	a2,1
8000006a:	0705                	c.addi	a4,1
8000006c:	b7d9                	c.j	80000032 <_start+0xa>
8000006e:	7e900393          	addi	t2,zero,2025
80000072:	b7ed                	c.j	8000005c <_start+0x34>
