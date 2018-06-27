CC=aarch64-linux-gnu-gcc
LD=aarch64-linux-gnu-ld
OBJDUMP=aarch64-linux-gnu-objdump
OBJCOPY=aarch64-linux-gnu-objcopy
INC_DIR=../include

all: led.o
	${LD} -Tlink.lds led.o -o led.elf
	${OBJCOPY} -O binary led.elf led.bin


%.o:%.c
	${CC} -Wall -I${INC_DIDR} -c -o $@ $^
%.o:%.S
	${CC} -g -Wall -D__ASSEMBLY__ -I../include -c -o $@ $^
clean:
	rm *.o *.elf *.bin
