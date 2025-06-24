
11_popcount.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <popcount>:
80000000:	86aa                	c.mv	a3,a0
80000002:	4781                	c.li	a5,0
80000004:	4501                	c.li	a0,0
80000006:	02000613          	addi	a2,zero,32
8000000a:	48f6d733          	bext	a4,a3,a5
8000000e:	0785                	c.addi	a5,1
80000010:	953a                	c.add	a0,a4
80000012:	fec79ce3          	bne	a5,a2,8000000a <popcount+0xa>
80000016:	8082                	c.jr	ra

80000018 <_start>:
80000018:	f0f0f7b7          	lui	a5,0xf0f0f
8000001c:	12345637          	lui	a2,0x12345
80000020:	aaaab6b7          	lui	a3,0xaaaab
80000024:	55555737          	lui	a4,0x55555
80000028:	1141                	c.addi	sp,-16
8000002a:	0f078793          	addi	a5,a5,240 # f0f0f0f0 <_start+0x70f0f0d8>
8000002e:	67860613          	addi	a2,a2,1656 # 12345678 <popcount-0x6dcba988>
80000032:	aaa68693          	addi	a3,a3,-1366 # aaaaaaaa <_start+0x2aaaaa92>
80000036:	55570713          	addi	a4,a4,1365 # 55555555 <popcount-0x2aaaaaab>
8000003a:	883e                	c.mv	a6,a5
8000003c:	c03e                	c.swsp	a5,0(sp)
8000003e:	833e                	c.mv	t1,a5
80000040:	c232                	c.swsp	a2,4(sp)
80000042:	c436                	c.swsp	a3,8(sp)
80000044:	c63a                	c.swsp	a4,12(sp)
80000046:	850a                	c.mv	a0,sp
80000048:	4881                	c.li	a7,0
8000004a:	02000593          	addi	a1,zero,32
8000004e:	4110                	c.lw	a2,0(a0)
80000050:	4701                	c.li	a4,0
80000052:	4781                	c.li	a5,0
80000054:	48f656b3          	bext	a3,a2,a5
80000058:	0785                	c.addi	a5,1
8000005a:	9736                	c.add	a4,a3
8000005c:	feb79ce3          	bne	a5,a1,80000054 <_start+0x3c>
80000060:	0511                	c.addi	a0,4
80000062:	081c                	c.addi4spn	a5,sp,16
80000064:	98ba                	c.add	a7,a4
80000066:	0ac35333          	minu	t1,t1,a2
8000006a:	0ac87833          	maxu	a6,a6,a2
8000006e:	fef510e3          	bne	a0,a5,8000004e <_start+0x36>
80000072:	04000793          	addi	a5,zero,64
80000076:	00f88663          	beq	a7,a5,80000082 <_start+0x6a>
8000007a:	63b9                	c.lui	t2,0xe
8000007c:	ead38393          	addi	t2,t2,-339 # dead <popcount-0x7fff2153>
80000080:	a001                	c.j	80000080 <_start+0x68>
80000082:	123457b7          	lui	a5,0x12345
80000086:	67878793          	addi	a5,a5,1656 # 12345678 <popcount-0x6dcba988>
8000008a:	fef318e3          	bne	t1,a5,8000007a <_start+0x62>
8000008e:	f0f0f7b7          	lui	a5,0xf0f0f
80000092:	0f078793          	addi	a5,a5,240 # f0f0f0f0 <_start+0x70f0f0d8>
80000096:	fef812e3          	bne	a6,a5,8000007a <_start+0x62>
8000009a:	7e900393          	addi	t2,zero,2025
8000009e:	b7cd                	c.j	80000080 <_start+0x68>
