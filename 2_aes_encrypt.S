
2_aes_encrypt.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	80000737          	lui	a4,0x80000
80000004:	04870793          	addi	a5,a4,72 # 80000048 <state>
80000008:	01078593          	addi	a1,a5,16
8000000c:	04870713          	addi	a4,a4,72
80000010:	862e                	c.mv	a2,a1
80000012:	4194                	c.lw	a3,0(a1)
80000014:	4308                	c.lw	a0,0(a4)
80000016:	0711                	c.addi	a4,4
80000018:	0591                	c.addi	a1,4
8000001a:	8ea9                	c.xor	a3,a0
8000001c:	fed72e23          	sw	a3,-4(a4)
80000020:	fec719e3          	bne	a4,a2,80000012 <_start+0x12>
80000024:	4701                	c.li	a4,0
80000026:	0007c683          	lbu	a3,0(a5)
8000002a:	0785                	c.addi	a5,1
8000002c:	9736                	c.add	a4,a3
8000002e:	fec79ce3          	bne	a5,a2,80000026 <_start+0x26>
80000032:	58900793          	addi	a5,zero,1417
80000036:	00f70663          	beq	a4,a5,80000042 <_start+0x42>
8000003a:	63b9                	c.lui	t2,0xe
8000003c:	ead38393          	addi	t2,t2,-339 # dead <_start-0x7fff2153>
80000040:	a001                	c.j	80000040 <_start+0x40>
80000042:	7e900393          	addi	t2,zero,2025
80000046:	bfed                	c.j	80000040 <_start+0x40>
