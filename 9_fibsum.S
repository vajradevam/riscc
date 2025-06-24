
9_fibsum.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	4585                	c.li	a1,1
80000002:	55555337          	lui	t1,0x55555
80000006:	88ae                	c.mv	a7,a1
80000008:	55530313          	addi	t1,t1,1365 # 55555555 <_start-0x2aaaaaab>
8000000c:	4501                	c.li	a0,0
8000000e:	4801                	c.li	a6,0
80000010:	4e29                	c.li	t3,10
80000012:	02a8fa63          	bgeu	a7,a0,80000046 <_start+0x46>
80000016:	4709                	c.li	a4,2
80000018:	4785                	c.li	a5,1
8000001a:	4681                	c.li	a3,0
8000001c:	863e                	c.mv	a2,a5
8000001e:	0705                	c.addi	a4,1
80000020:	97b6                	c.add	a5,a3
80000022:	86b2                	c.mv	a3,a2
80000024:	fee59ce3          	bne	a1,a4,8000001c <_start+0x1c>
80000028:	0067f7b3          	and	a5,a5,t1
8000002c:	0505                	c.addi	a0,1
8000002e:	983e                	c.add	a6,a5
80000030:	0585                	c.addi	a1,1
80000032:	ffc510e3          	bne	a0,t3,80000012 <_start+0x12>
80000036:	2c100793          	addi	a5,zero,705
8000003a:	00f80a63          	beq	a6,a5,8000004e <_start+0x4e>
8000003e:	63b9                	c.lui	t2,0xe
80000040:	ead38393          	addi	t2,t2,-339 # dead <_start-0x7fff2153>
80000044:	a001                	c.j	80000044 <_start+0x44>
80000046:	982a                	c.add	a6,a0
80000048:	0585                	c.addi	a1,1
8000004a:	0505                	c.addi	a0,1
8000004c:	b7d9                	c.j	80000012 <_start+0x12>
8000004e:	7e900393          	addi	t2,zero,2025
80000052:	bfcd                	c.j	80000044 <_start+0x44>
