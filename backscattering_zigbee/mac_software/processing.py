data_file = open('data.txt')
lines = data_file.readlines()
rssi = []
totalbits = 0
errorbits = 0
refbit = '1010101010'
for j in lines:
    data = j.split('|')[1]
    rssi_data = j.split('|')[2][:-2]
    rssi_data = rssi_data.split(' ')
    #print data, len(data), data[6:10]
    #print rssi_data
    if len(data) == 95:
        rssi_power = int(rssi_data[-1])
        if rssi_power < -60:
            rssi.append(rssi_power)
            data = data.split(' ')
            data_wo_offset = data[9:9+20]
            bit_data = str()
            k = 0
            while k<len(data_wo_offset):
                if data_wo_offset[k] == '00' and data_wo_offset[k+1] == '00':
                    bit_data += str('0')
                else:
                    bit_data += str('1')
                k += 2
            errorbits_wo_offset = 0
            totalbits_wo_offset = 0
            for k in range(len(refbit)):
                if bit_data[k] != refbit[k]:
                    errorbits_wo_offset += 1
                totalbits_wo_offset += 1

            data_w_offset = data[8:8+20]
            bit_data = str()
            k = 0
            while k<len(data_w_offset):
                if data_w_offset[k] == '00' and data_w_offset[k+1] == '00':
                    bit_data += str('0')
                else:
                    bit_data += str('1')
                k += 2
            errorbits_w_offset = 0
            totalbits_w_offset = 0
            for k in range(len(refbit)):
                if bit_data[k] != refbit[k]:
                    errorbits_w_offset += 1
                totalbits_w_offset += 1

            if errorbits_w_offset <= errorbits_wo_offset:
                errorbits += errorbits_w_offset
                totalbits += totalbits_w_offset
            else:
                errorbits += errorbits_wo_offset
                totalbits += totalbits_wo_offset

        BER = float(errorbits)/totalbits

time_start = float(lines[0][0:2])*3600+float(lines[0][3:5])*60+float(lines[0][6:8])+float(lines[0][9:12])/1000
time_end = float(lines[-1][0:2])*3600+float(lines[-1][3:5])*60+float(lines[-1][6:8])+float(lines[-1][9:12])/1000
time = time_end-time_start
rssi_result = float(sum(rssi))/len(rssi)

print BER