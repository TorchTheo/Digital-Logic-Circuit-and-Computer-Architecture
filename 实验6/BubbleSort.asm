	lw x3, 0x0(x0) # ��ȡ �����ַ 0x0000�� �� n�� x3
	ori x5, x0, 0x1 # x5���� ��ѭ������ i Ϊ 1
	ori x2, x0, 0x1 # x2���ݣ�ѭ��������Ϊ 1
loop:
	add x4, x4, x5 # �� i�ӵ� x4 �ۼӺ�
	beq x5, x3, finish # �� x5=n���� �� ��ѭ��
	add x5, x5, x2 # x5=x5+1
	jal x0, loop # ��������ת�� loopִ��
finish:
	sw x4, 0x4(x0) # ���ۼӽ�����浽 0x0001��Ԫ
end: jal x0, end # ��������ת�� endִ��