	lw x3, 0x0(x0) # 读取 主存地址 0x0000处 的 n到 x3
	ori x5, x0, 0x1 # x5内容 （循环变量 i 为 1
	ori x2, x0, 0x1 # x2内容（循环增量）为 1
loop:
	add x4, x4, x5 # 将 i加到 x4 累加和
	beq x5, x3, finish # 若 x5=n，则 跳 出循环
	add x5, x5, x2 # x5=x5+1
	jal x0, loop # 无条件跳转到 loop执行
finish:
	sw x4, 0x4(x0) # 将累加结果保存到 0x0001单元
end: jal x0, end # 无条件跳转到 end执行