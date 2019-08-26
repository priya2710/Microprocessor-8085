lxi sp,2250h
mvi d,aah
loop: mov a,d
rlc
mov d,a
ani 30h
out 00
push psw
lxi h,a2c2h
loop1: dcx h
mov a,l
ora h
jnz loop1
pop psw
jmp loop