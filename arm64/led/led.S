#include <linux/linkage.h>

.text
.global _start
_start:	
	bl debug_led0_on
loop:
	b loop

ENTRY(debug_led0_on)
        ldr     x0, =0x01C20804
        ldr     x1, =0x01C20810
        ldr     x2, [x0]
        ldr     x3, [x1]
       // orr     x2, x2, #0x00000100
        //orr     x3, x3, #0x00000400
        str     x2, [x0]
        str     x3, [x1]

        ret
ENDPROC(debug_led0_on)

ENTRY(debug_led0_off)
        ldr     x0, =0x01C20804
        ldr     x1, =0x01C20810
        ldr     x2, [x0]
        ldr     x3, [x1]
        //orr     x2, x2, #0x00000100
        //and     x3, x3, #0xfffffbff
        str     x2, [x0]
        str     x3, [x1]

        ret
ENDPROC(debug_led0_off)

