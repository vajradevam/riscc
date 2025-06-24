
13_factorial.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <fact>:
80000000:	87aa                	c.mv	a5,a0
80000002:	4505                	c.li	a0,1
80000004:	86aa                	c.mv	a3,a0
80000006:	00f57863          	bgeu	a0,a5,80000016 <fact+0x16>
8000000a:	873e                	c.mv	a4,a5
8000000c:	17fd                	c.addi	a5,-1
8000000e:	02e50533          	mul	a0,a0,a4
80000012:	fed79ce3          	bne	a5,a3,8000000a <fact+0xa>
80000016:	8082                	c.jr	ra

80000018 <_start>:
80000018:	7e900393          	addi	t2,zero,2025
8000001c:	a001                	c.j	8000001c <_start+0x4>
