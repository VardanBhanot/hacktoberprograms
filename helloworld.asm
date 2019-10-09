.data
texto: .asciiz "Hola Mundo"
 
.text
.globl main
main:
la $a0, texto
li $v0, 0x00000004
syscall