start: mvi a,99h
display: out 00
push psw
call delay
pop psw
adi 99h
daa
jmp display
hlt
lxi h,a2c2h
delay: dcx h
mov a,l
ora h
jnz delay
ret