.psx

.create "01-clear_screen.bin", 0x8001000

; Entry point of code
.org 0x8001000

IO_BASE equ 0x1F801000
GP0 equ 0x1810
GP1 equ 0x14

Main:
lui $t0, IO_BASE
li $t1, 0x00000000 ; Reset GPU
sw $t1, GP0($t0) ; Write packet to GP1
li $t1, 0x080000001 ; Display mode (320x240 16bpp)