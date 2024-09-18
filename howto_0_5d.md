# HOW TO for  MK-7075UART Interface with Firmware 0.5d

*DIP Switch setting

DIP SW 1 & 2 
 - 00: BAUD 9600
 - 10: BAUD 38400
 - 01: BAUD 57600
 - 11: BAUD 115200

DIP SW 3
 - ON: Talker-mode: Interface send after evering measure cycle value
 - OFF: Listener-mode: Interface responds after commando.

DIP SW 4
 - ON:  Exponent Mode  "+1.0123E+1VDC"
 - OFF:  Normal-Mode  "+10.123VDC"

# SYNTAX

 - *IDN?  -  interface responds with "SOLARTRON 7075 UART 0.5d"
 - READ?  -  interface responds with actual measure value/data
