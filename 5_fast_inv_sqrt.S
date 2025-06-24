
5_fast_inv_sqrt.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <Q_rsqrt>:
80000000:	5f3767b7          	lui	a5,0x5f376
80000004:	9df78793          	addi	a5,a5,-1569 # 5f3759df <Q_rsqrt-0x20c8a621>
80000008:	8105                	c.srli	a0,0x1
8000000a:	40a78533          	sub	a0,a5,a0
8000000e:	8082                	c.jr	ra

80000010 <_start>:
80000010:	63b9                	c.lui	t2,0xe
80000012:	ead38393          	addi	t2,t2,-339 # dead <Q_rsqrt-0x7fff2153>
80000016:	a001                	c.j	80000016 <_start+0x6>
