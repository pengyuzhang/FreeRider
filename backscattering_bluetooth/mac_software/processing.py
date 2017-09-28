data_file = open('data.txt')
lines = data_file.readlines()
rssi = []
totalbits = 0
errorbits = 0
refbit = '101010101010'
for j in lines:
    data = j.split('|')[1]
    rssi_data = j.split('|')[2][:-2]
    rssi_data = rssi_data.split(' ')
    if len(data) == 95 and 'CRC' in rssi_data:
        rssi_power = int(rssi_data[rssi_data.index('CRC') - 1])
        if rssi_power < -70:
            rssi.append(rssi_power)
            #data = data[22:-29]
            data = data.split(' ')
            data = data[8:8+12*2]
            bit_data = str()
            k = 0
            while k<len(data):
                if data[k] == '00' and data[k+1] == '00':
                    bit_data += str('0')
                else:
                    bit_data += str('1')
                k += 2
            for k in range(len(refbit)):
                if bit_data[k] != refbit[k]:
                    errorbits += 1
                totalbits += 1
        BER = float(errorbits)/totalbits
time_start = float(lines[0][3:5])*60+float(lines[0][6:8])+float(lines[0][9:12])/1000
time_end = float(lines[-1][3:5])*60+float(lines[-1][6:8])+float(lines[-1][9:12])/1000
time = time_end-time_start
rssi_result = float(sum(rssi))/len(rssi)

print BER