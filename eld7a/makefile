src = assignment7a.c
final = assignment7a.hex
//port=
out = assignment7a.o
bin = assignment7a.elf
comp1 = avr-gcc
comp2 = avrdude
flag1 = -c
flag2 = -o
flag3 = -f

program: $(final)
	sudo $(comp2) -c arduino -p ATMEGA328P -P /dev/ttyUSB0 -b 57600 -U flash:w:$(final)
assignment7a.hex: compile
	avr-objcopy -O ihex $(bin) $(final)
compile: $(out)
	$(comp1) -mmcu=atmega328p -o $(bin) $(out)
$(out) : assignment7a.c
	$(comp1) -mmcu=atmega328p -c $(src) -o $(out)
clean :
	rm -f $(final) $(bin) $(out)
