.global lab1
.syntax unified
#define a #4
#define b #2
#define c #3

lab1:
  push {lr}
  mov r0, a
  mov r1, b
  mov r2, c
  add r0, r1
  lsr r0, r0, #1
  mov r3, #1
  factorial:
    cmp r2, #1
    beq sum
    mul r3, r2
    sub r2, #1
    bne factorial
  sum:
    add r0, r3
    pop {pc}
