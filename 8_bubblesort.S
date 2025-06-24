
8_bubblesort.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	80000637          	lui	a2,0x80000
80000004:	04c60613          	addi	a2,a2,76 # 8000004c <data>
80000008:	01460593          	addi	a1,a2,20
8000000c:	87b2                	c.mv	a5,a2
8000000e:	4398                	c.lw	a4,0(a5)
80000010:	43d4                	c.lw	a3,4(a5)
80000012:	00e6f463          	bgeu	a3,a4,8000001a <_start+0x1a>
80000016:	c394                	c.sw	a3,0(a5)
80000018:	c3d8                	c.sw	a4,4(a5)
8000001a:	0791                	c.addi	a5,4
8000001c:	feb799e3          	bne	a5,a1,8000000e <_start+0xe>
80000020:	ffc78593          	addi	a1,a5,-4
80000024:	fec594e3          	bne	a1,a2,8000000c <_start+0xc>
80000028:	07d1                	c.addi	a5,20
8000002a:	4701                	c.li	a4,0
8000002c:	4214                	c.lw	a3,0(a2)
8000002e:	0611                	c.addi	a2,4
80000030:	8f35                	c.xor	a4,a3
80000032:	fef61de3          	bne	a2,a5,8000002c <_start+0x2c>
80000036:	05900793          	addi	a5,zero,89
8000003a:	00f70663          	beq	a4,a5,80000046 <_start+0x46>
8000003e:	63b9                	c.lui	t2,0xe
80000040:	ead38393          	addi	t2,t2,-339 # dead <_start-0x7fff2153>
80000044:	a001                	c.j	80000044 <_start+0x44>
80000046:	7e900393          	addi	t2,zero,2025
8000004a:	bfed                	c.j	80000044 <_start+0x44>
