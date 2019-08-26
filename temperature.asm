lxi h,1150h
lxi b,2250h
mvi c,05h
read: ldax b
cmp m
jnc loop
inx h
inx b
dcr c
jnz read
mvi a,01h
out 00
hlt
loop: mvi a,ffh
out 01
hlt