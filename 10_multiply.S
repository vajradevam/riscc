
10_multiply.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <reverse_bits>:
80000000:	87aa                	c.mv	a5,a0
80000002:	02000713          	addi	a4,zero,32
80000006:	4501                	c.li	a0,0
80000008:	0017f693          	andi	a3,a5,1
8000000c:	0506                	c.slli	a0,0x1
8000000e:	177d                	c.addi	a4,-1
80000010:	8d55                	c.or	a0,a3
80000012:	8385                	c.srli	a5,0x1
80000014:	fb75                	c.bnez	a4,80000008 <reverse_bits+0x8>
80000016:	8082                	c.jr	ra

80000018 <_start>:
80000018:	459d                	c.li	a1,7
8000001a:	4505                	c.li	a0,1
8000001c:	03f00813          	addi	a6,zero,63
80000020:	86ae                	c.mv	a3,a1
80000022:	02000713          	addi	a4,zero,32
80000026:	4781                	c.li	a5,0
80000028:	0016f613          	andi	a2,a3,1
8000002c:	0786                	c.slli	a5,0x1
8000002e:	177d                	c.addi	a4,-1
80000030:	8fd1                	c.or	a5,a2
80000032:	8285                	c.srli	a3,0x1
80000034:	fb75                	c.bnez	a4,80000028 <_start+0x10>
80000036:	059d                	c.addi	a1,7
80000038:	953e                	c.add	a0,a5
8000003a:	ff0593e3          	bne	a1,a6,80000020 <_start+0x8>
8000003e:	111117b7          	lui	a5,0x11111
80000042:	11d78793          	addi	a5,a5,285 # 1111111d <reverse_bits-0x6eeeeee3>
80000046:	00f50663          	beq	a0,a5,80000052 <_start+0x3a>
8000004a:	63b9                	c.lui	t2,0xe
8000004c:	ead38393          	addi	t2,t2,-339 # dead <reverse_bits-0x7fff2153>
80000050:	a001                	c.j	80000050 <_start+0x38>
80000052:	7e900393          	addi	t2,zero,2025
80000056:	bfed                	c.j	80000050 <_start+0x38>
