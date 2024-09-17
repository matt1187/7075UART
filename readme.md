# Project  Solatron 7075 UART remote interface

History: Solartron 70755 GPIB Modul is useless (many people isn't capable to talking with GPIB modul) 
This is why, i make  MK-7075UART interface.

![pictures](https://github.com/matt1187/7075UART/blob/main/pictures/7075UART-1.jpg)

# PCB Revision History 
- MK-7075UART-00 improvement draft from  7075UART-000

# Feartures
- Talker/Listener mode
- Normal/exponent mode (10.123 VDC  / 1.0123E+1 VDC)
- 9600/38400/57600/115200 Baud select
- isolated RS232 interface
- SCPI & IEEE488.2 snytax 

# how to using of interface
- [![howto (LINK) ](https://github.com/matt1187/7075UART/blob/main/howto_0_5d.md)]

  
# Issues 
-  current no  remote function aviable

# notes
- SSD1306 is optional. (actual firmware hasn't function for OLED)
- 74HCT165 on U11 is recommend,  (74LS165, you must modified PCB to adding of 1k Resistor on their output, otherwise, ISCP doesn't work)
- DC/DC converter should be soldered on bottom,  SW6 dip swith should attached with socket.
- U13, U14, U15 is optional (actual firmware doesn't support remote function, this ICs is for remote function )
- Diode D5 is recommend for pcb "engineering sample" for often reprogramming, while Solartron is turned off. Oterhwise, you can placed it with wire (or 0 ohm 2510 resistor)

# Bill of material
- [![csv-file ](https://github.com/matt1187/7075UART/blob/main/gerber/MK-7075UART-000.csv)]
- [![gerber-file ](https://github.com/matt1187/7075UART/blob/main/gerber/gerber.zip)]
- [![3D-print-file ](https://github.com/matt1187/7075UART/blob/main/DDD/DDD.zip)]

# Firmware
- [![atmega 8 firmware](https://github.com/matt1187/7075UART/blob/main/firmware/main 0.5d.hex.zip)]

# License
The project is free for non-commercial reproduction. Do not sell it on Ebay or other platforms for profit. Do not make a closed source derivative. Share your experiences and ideas with the community.

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
