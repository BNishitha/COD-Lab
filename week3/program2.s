.data
num:.byte 0b1101
hamming:.byte 0

.text
la x10,num
lb x11,0(x10)
andi x11,x11,0xF
andi x12,x11,1
srli x13,x11,1
andi x13,x13,1
srli x14,x11,2
andi x14,x14,1
srli x15,x11,3
andi x15,x15,1
xor x16,x12,x13
xor x16,x16,x14
xor x16,x16,x15
andi x16,x16,1
xor x17,x12,x14
xor x17,x17,x15
andi x17,x17,1
xor x18,x13,x14
xor x18,x18,x15
andi x18,x18,1
slli x19,x16,0
slli x20,x17,1
slli x21,x12,2
slli x22,x18,3
slli x23,x13,4
slli x24,x14,5
slli x25,x15,6
or x26,x19,x20
or x26,x26,x21
or x26,x26,x22
or x26,x26,x23
or x26,x26,x24
or x26,x26,x25
la x27,hamming
sb x26,0(x27)