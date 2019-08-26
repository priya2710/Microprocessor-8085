lxi sp,2250h
start: mvi a,41h
out 00
mvi b,0fh
call delay
mvi a,84h
out 01
mvi b,05h
call delay
mvi a,90h
out 02
mvi b,14h
call delay
jmp start
delay: push d
push psw
pop psw
pop d
ret
second: lxi d,10h
loop: dcx h
mov a,d
ora e
jnz loop
dcr b
jnz second
