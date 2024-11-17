.data
a: .byte 0x18
.text
la x10,a
lbu x11,0(x10)
andi x12,x11,0xE0	      # extracting the most significant 3 bits     	
bne x12,x0,exit		      # checking if MSB bits are zero
addi x22,x0,5		      # counter 
back:
    andi x12,x11,0x01	  # extracting LSB bit  	
    beq x12,x0,next	      # checking if lsb ==0
    addi x23,x23,1	      # if x23 == 2 then the number is 2 out of 5
    next:
       srli x11,x11,1
       addi x22,x22,-1
       bne x22,x0,back
       
    exit:addi x15 x0 0x001