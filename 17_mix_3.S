
17_mix_3.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	80000337          	lui	t1,0x80000
80000004:	0d830313          	addi	t1,t1,216 # 800000d8 <mat>
80000008:	12345737          	lui	a4,0x12345
8000000c:	5bd1f837          	lui	a6,0x5bd1f
80000010:	04030513          	addi	a0,t1,64
80000014:	67870713          	addi	a4,a4,1656 # 12345678 <_start-0x6dcba988>
80000018:	99580813          	addi	a6,a6,-1643 # 5bd1e995 <_start-0x242e166b>
8000001c:	4581                	c.li	a1,0
8000001e:	48c1                	c.li	a7,16
80000020:	fc050693          	addi	a3,a0,-64
80000024:	4601                	c.li	a2,0
80000026:	00d75793          	srli	a5,a4,0xd
8000002a:	8fb9                	c.xor	a5,a4
8000002c:	030787b3          	mul	a5,a5,a6
80000030:	0691                	c.addi	a3,4
80000032:	00b79713          	slli	a4,a5,0xb
80000036:	8f3d                	c.xor	a4,a5
80000038:	00c747b3          	xor	a5,a4,a2
8000003c:	fef6ae23          	sw	a5,-4(a3)
80000040:	962e                	c.add	a2,a1
80000042:	fed512e3          	bne	a0,a3,80000026 <_start+0x26>
80000046:	0585                	c.addi	a1,1
80000048:	04050513          	addi	a0,a0,64
8000004c:	fd159ae3          	bne	a1,a7,80000020 <_start+0x20>
80000050:	7f4a8737          	lui	a4,0x7f4a8
80000054:	cc8edf37          	lui	t5,0xcc8ed
80000058:	133718b7          	lui	a7,0x13371
8000005c:	c1570713          	addi	a4,a4,-1003 # 7f4a7c15 <_start-0xb583eb>
80000060:	c90f0f13          	addi	t5,t5,-880 # cc8ecc90 <mat+0x4c8ecbb8>
80000064:	33788893          	addi	a7,a7,823 # 13371337 <_start-0x6cc8ecc9>
80000068:	428d                	c.li	t0,3
8000006a:	4fc1                	c.li	t6,16
8000006c:	33713837          	lui	a6,0x33713
80000070:	37080813          	addi	a6,a6,880 # 33713370 <_start-0x4c8ecc90>
80000074:	8e9a                	c.mv	t4,t1
80000076:	4e01                	c.li	t3,0
80000078:	01e805b3          	add	a1,a6,t5
8000007c:	8676                	c.mv	a2,t4
8000007e:	4214                	c.lw	a3,0(a2)
80000080:	0611                	c.addi	a2,4
80000082:	00569793          	slli	a5,a3,0x5
80000086:	0036d513          	srli	a0,a3,0x3
8000008a:	8fa9                	c.xor	a5,a0
8000008c:	8eb9                	c.xor	a3,a4
8000008e:	97b6                	c.add	a5,a3
80000090:	8fad                	c.xor	a5,a1
80000092:	00e7c6b3          	xor	a3,a5,a4
80000096:	20d72733          	sh1add	a4,a4,a3
8000009a:	fef62e23          	sw	a5,-4(a2)
8000009e:	95c6                	c.add	a1,a7
800000a0:	01175793          	srli	a5,a4,0x11
800000a4:	8f3d                	c.xor	a4,a5
800000a6:	fcb81ce3          	bne	a6,a1,8000007e <_start+0x7e>
800000aa:	0e05                	c.addi	t3,1
800000ac:	040e8e93          	addi	t4,t4,64
800000b0:	9846                	c.add	a6,a7
800000b2:	fdfe13e3          	bne	t3,t6,80000078 <_start+0x78>
800000b6:	12fd                	c.addi	t0,-1
800000b8:	fa029ae3          	bne	t0,zero,8000006c <_start+0x6c>
800000bc:	67b9                	c.lui	a5,0xe
800000be:	08074733          	zext.h	a4,a4
800000c2:	ada78793          	addi	a5,a5,-1318 # dada <_start-0x7fff2526>
800000c6:	00f70663          	beq	a4,a5,800000d2 <_start+0xd2>
800000ca:	63b9                	c.lui	t2,0xe
800000cc:	ead38393          	addi	t2,t2,-339 # dead <_start-0x7fff2153>
800000d0:	a001                	c.j	800000d0 <_start+0xd0>
800000d2:	7e900393          	addi	t2,zero,2025
800000d6:	bfed                	c.j	800000d0 <_start+0xd0>
