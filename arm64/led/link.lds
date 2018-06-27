OUTPUT_ARCH(aarch64)  
ENTRY(_start)  
  
SECTIONS{  
    . = 0x40000000;  
    .text : {  
        *(.text)  
        *(.rodata)  
    }  
  
    .data ALIGN(4): {  
        *(.data)  
    }  
  
    .bss ALIGN(4): {  
        *(.bss)  
    }  
}
