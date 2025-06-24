
15_mix_1.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	cafec737          	lui	a4,0xcafec
80000004:	ff010837          	lui	a6,0xff010
80000008:	a5a5a537          	lui	a0,0xa5a5a
8000000c:	1337c337          	lui	t1,0x1337c
80000010:	abe70613          	addi	a2,a4,-1346 # cafebabe <_start+0x4afebabe>
80000014:	f0080813          	addi	a6,a6,-256 # ff00ff00 <_start+0x7f00ff00>
80000018:	5a550513          	addi	a0,a0,1445 # a5a5a5a5 <_start+0x25a5a5a5>
8000001c:	eef30313          	addi	t1,t1,-273 # 1337beef <_start-0x6cc84111>
80000020:	35200593          	addi	a1,zero,850
80000024:	4881                	c.li	a7,0
80000026:	4e29                	c.li	t3,10
80000028:	86c6                	c.mv	a3,a7
8000002a:	00369793          	slli	a5,a3,0x3
8000002e:	0026d713          	srli	a4,a3,0x2
80000032:	8f3d                	c.xor	a4,a5
80000034:	8f35                	c.xor	a4,a3
80000036:	010777b3          	and	a5,a4,a6
8000003a:	8fa9                	c.xor	a5,a0
8000003c:	97ba                	c.add	a5,a4
8000003e:	6057d793          	rori	a5,a5,0x5
80000042:	00c7c733          	xor	a4,a5,a2
80000046:	00b75613          	srli	a2,a4,0xb
8000004a:	0786                	c.slli	a5,0x1
8000004c:	8fb1                	c.xor	a5,a2
8000004e:	06c5                	c.addi	a3,17
80000050:	00e78633          	add	a2,a5,a4
80000054:	fcd59be3          	bne	a1,a3,8000002a <_start+0x2a>
80000058:	00161793          	slli	a5,a2,0x1
8000005c:	00365713          	srli	a4,a2,0x3
80000060:	8fb9                	c.xor	a5,a4
80000062:	0885                	c.addi	a7,1
80000064:	0585                	c.addi	a1,1
80000066:	0067c633          	xor	a2,a5,t1
8000006a:	fbc89fe3          	bne	a7,t3,80000028 <_start+0x28>
8000006e:	01065793          	srli	a5,a2,0x10
80000072:	8fb1                	c.xor	a5,a2
80000074:	672d                	c.lui	a4,0xb
80000076:	0807c7b3          	zext.h	a5,a5
8000007a:	ade70713          	addi	a4,a4,-1314 # aade <_start-0x7fff5522>
8000007e:	00e78663          	beq	a5,a4,8000008a <_start+0x8a>
80000082:	63b9                	c.lui	t2,0xe
80000084:	ead38393          	addi	t2,t2,-339 # dead <_start-0x7fff2153>
80000088:	a001                	c.j	80000088 <_start+0x88>
8000008a:	7e900393          	addi	t2,zero,2025
8000008e:	bfed                	c.j	80000088 <_start+0x88>
