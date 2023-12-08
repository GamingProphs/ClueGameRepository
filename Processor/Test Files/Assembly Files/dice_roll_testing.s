main:
nop					
nop
nop
addi $t2, $zero, 1		    # r10 = 1 
nop
nop
nop
addi $t3, $zero, 1000		# r11 = 1000 
nop
nop
nop
addi $t7, $zero, 4000       # r15 = 3000 (BTNL)
nop
nop
nop
addi $t6, $zero, 3000       # r14 = 4000 (BTNR)
nop
nop
nop
addi $t1, $zero, 2000		# r9 = 2000 (processor_output)
nop
nop
nop
dice_btn_left_press:        # only for dice roll prompt
nop
nop
nop
lw  $in, 0($t7)		        # r24 = button input
nop
nop
nop
bne $in, $t2, dice_btn_right_press		# check if right button has been pressed
nop                                 
nop
nop                                 # if left button has been pressed, then proceed to dice being rolled
addi $out, $zero, 1                  # processor output = 1
nop
nop
nop
sw $out, 0($t1)
nop
nop
nop
lw $t0, 0($t1)
nop
nop
nop


dice_btn_right_press:
nop
nop
nop
lw $in, 0($t6)                              # r14 = BTNR
nop
nop
nop
bne $in, $t2, dice_btn_left_press         # check if left button has been pressed
nop
nop
nop          
addi $t5, $zero, 2
nop
nop
nop