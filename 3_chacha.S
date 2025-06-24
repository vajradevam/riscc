
3_chacha.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <quarterround>:
80000000:	20a64633          	sh2add	a2,a2,a0
80000004:	20a5c5b3          	sh2add	a1,a1,a0
80000008:	00062803          	lw	a6,0(a2)
8000000c:	419c                	c.lw	a5,0(a1)
8000000e:	20a74733          	sh2add	a4,a4,a0
80000012:	20a6c533          	sh2add	a0,a3,a0
80000016:	97c2                	c.add	a5,a6
80000018:	c19c                	c.sw	a5,0(a1)
8000001a:	00072803          	lw	a6,0(a4)
8000001e:	0107c7b3          	xor	a5,a5,a6
80000022:	6107d793          	rori	a5,a5,0x10
80000026:	c31c                	c.sw	a5,0(a4)
80000028:	4114                	c.lw	a3,0(a0)
8000002a:	97b6                	c.add	a5,a3
8000002c:	c11c                	c.sw	a5,0(a0)
8000002e:	4214                	c.lw	a3,0(a2)
80000030:	8fb5                	c.xor	a5,a3
80000032:	6147d793          	rori	a5,a5,0x14
80000036:	c21c                	c.sw	a5,0(a2)
80000038:	4194                	c.lw	a3,0(a1)
8000003a:	97b6                	c.add	a5,a3
8000003c:	c19c                	c.sw	a5,0(a1)
8000003e:	4314                	c.lw	a3,0(a4)
80000040:	8fb5                	c.xor	a5,a3
80000042:	6187d793          	rori	a5,a5,0x18
80000046:	c31c                	c.sw	a5,0(a4)
80000048:	4118                	c.lw	a4,0(a0)
8000004a:	97ba                	c.add	a5,a4
8000004c:	c11c                	c.sw	a5,0(a0)
8000004e:	4218                	c.lw	a4,0(a2)
80000050:	8fb9                	c.xor	a5,a4
80000052:	6197d793          	rori	a5,a5,0x19
80000056:	c21c                	c.sw	a5,0(a2)
80000058:	8082                	c.jr	ra

8000005a <_start>:
8000005a:	1141                	c.addi	sp,-16
8000005c:	c422                	c.swsp	s0,8(sp)
8000005e:	c226                	c.swsp	s1,4(sp)
80000060:	c606                	c.swsp	ra,12(sp)
80000062:	44a9                	c.li	s1,10
80000064:	80000437          	lui	s0,0x80000
80000068:	4731                	c.li	a4,12
8000006a:	46a1                	c.li	a3,8
8000006c:	4611                	c.li	a2,4
8000006e:	4581                	c.li	a1,0
80000070:	10840513          	addi	a0,s0,264 # 80000108 <state>
80000074:	3771                	c.jal	80000000 <quarterround>
80000076:	10840513          	addi	a0,s0,264
8000007a:	4735                	c.li	a4,13
8000007c:	46a5                	c.li	a3,9
8000007e:	4615                	c.li	a2,5
80000080:	4585                	c.li	a1,1
80000082:	3fbd                	c.jal	80000000 <quarterround>
80000084:	10840513          	addi	a0,s0,264
80000088:	4739                	c.li	a4,14
8000008a:	46a9                	c.li	a3,10
8000008c:	4619                	c.li	a2,6
8000008e:	4589                	c.li	a1,2
80000090:	3f85                	c.jal	80000000 <quarterround>
80000092:	10840513          	addi	a0,s0,264
80000096:	473d                	c.li	a4,15
80000098:	46ad                	c.li	a3,11
8000009a:	461d                	c.li	a2,7
8000009c:	458d                	c.li	a1,3
8000009e:	378d                	c.jal	80000000 <quarterround>
800000a0:	10840513          	addi	a0,s0,264
800000a4:	473d                	c.li	a4,15
800000a6:	46a9                	c.li	a3,10
800000a8:	4615                	c.li	a2,5
800000aa:	4581                	c.li	a1,0
800000ac:	3f91                	c.jal	80000000 <quarterround>
800000ae:	10840513          	addi	a0,s0,264
800000b2:	4731                	c.li	a4,12
800000b4:	46ad                	c.li	a3,11
800000b6:	4619                	c.li	a2,6
800000b8:	4585                	c.li	a1,1
800000ba:	3799                	c.jal	80000000 <quarterround>
800000bc:	10840513          	addi	a0,s0,264
800000c0:	4735                	c.li	a4,13
800000c2:	46a1                	c.li	a3,8
800000c4:	461d                	c.li	a2,7
800000c6:	4589                	c.li	a1,2
800000c8:	3f25                	c.jal	80000000 <quarterround>
800000ca:	10840513          	addi	a0,s0,264
800000ce:	4739                	c.li	a4,14
800000d0:	46a5                	c.li	a3,9
800000d2:	4611                	c.li	a2,4
800000d4:	458d                	c.li	a1,3
800000d6:	14fd                	c.addi	s1,-1
800000d8:	3725                	c.jal	80000000 <quarterround>
800000da:	f4d9                	c.bnez	s1,80000068 <_start+0xe>
800000dc:	10840413          	addi	s0,s0,264
800000e0:	04040713          	addi	a4,s0,64
800000e4:	401c                	c.lw	a5,0(s0)
800000e6:	0411                	c.addi	s0,4
800000e8:	94be                	c.add	s1,a5
800000ea:	fee41de3          	bne	s0,a4,800000e4 <_start+0x8a>
800000ee:	f802c7b7          	lui	a5,0xf802c
800000f2:	3d078793          	addi	a5,a5,976 # f802c3d0 <state+0x7802c2c8>
800000f6:	00f48663          	beq	s1,a5,80000102 <_start+0xa8>
800000fa:	63b9                	c.lui	t2,0xe
800000fc:	ead38393          	addi	t2,t2,-339 # dead <quarterround-0x7fff2153>
80000100:	a001                	c.j	80000100 <_start+0xa6>
80000102:	7e900393          	addi	t2,zero,2025
80000106:	bfed                	c.j	80000100 <_start+0xa6>
