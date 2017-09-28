import numpy as np
import re

refbit = '1010101010101010101010101010101010101010101010101010101010101010101010'

data = open("dump.txt", "r")
lines = data.readlines()
rown = len(lines)

f = open('data_file.txt', 'w')

bit_len = 12*2

start_bit = 48
index = 0
errorbits = 0
totalbits = 0
while index<rown:
	line = lines[index]
	
	if len(line)==1989:
		decoded_data = str()
		bit_index = start_bit
		while bit_index<start_bit+bit_len*70:
			one_num = 0
			start_ref = bit_index
			p = start_ref
			while p<start_ref+bit_len:
				for i in range(0,8):
					one_num += int('{:08b}'.format(int(line[p:p+2],16))[i])
				p += 2

			if one_num>48:
				decoded_data += str('1')
			else:
				decoded_data += str('0')
		
			bit_index += bit_len

		for k in range(len(refbit)):
			if decoded_data[k] != refbit[k]:
				errorbits += 1
			totalbits += 1

	index += 1

print errorbits, totalbits, float(errorbits)/float(totalbits)
f.close()
data.close()
