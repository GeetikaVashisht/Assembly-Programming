; Use of CONSTANTS  < CONSTANT_NAME EQU expression >

; Tyoes:
  ; EQU     :  assigns numeric constants
  ; %assign :  assigns numeric constants
  ; %define :  assigns both numeric and string constants like #define


; they are need noot to be decleared in the data section
SYS_EXIT  equ 1
SYS_WRITE equ 4
STDIN     equ 0
STDOUT    equ 1

; Also:-
; %assign  TOTAL  20
; %define PTR [EBP+4]   ; replaces all PRT with EBP+4


section .text
  global _start

_start:

  ; EQU
  mov  eax,  SYS_WRITE
  mov  ebx,  STDOUT
  mov  ecx,  msg1
  mov  edx,  len1
  int  80h

  mov  eax,  SYS_WRITE
  mov  ebx,  STDOUT
  mov  ecx,  msg2
  mov  edx,  len2
  int  80h

  mov  eax,  SYS_WRITE
  mov  ebx,  STDOUT
  mov  ecx,  msg3
  mov  edx,  len3
  int  80h

  mov  eax,  SYS_EXIT
  int  0x80



section	 .data
  msg1 db	'Hello, programmers!',0xa,0xd   ; 0xd = carriage return ('\r'), Moves cursor at beg. of current row
  len1 equ $ - msg1

  msg2 db 'Welcome to the world of, '
  len2 equ $ - msg2

  msg3 db 'Linux assembly programming! ',0xa,0xd
  len3 equ $- msg3

  s2 times 9 db '*'
