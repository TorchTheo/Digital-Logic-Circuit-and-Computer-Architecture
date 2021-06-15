	lw	x1,0(x0)  #待排序的数字个数n存在0x00处，
	add	x2,x1,x0  #i=N
	ori  x4,x0,1  #x4=1
	ori  x5,x0,4  #x5=4
	ori  x6,x0,0xffffffff  #x6=-1
L1:
	beq  x2,x4,finish  #if i=1 则结束
	ori  x3,x0,1  #j=1
	ori  x7,x0,4
	ori  x8,x0,8
L2:
	sltu  x11, x3,x2 # if j<i then 读取两个元素比较
	beq  x11,x0,L3
	lw x9,0(x7)     #读取第j个元素
	lw x10,0(x8)    #读取第j+1个元素
	sltu x11,x9,x10
	beq x11,x4,L4
	sw x10,0(x7)  #交换存储
	sw x9,0(x8)   #交换存储
	jal x0, L4
L3:
   add x2,x2,x6
   Jal x0,  L1
L4:
   add x3,x3,x4 # j=j+1
   add x7,x7,x5
   add x8,x8,x5
   jal x0,  L2
finish:
	jal x0, finish
