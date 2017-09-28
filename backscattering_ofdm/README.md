## FreeRider - Backscatter Communication Using Commodity Radios
- Author: Pengyu Zhang
- Contact: pyzhang@cs.stanford.edu
- Description: This repo hosts the FPGA code and MacBook Pro software needed for running the FreeRider system. We demonstrate that FreeRider can inject data on top of existing 802.11g/n OFDM WiFi traffic. 

## License
- The source code of the FreeRider system is distributed under academic license to ensure the reproducibility of our results. The source code can NOT be used for commercial purpose.

## Code
- FPGA_code repo includes the code of doing codeword translation when the excitation signal is an 802.11g/n WiFi signal.

- mac_software repo inlcudes the software running on a MacBook Pro laptop for receiving the backscattered WiFi packets and decoding the data.

## How to run?
- Flash the FPGA Verilog code into the Igloo Nano FPGA

- Configure the WiFi transmitter to send excitation packets at 6Mbps with OFDM waveform.

- Run mac_software/run.sh to receive and decode the backscattered data.

## Reference
Backscatter Communication Using Commodity Radios<br>
Pengyu Zhang, Colleen Josephson, Dinesh Bharadia, Sachin Katti<br>
CoNEXT 2017<br>