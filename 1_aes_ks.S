
1_aes_ks.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	800007b7          	lui	a5,0x80000
80000004:	0cc78793          	addi	a5,a5,204 # 800000cc <_start+0xcc>
80000008:	0087af03          	lw	t5,8(a5)
8000000c:	00c7ae83          	lw	t4,12(a5)
80000010:	4f8c                	c.lw	a1,24(a5)
80000012:	0007a283          	lw	t0,0(a5)
80000016:	0047af83          	lw	t6,4(a5)
8000001a:	0107ae03          	lw	t3,16(a5)
8000001e:	0147a803          	lw	a6,20(a5)
80000022:	4fd0                	c.lw	a2,28(a5)
80000024:	5394                	c.lw	a3,32(a5)
80000026:	53dc                	c.lw	a5,36(a5)
80000028:	2b7e1537          	lui	a0,0x2b7e1
8000002c:	28aed337          	lui	t1,0x28aed
80000030:	abf718b7          	lui	a7,0xabf71
80000034:	09cf5737          	lui	a4,0x9cf5
80000038:	7115                	c.addi16sp	sp,-224
8000003a:	51650513          	addi	a0,a0,1302 # 2b7e1516 <_start-0x5481eaea>
8000003e:	2a630313          	addi	t1,t1,678 # 28aed2a6 <_start-0x57512d5a>
80000042:	58888893          	addi	a7,a7,1416 # abf71588 <_start+0x2bf71588>
80000046:	f3c70713          	addi	a4,a4,-196 # 9cf4f3c <_start-0x7630b0c4>
8000004a:	c87a                	c.swsp	t5,16(sp)
8000004c:	ca76                	c.swsp	t4,20(sp)
8000004e:	d02e                	c.swsp	a1,32(sp)
80000050:	d63e                	c.swsp	a5,44(sp)
80000052:	c416                	c.swsp	t0,8(sp)
80000054:	c67e                	c.swsp	t6,12(sp)
80000056:	cc72                	c.swsp	t3,24(sp)
80000058:	ce42                	c.swsp	a6,28(sp)
8000005a:	d232                	c.swsp	a2,36(sp)
8000005c:	d436                	c.swsp	a3,40(sp)
8000005e:	d82a                	c.swsp	a0,48(sp)
80000060:	da1a                	c.swsp	t1,52(sp)
80000062:	dc46                	c.swsp	a7,56(sp)
80000064:	de3a                	c.swsp	a4,60(sp)
80000066:	008c                	c.addi4spn	a1,sp,64
80000068:	4791                	c.li	a5,4
8000006a:	00810e93          	addi	t4,sp,8
8000006e:	02c00f13          	addi	t5,zero,44
80000072:	a839                	c.j	80000090 <_start+0x90>
80000074:	ffc6a683          	lw	a3,-4(a3)
80000078:	0785                	c.addi	a5,1
8000007a:	0591                	c.addi	a1,4
8000007c:	00d84833          	xor	a6,a6,a3
80000080:	00a84633          	xor	a2,a6,a0
80000084:	fec5ae23          	sw	a2,-4(a1)
80000088:	851a                	c.mv	a0,t1
8000008a:	8346                	c.mv	t1,a7
8000008c:	88ba                	c.mv	a7,a4
8000008e:	8732                	c.mv	a4,a2
80000090:	ffc7f693          	andi	a3,a5,-4
80000094:	0037fe13          	andi	t3,a5,3
80000098:	96f6                	c.add	a3,t4
8000009a:	61875813          	rori	a6,a4,0x18
8000009e:	00a74633          	xor	a2,a4,a0
800000a2:	fc0e09e3          	beq	t3,zero,80000074 <_start+0x74>
800000a6:	c190                	c.sw	a2,0(a1)
800000a8:	0785                	c.addi	a5,1
800000aa:	0591                	c.addi	a1,4
800000ac:	fde79ee3          	bne	a5,t5,80000088 <_start+0x88>
800000b0:	477e                	c.lwsp	a4,220(sp)
800000b2:	b66317b7          	lui	a5,0xb6631
800000b6:	ca678793          	addi	a5,a5,-858 # b6630ca6 <_start+0x36630ca6>
800000ba:	00f70663          	beq	a4,a5,800000c6 <_start+0xc6>
800000be:	63b9                	c.lui	t2,0xe
800000c0:	ead38393          	addi	t2,t2,-339 # dead <_start-0x7fff2153>
800000c4:	a001                	c.j	800000c4 <_start+0xc4>
800000c6:	7e900393          	addi	t2,zero,2025
800000ca:	bfed                	c.j	800000c4 <_start+0xc4>
