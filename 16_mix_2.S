
16_mix_2.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <rotate>:
80000000:	60b51533          	rol	a0,a0,a1
80000004:	8082                	c.jr	ra

80000006 <_start>:
80000006:	7111                	c.addi16sp	sp,-256
80000008:	deadc737          	lui	a4,0xdeadc
8000000c:	ccccde37          	lui	t3,0xccccd
80000010:	68a5                	c.lui	a7,0x9
80000012:	830a                	c.mv	t1,sp
80000014:	880a                	c.mv	a6,sp
80000016:	858a                	c.mv	a1,sp
80000018:	0de70713          	addi	a4,a4,222 # deadc0de <_start+0x5eadc0d8>
8000001c:	ccde0e13          	addi	t3,t3,-819 # cccccccd <_start+0x4cccccc7>
80000020:	1e988893          	addi	a7,a7,489 # 91e9 <rotate-0x7fff6e17>
80000024:	4601                	c.li	a2,0
80000026:	4681                	c.li	a3,0
80000028:	04000e93          	addi	t4,zero,64
8000002c:	03c6b7b3          	mulhu	a5,a3,t3
80000030:	8f31                	c.xor	a4,a2
80000032:	0591                	c.addi	a1,4
80000034:	9646                	c.add	a2,a7
80000036:	0027d513          	srli	a0,a5,0x2
8000003a:	9bf1                	c.andi	a5,-4
8000003c:	97aa                	c.add	a5,a0
8000003e:	40f687b3          	sub	a5,a3,a5
80000042:	60f71733          	rol	a4,a4,a5
80000046:	00375793          	srli	a5,a4,0x3
8000004a:	8f3d                	c.xor	a4,a5
8000004c:	fee5ae23          	sw	a4,-4(a1)
80000050:	0685                	c.addi	a3,1
80000052:	fdd69de3          	bne	a3,t4,8000002c <_start+0x26>
80000056:	f0f0ff37          	lui	t5,0xf0f0f
8000005a:	0f1f0f13          	addi	t5,t5,241 # f0f0f0f1 <_start+0x70f0f0eb>
8000005e:	488d                	c.li	a7,3
80000060:	04000f93          	addi	t6,zero,64
80000064:	859a                	c.mv	a1,t1
80000066:	4681                	c.li	a3,0
80000068:	03e6b7b3          	mulhu	a5,a3,t5
8000006c:	00568713          	addi	a4,a3,5
80000070:	00d68613          	addi	a2,a3,13
80000074:	4188                	c.lw	a0,0(a1)
80000076:	03f77713          	andi	a4,a4,63
8000007a:	03f67613          	andi	a2,a2,63
8000007e:	20664633          	sh2add	a2,a2,t1
80000082:	20674733          	sh2add	a4,a4,t1
80000086:	00062e83          	lw	t4,0(a2)
8000008a:	4318                	c.lw	a4,0(a4)
8000008c:	00751e13          	slli	t3,a0,0x7
80000090:	00555613          	srli	a2,a0,0x5
80000094:	01c64633          	xor	a2,a2,t3
80000098:	0047de13          	srli	t3,a5,0x4
8000009c:	9bc1                	c.andi	a5,-16
8000009e:	01d74733          	xor	a4,a4,t4
800000a2:	8e29                	c.xor	a2,a0
800000a4:	97f2                	c.add	a5,t3
800000a6:	40f687b3          	sub	a5,a3,a5
800000aa:	9732                	c.add	a4,a2
800000ac:	60f717b3          	rol	a5,a4,a5
800000b0:	c19c                	c.sw	a5,0(a1)
800000b2:	0685                	c.addi	a3,1
800000b4:	0591                	c.addi	a1,4
800000b6:	fbf699e3          	bne	a3,t6,80000068 <_start+0x62>
800000ba:	18fd                	c.addi	a7,-1
800000bc:	fa0894e3          	bne	a7,zero,80000064 <_start+0x5e>
800000c0:	924925b7          	lui	a1,0x92492
800000c4:	49358593          	addi	a1,a1,1171 # 92492493 <_start+0x1249248d>
800000c8:	4701                	c.li	a4,0
800000ca:	04000513          	addi	a0,zero,64
800000ce:	02b717b3          	mulh	a5,a4,a1
800000d2:	00082683          	lw	a3,0(a6)
800000d6:	41f75613          	srai	a2,a4,0x1f
800000da:	0811                	c.addi	a6,4
800000dc:	00d8c6b3          	xor	a3,a7,a3
800000e0:	97ba                	c.add	a5,a4
800000e2:	8789                	c.srai	a5,0x2
800000e4:	8f91                	c.sub	a5,a2
800000e6:	00379893          	slli	a7,a5,0x3
800000ea:	40f888b3          	sub	a7,a7,a5
800000ee:	411708b3          	sub	a7,a4,a7
800000f2:	0705                	c.addi	a4,1
800000f4:	611698b3          	rol	a7,a3,a7
800000f8:	fca71be3          	bne	a4,a0,800000ce <_start+0xc8>
800000fc:	67a9                	c.lui	a5,0xa
800000fe:	0808c8b3          	zext.h	a7,a7
80000102:	2b278793          	addi	a5,a5,690 # a2b2 <rotate-0x7fff5d4e>
80000106:	00f88663          	beq	a7,a5,80000112 <_start+0x10c>
8000010a:	63b9                	c.lui	t2,0xe
8000010c:	ead38393          	addi	t2,t2,-339 # dead <rotate-0x7fff2153>
80000110:	a001                	c.j	80000110 <_start+0x10a>
80000112:	7e900393          	addi	t2,zero,2025
80000116:	bfed                	c.j	80000110 <_start+0x10a>
