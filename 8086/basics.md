# Categorization of Registers
Registers are a type of computer memory used to quickly accept, store, and transfer data and instructions that are being used immediately by the CPU

### Processor Registers (3)

> General Registers
>    * Data Registers
>    * Pointer Registers
>    * Index Registers
>
> Control Registers \
> Segment Registers
>
> *There are TEN 32-bit and SIX 16-bit Processor Registers*

## AS per the 8086 CPU:

### General Purpose Registers
_Here any kind of data is stored_

32-bit Register
1. EAX
2. EBX
3. ECX
4. EDX

6. EIP
7. EBP
8. ESP

9. ESI
10. EDI

Above registers' _lower 16-bits_ are further splitted into Registers i.e.:

Data Registers:
1. **AX:** Accumulator Register (Devided into AH/AL i.e. 8-bit each)
2. **BX:** Base Address Register (Devided into BH/BL i.e. 8-bit each)
3. **CX:** Count Register (Devided into CH/CL i.e. 8-bit each)
4. **DX:** Data Register (Devided into DH/DL i.e. 8-bit each)

Pointer Registers:
6. **IP:** Instructions Pointer
7. **BP:** Base Pointer
8. **SP:** Stack Pointer

Index Registers:
9. **SI:** Source Index Register
10. **DI:** Destination Index Register

### Control Registers
_These are used for controlling and are mainly termed as Flags_

1. OF
2. DF
3. IF
4. TF
5. SF
6. ZF
7. AF
8. PF
9. CF



### Segment Registers
_These are generally pointers._

1. **CS:** (Code Seg.) Pointes the segment containing current programm
2. **DS:** (Data Seg.) Points segment where variables are defined (usually)
3. **ES:** Extra Segment Register (Programme defines its usage)
4. **SS:** Points the Segment containing the stack


<hr />

Assembly language is NOT case sensitive
## Declaration

#### Models

_.model <type-name>_
> Types:
> .TINY = All data & code **MUST** fit into 64K-byte memory segment.
>         It assembles as DOS.COM and **MUST** use an origin at _0100H_ for code.
> .SMALL = It's a **2** segment with a DATA & a CODE Segment.
>          Have origin of 0000H
> .FLAT = Uses single segment of upto 4GBs .
>         Flat programs are **only** programs, functional in only Windows, those who work with origin of 00000000H.


#### Data Types:

1. _DB (Define Byte)_
2. _DW (Define Word)_
3. _DD (Define DoubleWord)_
4. _DQ (Define QuadWord)_

*Here Byte/Word etc referred to the size allocated*

**Syntax for Variables**
```
Var_Name    Type     Value

A           DB        10              // DB = Data Byte
Message     DB        'Hello!'
Var         DW        1122H           // DW = Data Word, so that larger (hex) value can be stored
Str         DB        "Hi",'$'        // '$' just works as string end (kinda \0)
StrTemp     DB        10,13,"Hi",'$'  // in 8086, 10,13 act for carriage return or kinda \n

```

**Syntax for Arrays**
```
a     DB    1h,2h,3Fh,7Fh     // its an array of hex values i.e. a = [1, 2, 3F, 7F] in hex(h)

b     DW     1111h,2222h,3333h
```

**Syntax for Duplicating data element(s)**

Keyword used for same is DUP and it's mainly used in the array
```
Var_Name      Type      <n: no_of_duplicacies> DUP(Data_to_be_Duplicated)


x   db    3 DUP(5)        // x  db  5,5,5
y   db    2 DUP(3,2)      // y  db  3,2,3,2

arr   DW     10 dup(?)    // An empty array with 10 initial val '0'
```
