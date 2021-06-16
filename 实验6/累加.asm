	lw x3,0x0(x0)
	ori x5,x0,0x1
	ori x2,x0,0x1
loop:
	add x4,x4,x5
	beq x5,x3,finish
	add x5,x5,x2
	jal x0,loop
finish:
	sw x4,0x4(x0)
end:	jal x0,end