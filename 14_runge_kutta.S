
14_runge_kutta.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <rk4_fixed>:
80000000:	00b508b3          	add	a7,a0,a1
80000004:	02c888b3          	mul	a7,a7,a2
80000008:	00165813          	srli	a6,a2,0x1
8000000c:	982e                	c.add	a6,a1
8000000e:	982a                	c.add	a6,a0
80000010:	00c58733          	add	a4,a1,a2
80000014:	972a                	c.add	a4,a0
80000016:	aaaab537          	lui	a0,0xaaaab
8000001a:	aab50513          	addi	a0,a0,-1365 # aaaaaaab <_start+0x2aaaaa5f>
8000001e:	0018d793          	srli	a5,a7,0x1
80000022:	97c2                	c.add	a5,a6
80000024:	02c787b3          	mul	a5,a5,a2
80000028:	0017d693          	srli	a3,a5,0x1
8000002c:	96c2                	c.add	a3,a6
8000002e:	02c686b3          	mul	a3,a3,a2
80000032:	9736                	c.add	a4,a3
80000034:	02c70733          	mul	a4,a4,a2
80000038:	97b6                	c.add	a5,a3
8000003a:	20e7a7b3          	sh1add	a5,a5,a4
8000003e:	97c6                	c.add	a5,a7
80000040:	02a7b7b3          	mulhu	a5,a5,a0
80000044:	8389                	c.srli	a5,0x2
80000046:	00b78533          	add	a0,a5,a1
8000004a:	8082                	c.jr	ra

8000004c <_start>:
8000004c:	63b9                	c.lui	t2,0xe
8000004e:	ead38393          	addi	t2,t2,-339 # dead <rk4_fixed-0x7fff2153>
80000052:	a001                	c.j	80000052 <_start+0x6>
