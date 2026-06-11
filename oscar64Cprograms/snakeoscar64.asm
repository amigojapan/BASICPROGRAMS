; Compiled with 1.32.272
--------------------------------------------------------------------
startup: ; startup
0801 : 0b __ __ INV
0802 : 08 __ __ PHP
0803 : 0a __ __ ASL
0804 : 00 __ __ BRK
0805 : 9e __ __ INV
0806 : 32 __ __ INV
0807 : 30 36 __ BMI $083f ; (startup + 62)
0809 : 31 00 __ AND ($00),y 
080b : 00 __ __ BRK
080c : 00 __ __ BRK
080d : ba __ __ TSX
080e : 8e 30 20 STX $2030 ; (spentry + 0)
0811 : a2 20 __ LDX #$20
0813 : a0 50 __ LDY #$50
0815 : a9 00 __ LDA #$00
0817 : 85 19 __ STA IP + 0 
0819 : 86 1a __ STX IP + 1 
081b : e0 28 __ CPX #$28
081d : f0 0b __ BEQ $082a ; (startup + 41)
081f : 91 19 __ STA (IP + 0),y 
0821 : c8 __ __ INY
0822 : d0 fb __ BNE $081f ; (startup + 30)
0824 : e8 __ __ INX
0825 : d0 f2 __ BNE $0819 ; (startup + 24)
0827 : 91 19 __ STA (IP + 0),y 
0829 : c8 __ __ INY
082a : c0 28 __ CPY #$28
082c : d0 f9 __ BNE $0827 ; (startup + 38)
082e : a9 00 __ LDA #$00
0830 : a2 f7 __ LDX #$f7
0832 : d0 03 __ BNE $0837 ; (startup + 54)
0834 : 95 00 __ STA $00,x 
0836 : e8 __ __ INX
0837 : e0 f7 __ CPX #$f7
0839 : d0 f9 __ BNE $0834 ; (startup + 51)
083b : a9 96 __ LDA #$96
083d : 85 23 __ STA SP + 0 
083f : a9 9f __ LDA #$9f
0841 : 85 24 __ STA SP + 1 
0843 : 20 80 08 JSR $0880 ; (main.s1 + 0)
0846 : a9 4c __ LDA #$4c
0848 : 85 54 __ STA $54 
084a : a9 00 __ LDA #$00
084c : 85 13 __ STA P6 
084e : a9 19 __ LDA #$19
0850 : 85 16 __ STA P9 
0852 : 60 __ __ RTS
--------------------------------------------------------------------
main: ; main()->i16
;  82, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/snakeoscar64.c"
.s1:
0880 : a2 05 __ LDX #$05
0882 : b5 53 __ LDA T5 + 0,x 
0884 : 9d 98 9f STA $9f98,x ; (main@stack + 0)
0887 : ca __ __ DEX
0888 : 10 f8 __ BPL $0882 ; (main.s1 + 2)
.s4:
088a : 20 60 0b JSR $0b60 ; (init.s4 + 0)
.l5:
088d : 20 dd 1a JSR $1add ; (getch.l4 + 0)
0890 : c9 77 __ CMP #$77
0892 : f0 04 __ BEQ $0898 ; (main.s51 + 0)
.s6:
0894 : c9 57 __ CMP #$57
0896 : d0 0f __ BNE $08a7 ; (main.s7 + 0)
.s51:
0898 : a9 00 __ LDA #$00
089a : 85 43 __ STA T0 + 0 
089c : 85 44 __ STA T0 + 1 
089e : a9 ff __ LDA #$ff
.s52:
08a0 : 85 45 __ STA T1 + 0 
08a2 : 85 46 __ STA T1 + 1 
08a4 : 4c df 08 JMP $08df ; (main.s15 + 0)
.s7:
08a7 : c9 73 __ CMP #$73
08a9 : f0 04 __ BEQ $08af ; (main.s50 + 0)
.s8:
08ab : c9 53 __ CMP #$53
08ad : d0 0e __ BNE $08bd ; (main.s9 + 0)
.s50:
08af : a9 00 __ LDA #$00
08b1 : 85 43 __ STA T0 + 0 
08b3 : 85 44 __ STA T0 + 1 
08b5 : 85 46 __ STA T1 + 1 
08b7 : a9 01 __ LDA #$01
08b9 : 85 45 __ STA T1 + 0 
08bb : d0 22 __ BNE $08df ; (main.s15 + 0)
.s9:
08bd : c9 61 __ CMP #$61
08bf : f0 04 __ BEQ $08c5 ; (main.s49 + 0)
.s10:
08c1 : c9 41 __ CMP #$41
08c3 : d0 0a __ BNE $08cf ; (main.s11 + 0)
.s49:
08c5 : a9 ff __ LDA #$ff
08c7 : 85 43 __ STA T0 + 0 
.s14:
08c9 : 85 44 __ STA T0 + 1 
08cb : a9 00 __ LDA #$00
08cd : f0 d1 __ BEQ $08a0 ; (main.s52 + 0)
.s11:
08cf : c9 64 __ CMP #$64
08d1 : f0 04 __ BEQ $08d7 ; (main.s13 + 0)
.s12:
08d3 : c9 44 __ CMP #$44
08d5 : d0 b6 __ BNE $088d ; (main.l5 + 0)
.s13:
08d7 : a9 01 __ LDA #$01
08d9 : 85 43 __ STA T0 + 0 
08db : a9 00 __ LDA #$00
08dd : f0 ea __ BEQ $08c9 ; (main.s14 + 0)
.s15:
08df : ad 52 20 LDA $2052 ; (len + 0)
08e2 : 85 53 __ STA T5 + 0 
08e4 : ad 53 20 LDA $2053 ; (len + 1)
08e7 : 85 54 __ STA T5 + 1 
08e9 : 30 37 __ BMI $0922 ; (main.s16 + 0)
.s48:
08eb : d0 06 __ BNE $08f3 ; (main.s43 + 0)
.s47:
08ed : a5 53 __ LDA T5 + 0 
08ef : c9 02 __ CMP #$02
08f1 : 90 2f __ BCC $0922 ; (main.s16 + 0)
.s43:
08f3 : ad 54 20 LDA $2054 ; (sx[0] + 0)
08f6 : 18 __ __ CLC
08f7 : 65 43 __ ADC T0 + 0 
08f9 : aa __ __ TAX
08fa : ad 55 20 LDA $2055 ; (sx[0] + 1)
08fd : 65 44 __ ADC T0 + 1 
08ff : cd 57 20 CMP $2057 ; (sx[0] + 3)
0902 : d0 1e __ BNE $0922 ; (main.s16 + 0)
.s46:
0904 : ec 56 20 CPX $2056 ; (sx[0] + 2)
0907 : d0 19 __ BNE $0922 ; (main.s16 + 0)
.s44:
0909 : ad 3c 24 LDA $243c ; (sy[0] + 0)
090c : 18 __ __ CLC
090d : 65 45 __ ADC T1 + 0 
090f : aa __ __ TAX
0910 : ad 3d 24 LDA $243d ; (sy[0] + 1)
0913 : 65 46 __ ADC T1 + 1 
0915 : cd 3f 24 CMP $243f ; (sy[0] + 3)
0918 : d0 08 __ BNE $0922 ; (main.s16 + 0)
.s45:
091a : ec 3e 24 CPX $243e ; (sy[0] + 2)
091d : d0 03 __ BNE $0922 ; (main.s16 + 0)
091f : 4c 8d 08 JMP $088d ; (main.l5 + 0)
.s16:
0922 : ad 54 20 LDA $2054 ; (sx[0] + 0)
0925 : 18 __ __ CLC
0926 : 65 43 __ ADC T0 + 0 
0928 : 85 55 __ STA T6 + 0 
092a : ad 55 20 LDA $2055 ; (sx[0] + 1)
092d : 65 44 __ ADC T0 + 1 
092f : 85 56 __ STA T6 + 1 
0931 : 05 55 __ ORA T6 + 0 
0933 : d0 03 __ BNE $0938 ; (main.s17 + 0)
0935 : 4c 36 0b JMP $0b36 ; (main.s31 + 0)
.s17:
0938 : a5 56 __ LDA T6 + 1 
093a : d0 06 __ BNE $0942 ; (main.s18 + 0)
.s42:
093c : a5 55 __ LDA T6 + 0 
093e : c9 27 __ CMP #$27
0940 : f0 f3 __ BEQ $0935 ; (main.s16 + 19)
.s18:
0942 : ad 3c 24 LDA $243c ; (sy[0] + 0)
0945 : 18 __ __ CLC
0946 : 65 45 __ ADC T1 + 0 
0948 : 85 57 __ STA T7 + 0 
094a : ad 3d 24 LDA $243d ; (sy[0] + 1)
094d : 65 46 __ ADC T1 + 1 
094f : 85 58 __ STA T7 + 1 
0951 : 05 57 __ ORA T7 + 0 
0953 : f0 e0 __ BEQ $0935 ; (main.s16 + 19)
.s19:
0955 : a5 58 __ LDA T7 + 1 
0957 : d0 06 __ BNE $095f ; (main.s20 + 0)
.s41:
0959 : a5 57 __ LDA T7 + 0 
095b : c9 16 __ CMP #$16
095d : f0 d6 __ BEQ $0935 ; (main.s16 + 19)
.s20:
095f : a2 00 __ LDX #$00
0961 : 86 43 __ STX T0 + 0 
0963 : 38 __ __ SEC
0964 : a5 53 __ LDA T5 + 0 
0966 : e9 01 __ SBC #$01
0968 : 85 45 __ STA T1 + 0 
096a : a5 54 __ LDA T5 + 1 
096c : e9 00 __ SBC #$00
096e : 85 46 __ STA T1 + 1 
0970 : 30 5b __ BMI $09cd ; (main.s21 + 0)
.s40:
0972 : 05 45 __ ORA T1 + 0 
0974 : f0 57 __ BEQ $09cd ; (main.s21 + 0)
.s32:
0976 : 86 48 __ STX T2 + 1 
0978 : a9 54 __ LDA #$54
097a : 85 4b __ STA T4 + 0 
.l33:
097c : 8a __ __ TXA
097d : 0a __ __ ASL
097e : 85 49 __ STA T3 + 0 
0980 : a8 __ __ TAY
0981 : a5 48 __ LDA T2 + 1 
0983 : 2a __ __ ROL
0984 : 85 4a __ STA T3 + 1 
0986 : 18 __ __ CLC
0987 : 69 20 __ ADC #$20
0989 : 85 4c __ STA T4 + 1 
098b : b1 4b __ LDA (T4 + 0),y 
098d : 85 1b __ STA ACCU + 0 
098f : a5 56 __ LDA T6 + 1 
0991 : c8 __ __ INY
0992 : d1 4b __ CMP (T4 + 0),y 
0994 : d0 26 __ BNE $09bc ; (main.s34 + 0)
.s39:
0996 : a5 1b __ LDA ACCU + 0 
0998 : c5 55 __ CMP T6 + 0 
099a : d0 20 __ BNE $09bc ; (main.s34 + 0)
.s36:
099c : 18 __ __ CLC
099d : a9 3c __ LDA #$3c
099f : 65 49 __ ADC T3 + 0 
09a1 : 85 49 __ STA T3 + 0 
09a3 : a9 24 __ LDA #$24
09a5 : 65 4a __ ADC T3 + 1 
09a7 : 85 4a __ STA T3 + 1 
09a9 : a5 58 __ LDA T7 + 1 
09ab : a0 01 __ LDY #$01
09ad : d1 49 __ CMP (T3 + 0),y 
09af : d0 0b __ BNE $09bc ; (main.s34 + 0)
.s38:
09b1 : a5 57 __ LDA T7 + 0 
09b3 : 88 __ __ DEY
09b4 : d1 49 __ CMP (T3 + 0),y 
09b6 : d0 04 __ BNE $09bc ; (main.s34 + 0)
.s37:
09b8 : a9 01 __ LDA #$01
09ba : 85 43 __ STA T0 + 0 
.s34:
09bc : e8 __ __ INX
09bd : d0 02 __ BNE $09c1 ; (main.s57 + 0)
.s56:
09bf : e6 48 __ INC T2 + 1 
.s57:
09c1 : a5 48 __ LDA T2 + 1 
09c3 : c5 46 __ CMP T1 + 1 
09c5 : 90 b5 __ BCC $097c ; (main.l33 + 0)
.s64:
09c7 : d0 04 __ BNE $09cd ; (main.s21 + 0)
.s35:
09c9 : e4 45 __ CPX T1 + 0 
09cb : 90 af __ BCC $097c ; (main.l33 + 0)
.s21:
09cd : a5 43 __ LDA T0 + 0 
09cf : f0 03 __ BEQ $09d4 ; (main.s22 + 0)
09d1 : 4c 36 0b JMP $0b36 ; (main.s31 + 0)
.s22:
09d4 : a5 56 __ LDA T6 + 1 
09d6 : cd 25 28 CMP $2825 ; (fx + 1)
09d9 : d0 18 __ BNE $09f3 ; (main.s23 + 0)
.s30:
09db : a5 55 __ LDA T6 + 0 
09dd : cd 24 28 CMP $2824 ; (fx + 0)
09e0 : d0 11 __ BNE $09f3 ; (main.s23 + 0)
.s27:
09e2 : a5 58 __ LDA T7 + 1 
09e4 : cd 27 28 CMP $2827 ; (fy + 1)
09e7 : d0 0a __ BNE $09f3 ; (main.s23 + 0)
.s29:
09e9 : a5 57 __ LDA T7 + 0 
09eb : cd 26 28 CMP $2826 ; (fy + 0)
09ee : d0 03 __ BNE $09f3 ; (main.s23 + 0)
09f0 : 4c 07 0b JMP $0b07 ; (main.s28 + 0)
.s23:
09f3 : a5 53 __ LDA T5 + 0 
09f5 : 0a __ __ ASL
09f6 : 85 43 __ STA T0 + 0 
09f8 : a8 __ __ TAY
09f9 : a5 54 __ LDA T5 + 1 
09fb : 2a __ __ ROL
09fc : 85 44 __ STA T0 + 1 
09fe : 18 __ __ CLC
09ff : 69 24 __ ADC #$24
0a01 : 85 48 __ STA T2 + 1 
0a03 : a9 3a __ LDA #$3a
0a05 : 85 47 __ STA T2 + 0 
0a07 : b1 47 __ LDA (T2 + 0),y 
0a09 : aa __ __ TAX
0a0a : 0a __ __ ASL
0a0b : 85 07 __ STA WORK + 4 
0a0d : c8 __ __ INY
0a0e : b1 47 __ LDA (T2 + 0),y 
0a10 : 2a __ __ ROL
0a11 : 06 07 __ ASL WORK + 4 
0a13 : 2a __ __ ROL
0a14 : 85 08 __ STA WORK + 5 
0a16 : 8a __ __ TXA
0a17 : 18 __ __ CLC
0a18 : 65 07 __ ADC WORK + 4 
0a1a : 85 1b __ STA ACCU + 0 
0a1c : a5 08 __ LDA WORK + 5 
0a1e : 71 47 __ ADC (T2 + 0),y 
0a20 : 06 1b __ ASL ACCU + 0 
0a22 : 2a __ __ ROL
0a23 : 06 1b __ ASL ACCU + 0 
0a25 : 2a __ __ ROL
0a26 : 06 1b __ ASL ACCU + 0 
0a28 : 2a __ __ ROL
0a29 : aa __ __ TAX
0a2a : 18 __ __ CLC
0a2b : a9 52 __ LDA #$52
0a2d : 65 43 __ ADC T0 + 0 
0a2f : 85 43 __ STA T0 + 0 
0a31 : a9 20 __ LDA #$20
0a33 : 65 44 __ ADC T0 + 1 
0a35 : 85 44 __ STA T0 + 1 
0a37 : a0 00 __ LDY #$00
0a39 : b1 43 __ LDA (T0 + 0),y 
0a3b : 18 __ __ CLC
0a3c : 65 1b __ ADC ACCU + 0 
0a3e : 85 1b __ STA ACCU + 0 
0a40 : 8a __ __ TXA
0a41 : c8 __ __ INY
0a42 : 71 43 __ ADC (T0 + 0),y 
0a44 : 18 __ __ CLC
0a45 : 69 04 __ ADC #$04
0a47 : 85 44 __ STA T0 + 1 
0a49 : a5 1b __ LDA ACCU + 0 
0a4b : 85 43 __ STA T0 + 0 
0a4d : a9 20 __ LDA #$20
0a4f : 88 __ __ DEY
0a50 : 91 43 __ STA (T0 + 0),y 
0a52 : a5 46 __ LDA T1 + 1 
0a54 : 30 69 __ BMI $0abf ; (main.s24 + 0)
.s26:
0a56 : 05 45 __ ORA T1 + 0 
0a58 : f0 65 __ BEQ $0abf ; (main.s24 + 0)
.s25:
0a5a : a5 45 __ LDA T1 + 0 
0a5c : 0a __ __ ASL
0a5d : 85 43 __ STA T0 + 0 
0a5f : a5 46 __ LDA T1 + 1 
0a61 : 2a __ __ ROL
0a62 : 85 44 __ STA T0 + 1 
0a64 : 18 __ __ CLC
0a65 : a9 52 __ LDA #$52
0a67 : 65 43 __ ADC T0 + 0 
0a69 : 85 47 __ STA T2 + 0 
0a6b : a9 20 __ LDA #$20
0a6d : 65 44 __ ADC T0 + 1 
0a6f : 85 48 __ STA T2 + 1 
0a71 : 18 __ __ CLC
0a72 : a9 3a __ LDA #$3a
0a74 : 65 43 __ ADC T0 + 0 
0a76 : 85 43 __ STA T0 + 0 
0a78 : a9 24 __ LDA #$24
0a7a : 65 44 __ ADC T0 + 1 
0a7c : 85 44 __ STA T0 + 1 
0a7e : a6 45 __ LDX T1 + 0 
0a80 : f0 02 __ BEQ $0a84 ; (main.l54 + 0)
.s53:
0a82 : e6 46 __ INC T1 + 1 
.l54:
0a84 : a0 00 __ LDY #$00
0a86 : b1 47 __ LDA (T2 + 0),y 
0a88 : a0 02 __ LDY #$02
0a8a : 91 47 __ STA (T2 + 0),y 
0a8c : 88 __ __ DEY
0a8d : b1 47 __ LDA (T2 + 0),y 
0a8f : a0 03 __ LDY #$03
0a91 : 91 47 __ STA (T2 + 0),y 
0a93 : a0 00 __ LDY #$00
0a95 : b1 43 __ LDA (T0 + 0),y 
0a97 : a0 02 __ LDY #$02
0a99 : 91 43 __ STA (T0 + 0),y 
0a9b : 88 __ __ DEY
0a9c : b1 43 __ LDA (T0 + 0),y 
0a9e : a0 03 __ LDY #$03
0aa0 : 91 43 __ STA (T0 + 0),y 
0aa2 : 18 __ __ CLC
0aa3 : a5 43 __ LDA T0 + 0 
0aa5 : 69 fe __ ADC #$fe
0aa7 : 85 43 __ STA T0 + 0 
0aa9 : b0 02 __ BCS $0aad ; (main.s59 + 0)
.s58:
0aab : c6 44 __ DEC T0 + 1 
.s59:
0aad : 18 __ __ CLC
0aae : a5 47 __ LDA T2 + 0 
0ab0 : 69 fe __ ADC #$fe
0ab2 : 85 47 __ STA T2 + 0 
0ab4 : b0 02 __ BCS $0ab8 ; (main.s61 + 0)
.s60:
0ab6 : c6 48 __ DEC T2 + 1 
.s61:
0ab8 : ca __ __ DEX
0ab9 : d0 c9 __ BNE $0a84 ; (main.l54 + 0)
.s55:
0abb : c6 46 __ DEC T1 + 1 
0abd : d0 c5 __ BNE $0a84 ; (main.l54 + 0)
.s24:
0abf : a5 57 __ LDA T7 + 0 
0ac1 : 8d 3c 24 STA $243c ; (sy[0] + 0)
0ac4 : 0a __ __ ASL
0ac5 : 85 1b __ STA ACCU + 0 
0ac7 : a5 58 __ LDA T7 + 1 
0ac9 : 8d 3d 24 STA $243d ; (sy[0] + 1)
0acc : 2a __ __ ROL
0acd : 06 1b __ ASL ACCU + 0 
0acf : 2a __ __ ROL
0ad0 : aa __ __ TAX
0ad1 : a5 55 __ LDA T6 + 0 
0ad3 : 8d 54 20 STA $2054 ; (sx[0] + 0)
0ad6 : a5 56 __ LDA T6 + 1 
0ad8 : 8d 55 20 STA $2055 ; (sx[0] + 1)
0adb : 18 __ __ CLC
0adc : a5 1b __ LDA ACCU + 0 
0ade : 65 57 __ ADC T7 + 0 
0ae0 : 85 43 __ STA T0 + 0 
0ae2 : 8a __ __ TXA
0ae3 : 65 58 __ ADC T7 + 1 
0ae5 : 06 43 __ ASL T0 + 0 
0ae7 : 2a __ __ ROL
0ae8 : 06 43 __ ASL T0 + 0 
0aea : 2a __ __ ROL
0aeb : 06 43 __ ASL T0 + 0 
0aed : 2a __ __ ROL
0aee : aa __ __ TAX
0aef : 18 __ __ CLC
0af0 : a5 43 __ LDA T0 + 0 
0af2 : 65 55 __ ADC T6 + 0 
0af4 : 85 43 __ STA T0 + 0 
0af6 : 8a __ __ TXA
0af7 : 65 56 __ ADC T6 + 1 
0af9 : 18 __ __ CLC
0afa : 69 04 __ ADC #$04
0afc : 85 44 __ STA T0 + 1 
0afe : a9 51 __ LDA #$51
0b00 : a0 00 __ LDY #$00
0b02 : 91 43 __ STA (T0 + 0),y 
0b04 : 4c 8d 08 JMP $088d ; (main.l5 + 0)
.s28:
0b07 : a5 53 __ LDA T5 + 0 
0b09 : 69 00 __ ADC #$00
0b0b : 8d 52 20 STA $2052 ; (len + 0)
0b0e : a5 54 __ LDA T5 + 1 
0b10 : 69 00 __ ADC #$00
0b12 : 8d 53 20 STA $2053 ; (len + 1)
0b15 : ad 50 20 LDA $2050 ; (sc + 0)
0b18 : 18 __ __ CLC
0b19 : 69 0a __ ADC #$0a
0b1b : 8d 50 20 STA $2050 ; (sc + 0)
0b1e : 90 03 __ BCC $0b23 ; (main.s63 + 0)
.s62:
0b20 : ee 51 20 INC $2051 ; (sc + 1)
.s63:
0b23 : 20 9f 19 JSR $199f ; (draw_hud.s4 + 0)
0b26 : 20 b7 18 JSR $18b7 ; (spawn_food.s4 + 0)
0b29 : a5 53 __ LDA T5 + 0 
0b2b : 85 45 __ STA T1 + 0 
0b2d : a5 54 __ LDA T5 + 1 
0b2f : 85 46 __ STA T1 + 1 
0b31 : 30 8c __ BMI $0abf ; (main.s24 + 0)
0b33 : 4c 56 0a JMP $0a56 ; (main.s26 + 0)
.s31:
0b36 : a9 00 __ LDA #$00
0b38 : 85 13 __ STA P6 
0b3a : 85 15 __ STA P8 
0b3c : a9 0f __ LDA #$0f
0b3e : 85 12 __ STA P5 
0b40 : a9 0b __ LDA #$0b
0b42 : 85 14 __ STA P7 
0b44 : a9 1b __ LDA #$1b
0b46 : 85 17 __ STA P10 
0b48 : a9 1b __ LDA #$1b
0b4a : 85 16 __ STA P9 
0b4c : 20 35 1a JSR $1a35 ; (draw_text.s4 + 0)
0b4f : a9 00 __ LDA #$00
0b51 : 85 1b __ STA ACCU + 0 
0b53 : 85 1c __ STA ACCU + 1 
.s3:
0b55 : a2 05 __ LDX #$05
0b57 : bd 98 9f LDA $9f98,x ; (main@stack + 0)
0b5a : 95 53 __ STA T5 + 0,x 
0b5c : ca __ __ DEX
0b5d : 10 f8 __ BPL $0b57 ; (main.s3 + 2)
0b5f : 60 __ __ RTS
--------------------------------------------------------------------
init: ; init()->void
;  53, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/snakeoscar64.c"
.s4:
0b60 : a9 00 __ LDA #$00
0b62 : 8d 53 20 STA $2053 ; (len + 1)
0b65 : 8d 50 20 STA $2050 ; (sc + 0)
0b68 : 8d 51 20 STA $2051 ; (sc + 1)
0b6b : a9 39 __ LDA #$39
0b6d : 8d 31 20 STA $2031 ; (seed + 0)
0b70 : a9 30 __ LDA #$30
0b72 : 8d 32 20 STA $2032 ; (seed + 1)
0b75 : a9 04 __ LDA #$04
0b77 : 8d 52 20 STA $2052 ; (len + 0)
0b7a : a9 b5 __ LDA #$b5
0b7c : 8d fa 9f STA $9ffa ; (sstack + 8)
0b7f : a9 18 __ LDA #$18
0b81 : 8d fb 9f STA $9ffb ; (sstack + 9)
0b84 : 20 f9 0b JSR $0bf9 ; (printf.s4 + 0)
0b87 : a2 00 __ LDX #$00
0b89 : 86 45 __ STX T1 + 0 
0b8b : a9 04 __ LDA #$04
0b8d : 85 46 __ STA T1 + 1 
.l5:
0b8f : a0 00 __ LDY #$00
.l6:
0b91 : a9 a0 __ LDA #$a0
0b93 : d0 02 __ BNE $0b97 ; (init.l7 + 0)
.s13:
0b95 : a9 20 __ LDA #$20
.l7:
0b97 : 91 45 __ STA (T1 + 0),y 
0b99 : c8 __ __ INY
0b9a : c0 28 __ CPY #$28
0b9c : b0 0d __ BCS $0bab ; (init.s8 + 0)
.s10:
0b9e : c0 27 __ CPY #$27
0ba0 : f0 ef __ BEQ $0b91 ; (init.l6 + 0)
.s11:
0ba2 : 8a __ __ TXA
0ba3 : f0 ec __ BEQ $0b91 ; (init.l6 + 0)
.s12:
0ba5 : e0 16 __ CPX #$16
0ba7 : d0 ec __ BNE $0b95 ; (init.s13 + 0)
0ba9 : f0 e6 __ BEQ $0b91 ; (init.l6 + 0)
.s8:
0bab : a5 45 __ LDA T1 + 0 
0bad : 69 27 __ ADC #$27
0baf : 85 45 __ STA T1 + 0 
0bb1 : 90 02 __ BCC $0bb5 ; (init.s17 + 0)
.s16:
0bb3 : e6 46 __ INC T1 + 1 
.s17:
0bb5 : e8 __ __ INX
0bb6 : e0 17 __ CPX #$17
0bb8 : 90 d5 __ BCC $0b8f ; (init.l5 + 0)
.s9:
0bba : a9 0a __ LDA #$0a
0bbc : 85 43 __ STA T0 + 0 
0bbe : a9 9a __ LDA #$9a
0bc0 : 85 45 __ STA T1 + 0 
0bc2 : a9 05 __ LDA #$05
0bc4 : 85 46 __ STA T1 + 1 
0bc6 : a0 00 __ LDY #$00
0bc8 : a2 00 __ LDX #$00
.l15:
0bca : a9 51 __ LDA #$51
0bcc : 91 45 __ STA (T1 + 0),y 
0bce : a5 43 __ LDA T0 + 0 
0bd0 : 9d 54 20 STA $2054,x ; (sx[0] + 0)
0bd3 : a9 00 __ LDA #$00
0bd5 : 9d 55 20 STA $2055,x ; (sx[0] + 1)
0bd8 : 9d 3d 24 STA $243d,x ; (sy[0] + 1)
0bdb : a9 0a __ LDA #$0a
0bdd : 9d 3c 24 STA $243c,x ; (sy[0] + 0)
0be0 : 98 __ __ TYA
0be1 : 18 __ __ CLC
0be2 : 69 ff __ ADC #$ff
0be4 : a8 __ __ TAY
0be5 : b0 02 __ BCS $0be9 ; (init.s19 + 0)
.s18:
0be7 : c6 46 __ DEC T1 + 1 
.s19:
0be9 : c6 43 __ DEC T0 + 0 
0beb : a5 43 __ LDA T0 + 0 
0bed : e8 __ __ INX
0bee : e8 __ __ INX
0bef : c9 06 __ CMP #$06
0bf1 : d0 d7 __ BNE $0bca ; (init.l15 + 0)
.s14:
0bf3 : 20 b7 18 JSR $18b7 ; (spawn_food.s4 + 0)
0bf6 : 4c 9f 19 JMP $199f ; (draw_hud.s4 + 0)
--------------------------------------------------------------------
printf: ; printf(const u8*)->void
;  18, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.s4:
0bf9 : a9 01 __ LDA #$01
0bfb : 8d f9 9f STA $9ff9 ; (sstack + 7)
0bfe : a9 9e __ LDA #$9e
0c00 : 8d f3 9f STA $9ff3 ; (sstack + 1)
0c03 : a9 9f __ LDA #$9f
0c05 : 8d f4 9f STA $9ff4 ; (sstack + 2)
0c08 : ad fa 9f LDA $9ffa ; (sstack + 8)
0c0b : 8d f5 9f STA $9ff5 ; (sstack + 3)
0c0e : ad fb 9f LDA $9ffb ; (sstack + 9)
0c11 : 8d f6 9f STA $9ff6 ; (sstack + 4)
0c14 : a9 fc __ LDA #$fc
0c16 : 8d f7 9f STA $9ff7 ; (sstack + 5)
0c19 : a9 9f __ LDA #$9f
0c1b : 8d f8 9f STA $9ff8 ; (sstack + 6)
0c1e : 4c 21 0c JMP $0c21 ; (sformat.s1 + 0)
--------------------------------------------------------------------
sformat: ; sformat(u8*,const u8*,i16*,bool)->u8*
; 351, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s1:
0c21 : a2 09 __ LDX #$09
0c23 : b5 53 __ LDA T1 + 0,x 
0c25 : 9d d0 9f STA $9fd0,x ; (sformat@stack + 0)
0c28 : ca __ __ DEX
0c29 : 10 f8 __ BPL $0c23 ; (sformat.s1 + 2)
.s4:
0c2b : ad f5 9f LDA $9ff5 ; (sstack + 3)
0c2e : 85 55 __ STA T3 + 0 
0c30 : a9 00 __ LDA #$00
0c32 : 85 5b __ STA T6 + 0 
0c34 : ad f6 9f LDA $9ff6 ; (sstack + 4)
0c37 : 85 56 __ STA T3 + 1 
0c39 : ad f3 9f LDA $9ff3 ; (sstack + 1)
0c3c : 85 57 __ STA T4 + 0 
0c3e : ad f4 9f LDA $9ff4 ; (sstack + 2)
0c41 : 85 58 __ STA T4 + 1 
.l5:
0c43 : a0 00 __ LDY #$00
0c45 : b1 55 __ LDA (T3 + 0),y 
0c47 : d0 36 __ BNE $0c7f ; (sformat.s10 + 0)
.s6:
0c49 : a4 5b __ LDY T6 + 0 
0c4b : 91 57 __ STA (T4 + 0),y 
0c4d : 98 __ __ TYA
0c4e : f0 28 __ BEQ $0c78 ; (sformat.s95 + 0)
.s7:
0c50 : ad f9 9f LDA $9ff9 ; (sstack + 7)
0c53 : d0 18 __ BNE $0c6d ; (sformat.s9 + 0)
.s8:
0c55 : 98 __ __ TYA
0c56 : 18 __ __ CLC
0c57 : 65 57 __ ADC T4 + 0 
0c59 : aa __ __ TAX
0c5a : a5 58 __ LDA T4 + 1 
0c5c : 69 00 __ ADC #$00
.s3:
0c5e : 86 1b __ STX ACCU + 0 ; (buff + 1)
0c60 : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0c62 : a2 09 __ LDX #$09
0c64 : bd d0 9f LDA $9fd0,x ; (sformat@stack + 0)
0c67 : 95 53 __ STA T1 + 0,x 
0c69 : ca __ __ DEX
0c6a : 10 f8 __ BPL $0c64 ; (sformat.s3 + 6)
0c6c : 60 __ __ RTS
.s9:
0c6d : a5 57 __ LDA T4 + 0 
0c6f : 85 0e __ STA P1 
0c71 : a5 58 __ LDA T4 + 1 
0c73 : 85 0f __ STA P2 
0c75 : 20 64 10 JSR $1064 ; (puts.l4 + 0)
.s95:
0c78 : a5 58 __ LDA T4 + 1 
0c7a : a6 57 __ LDX T4 + 0 
0c7c : 4c 5e 0c JMP $0c5e ; (sformat.s3 + 0)
.s10:
0c7f : c9 25 __ CMP #$25
0c81 : f0 3e __ BEQ $0cc1 ; (sformat.s15 + 0)
.s11:
0c83 : a4 5b __ LDY T6 + 0 
0c85 : 91 57 __ STA (T4 + 0),y 
0c87 : e6 55 __ INC T3 + 0 
0c89 : d0 02 __ BNE $0c8d ; (sformat.s117 + 0)
.s116:
0c8b : e6 56 __ INC T3 + 1 
.s117:
0c8d : c8 __ __ INY
0c8e : 84 5b __ STY T6 + 0 
0c90 : 98 __ __ TYA
0c91 : c0 28 __ CPY #$28
0c93 : 90 ae __ BCC $0c43 ; (sformat.l5 + 0)
.s12:
0c95 : 85 43 __ STA T0 + 0 
0c97 : a9 00 __ LDA #$00
0c99 : 85 5b __ STA T6 + 0 
0c9b : ad f9 9f LDA $9ff9 ; (sstack + 7)
0c9e : f0 14 __ BEQ $0cb4 ; (sformat.s13 + 0)
.s14:
0ca0 : a5 57 __ LDA T4 + 0 
0ca2 : 85 0e __ STA P1 
0ca4 : a5 58 __ LDA T4 + 1 
0ca6 : 85 0f __ STA P2 
0ca8 : a9 00 __ LDA #$00
0caa : a4 43 __ LDY T0 + 0 
0cac : 91 0e __ STA (P1),y 
0cae : 20 64 10 JSR $1064 ; (puts.l4 + 0)
0cb1 : 4c 43 0c JMP $0c43 ; (sformat.l5 + 0)
.s13:
0cb4 : 18 __ __ CLC
0cb5 : a5 57 __ LDA T4 + 0 
0cb7 : 65 43 __ ADC T0 + 0 
0cb9 : 85 57 __ STA T4 + 0 
0cbb : 90 86 __ BCC $0c43 ; (sformat.l5 + 0)
.s118:
0cbd : e6 58 __ INC T4 + 1 
0cbf : b0 82 __ BCS $0c43 ; (sformat.l5 + 0)
.s15:
0cc1 : a5 5b __ LDA T6 + 0 
0cc3 : f0 27 __ BEQ $0cec ; (sformat.s16 + 0)
.s89:
0cc5 : 84 5b __ STY T6 + 0 
0cc7 : 85 43 __ STA T0 + 0 
0cc9 : ad f9 9f LDA $9ff9 ; (sstack + 7)
0ccc : f0 13 __ BEQ $0ce1 ; (sformat.s90 + 0)
.s91:
0cce : a5 57 __ LDA T4 + 0 
0cd0 : 85 0e __ STA P1 
0cd2 : a5 58 __ LDA T4 + 1 
0cd4 : 85 0f __ STA P2 
0cd6 : 98 __ __ TYA
0cd7 : a4 43 __ LDY T0 + 0 
0cd9 : 91 0e __ STA (P1),y 
0cdb : 20 64 10 JSR $1064 ; (puts.l4 + 0)
0cde : 4c ec 0c JMP $0cec ; (sformat.s16 + 0)
.s90:
0ce1 : 18 __ __ CLC
0ce2 : a5 57 __ LDA T4 + 0 
0ce4 : 65 43 __ ADC T0 + 0 
0ce6 : 85 57 __ STA T4 + 0 
0ce8 : 90 02 __ BCC $0cec ; (sformat.s16 + 0)
.s115:
0cea : e6 58 __ INC T4 + 1 
.s16:
0cec : a9 00 __ LDA #$00
0cee : 8d df 9f STA $9fdf ; (si.sign + 0)
0cf1 : 8d e0 9f STA $9fe0 ; (si.left + 0)
0cf4 : 8d e1 9f STA $9fe1 ; (si.prefix + 0)
0cf7 : a0 01 __ LDY #$01
0cf9 : b1 55 __ LDA (T3 + 0),y 
0cfb : a2 20 __ LDX #$20
0cfd : 8e da 9f STX $9fda ; (si.fill + 0)
0d00 : a2 00 __ LDX #$00
0d02 : 8e db 9f STX $9fdb ; (si.width + 0)
0d05 : ca __ __ DEX
0d06 : 8e dc 9f STX $9fdc ; (si.precision + 0)
0d09 : a2 0a __ LDX #$0a
0d0b : 8e de 9f STX $9fde ; (si.base + 0)
0d0e : aa __ __ TAX
0d0f : a9 02 __ LDA #$02
0d11 : d0 07 __ BNE $0d1a ; (sformat.l17 + 0)
.s85:
0d13 : a0 00 __ LDY #$00
0d15 : b1 55 __ LDA (T3 + 0),y 
0d17 : aa __ __ TAX
0d18 : a9 01 __ LDA #$01
.l17:
0d1a : 18 __ __ CLC
0d1b : 65 55 __ ADC T3 + 0 
0d1d : 85 55 __ STA T3 + 0 
0d1f : 90 02 __ BCC $0d23 ; (sformat.s106 + 0)
.s105:
0d21 : e6 56 __ INC T3 + 1 
.s106:
0d23 : 8a __ __ TXA
0d24 : e0 2b __ CPX #$2b
0d26 : d0 07 __ BNE $0d2f ; (sformat.s18 + 0)
.s88:
0d28 : a9 01 __ LDA #$01
0d2a : 8d df 9f STA $9fdf ; (si.sign + 0)
0d2d : d0 e4 __ BNE $0d13 ; (sformat.s85 + 0)
.s18:
0d2f : c9 30 __ CMP #$30
0d31 : d0 06 __ BNE $0d39 ; (sformat.s19 + 0)
.s87:
0d33 : 8d da 9f STA $9fda ; (si.fill + 0)
0d36 : 4c 13 0d JMP $0d13 ; (sformat.s85 + 0)
.s19:
0d39 : c9 23 __ CMP #$23
0d3b : d0 07 __ BNE $0d44 ; (sformat.s20 + 0)
.s86:
0d3d : a9 01 __ LDA #$01
0d3f : 8d e1 9f STA $9fe1 ; (si.prefix + 0)
0d42 : d0 cf __ BNE $0d13 ; (sformat.s85 + 0)
.s20:
0d44 : c9 2d __ CMP #$2d
0d46 : d0 07 __ BNE $0d4f ; (sformat.s21 + 0)
.s84:
0d48 : a9 01 __ LDA #$01
0d4a : 8d e0 9f STA $9fe0 ; (si.left + 0)
0d4d : d0 c4 __ BNE $0d13 ; (sformat.s85 + 0)
.s21:
0d4f : 85 47 __ STA T2 + 0 
0d51 : c9 30 __ CMP #$30
0d53 : 90 40 __ BCC $0d95 ; (sformat.s22 + 0)
.s80:
0d55 : c9 3a __ CMP #$3a
0d57 : b0 7b __ BCS $0dd4 ; (sformat.s23 + 0)
.s81:
0d59 : a0 00 __ LDY #$00
0d5b : 84 43 __ STY T0 + 0 
0d5d : c9 3a __ CMP #$3a
0d5f : a6 1c __ LDX ACCU + 1 ; (fmt + 0)
0d61 : b0 2b __ BCS $0d8e ; (sformat.s104 + 0)
.l83:
0d63 : a5 43 __ LDA T0 + 0 
0d65 : 0a __ __ ASL
0d66 : 85 1b __ STA ACCU + 0 ; (buff + 1)
0d68 : 98 __ __ TYA
0d69 : 2a __ __ ROL
0d6a : 06 1b __ ASL ACCU + 0 ; (buff + 1)
0d6c : 2a __ __ ROL
0d6d : aa __ __ TAX
0d6e : 18 __ __ CLC
0d6f : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0d71 : 65 43 __ ADC T0 + 0 
0d73 : 0a __ __ ASL
0d74 : 18 __ __ CLC
0d75 : 65 47 __ ADC T2 + 0 
0d77 : 38 __ __ SEC
0d78 : e9 30 __ SBC #$30
0d7a : 85 43 __ STA T0 + 0 
0d7c : b1 55 __ LDA (T3 + 0),y 
0d7e : 85 47 __ STA T2 + 0 
0d80 : e6 55 __ INC T3 + 0 
0d82 : d0 02 __ BNE $0d86 ; (sformat.s114 + 0)
.s113:
0d84 : e6 56 __ INC T3 + 1 
.s114:
0d86 : c9 30 __ CMP #$30
0d88 : 90 04 __ BCC $0d8e ; (sformat.s104 + 0)
.s82:
0d8a : c9 3a __ CMP #$3a
0d8c : 90 d5 __ BCC $0d63 ; (sformat.l83 + 0)
.s104:
0d8e : 86 1c __ STX ACCU + 1 ; (fmt + 0)
0d90 : a6 43 __ LDX T0 + 0 
0d92 : 8e db 9f STX $9fdb ; (si.width + 0)
.s22:
0d95 : c9 2e __ CMP #$2e
0d97 : d0 3b __ BNE $0dd4 ; (sformat.s23 + 0)
.s76:
0d99 : a9 00 __ LDA #$00
0d9b : a6 1c __ LDX ACCU + 1 ; (fmt + 0)
0d9d : 4c b7 0d JMP $0db7 ; (sformat.l77 + 0)
.s79:
0da0 : a5 43 __ LDA T0 + 0 
0da2 : 0a __ __ ASL
0da3 : 85 1b __ STA ACCU + 0 ; (buff + 1)
0da5 : 98 __ __ TYA
0da6 : 2a __ __ ROL
0da7 : 06 1b __ ASL ACCU + 0 ; (buff + 1)
0da9 : 2a __ __ ROL
0daa : aa __ __ TAX
0dab : 18 __ __ CLC
0dac : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0dae : 65 43 __ ADC T0 + 0 
0db0 : 0a __ __ ASL
0db1 : 18 __ __ CLC
0db2 : 65 47 __ ADC T2 + 0 
0db4 : 38 __ __ SEC
0db5 : e9 30 __ SBC #$30
.l77:
0db7 : 85 43 __ STA T0 + 0 
0db9 : a0 00 __ LDY #$00
0dbb : b1 55 __ LDA (T3 + 0),y 
0dbd : 85 47 __ STA T2 + 0 
0dbf : e6 55 __ INC T3 + 0 
0dc1 : d0 02 __ BNE $0dc5 ; (sformat.s108 + 0)
.s107:
0dc3 : e6 56 __ INC T3 + 1 
.s108:
0dc5 : c9 30 __ CMP #$30
0dc7 : 90 04 __ BCC $0dcd ; (sformat.s103 + 0)
.s78:
0dc9 : c9 3a __ CMP #$3a
0dcb : 90 d3 __ BCC $0da0 ; (sformat.s79 + 0)
.s103:
0dcd : 86 1c __ STX ACCU + 1 ; (fmt + 0)
0dcf : a6 43 __ LDX T0 + 0 
0dd1 : 8e dc 9f STX $9fdc ; (si.precision + 0)
.s23:
0dd4 : c9 64 __ CMP #$64
0dd6 : f0 0c __ BEQ $0de4 ; (sformat.s75 + 0)
.s24:
0dd8 : c9 44 __ CMP #$44
0dda : f0 08 __ BEQ $0de4 ; (sformat.s75 + 0)
.s25:
0ddc : c9 69 __ CMP #$69
0dde : f0 04 __ BEQ $0de4 ; (sformat.s75 + 0)
.s26:
0de0 : c9 49 __ CMP #$49
0de2 : d0 07 __ BNE $0deb ; (sformat.s27 + 0)
.s75:
0de4 : a9 01 __ LDA #$01
.s93:
0de6 : 85 13 __ STA P6 
0de8 : 4c 2a 10 JMP $102a ; (sformat.s73 + 0)
.s27:
0deb : c9 75 __ CMP #$75
0ded : f0 04 __ BEQ $0df3 ; (sformat.s74 + 0)
.s28:
0def : c9 55 __ CMP #$55
0df1 : d0 04 __ BNE $0df7 ; (sformat.s29 + 0)
.s74:
0df3 : a9 00 __ LDA #$00
0df5 : f0 ef __ BEQ $0de6 ; (sformat.s93 + 0)
.s29:
0df7 : c9 78 __ CMP #$78
0df9 : f0 04 __ BEQ $0dff ; (sformat.s72 + 0)
.s30:
0dfb : c9 58 __ CMP #$58
0dfd : d0 13 __ BNE $0e12 ; (sformat.s31 + 0)
.s72:
0dff : 29 e0 __ AND #$e0
0e01 : 09 01 __ ORA #$01
0e03 : 8d dd 9f STA $9fdd ; (si.cha + 0)
0e06 : a9 00 __ LDA #$00
0e08 : 85 13 __ STA P6 
0e0a : a9 10 __ LDA #$10
0e0c : 8d de 9f STA $9fde ; (si.base + 0)
0e0f : 4c 2a 10 JMP $102a ; (sformat.s73 + 0)
.s31:
0e12 : c9 6c __ CMP #$6c
0e14 : d0 03 __ BNE $0e19 ; (sformat.s32 + 0)
0e16 : 4c 9b 0f JMP $0f9b ; (sformat.s60 + 0)
.s32:
0e19 : c9 4c __ CMP #$4c
0e1b : f0 f9 __ BEQ $0e16 ; (sformat.s31 + 4)
.s33:
0e1d : c9 66 __ CMP #$66
0e1f : f0 14 __ BEQ $0e35 ; (sformat.s59 + 0)
.s34:
0e21 : c9 67 __ CMP #$67
0e23 : f0 10 __ BEQ $0e35 ; (sformat.s59 + 0)
.s35:
0e25 : c9 65 __ CMP #$65
0e27 : f0 0c __ BEQ $0e35 ; (sformat.s59 + 0)
.s36:
0e29 : c9 46 __ CMP #$46
0e2b : f0 08 __ BEQ $0e35 ; (sformat.s59 + 0)
.s37:
0e2d : c9 47 __ CMP #$47
0e2f : f0 04 __ BEQ $0e35 ; (sformat.s59 + 0)
.s38:
0e31 : c9 45 __ CMP #$45
0e33 : d0 5c __ BNE $0e91 ; (sformat.s39 + 0)
.s59:
0e35 : a5 57 __ LDA T4 + 0 
0e37 : 85 13 __ STA P6 
0e39 : a5 58 __ LDA T4 + 1 
0e3b : 85 14 __ STA P7 
0e3d : a5 47 __ LDA T2 + 0 
0e3f : 29 e0 __ AND #$e0
0e41 : 09 01 __ ORA #$01
0e43 : 8d dd 9f STA $9fdd ; (si.cha + 0)
0e46 : ad f7 9f LDA $9ff7 ; (sstack + 5)
0e49 : 85 59 __ STA T5 + 0 
0e4b : a9 da __ LDA #$da
0e4d : 85 11 __ STA P4 
0e4f : a9 9f __ LDA #$9f
0e51 : 85 12 __ STA P5 
0e53 : ad f8 9f LDA $9ff8 ; (sstack + 6)
0e56 : 85 5a __ STA T5 + 1 
0e58 : a0 00 __ LDY #$00
0e5a : b1 59 __ LDA (T5 + 0),y 
0e5c : 85 15 __ STA P8 
0e5e : c8 __ __ INY
0e5f : b1 59 __ LDA (T5 + 0),y 
0e61 : 85 16 __ STA P9 
0e63 : c8 __ __ INY
0e64 : b1 59 __ LDA (T5 + 0),y 
0e66 : 85 17 __ STA P10 
0e68 : c8 __ __ INY
0e69 : b1 59 __ LDA (T5 + 0),y 
0e6b : 85 18 __ STA P11 
0e6d : a5 47 __ LDA T2 + 0 
0e6f : ed dd 9f SBC $9fdd ; (si.cha + 0)
0e72 : 18 __ __ CLC
0e73 : 69 61 __ ADC #$61
0e75 : 8d f2 9f STA $9ff2 ; (sstack + 0)
0e78 : 20 3f 13 JSR $133f ; (nformf.s1 + 0)
0e7b : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0e7d : 85 5b __ STA T6 + 0 
0e7f : 18 __ __ CLC
0e80 : a5 59 __ LDA T5 + 0 
0e82 : 69 04 __ ADC #$04
0e84 : 8d f7 9f STA $9ff7 ; (sstack + 5)
0e87 : a5 5a __ LDA T5 + 1 
0e89 : 69 00 __ ADC #$00
0e8b : 8d f8 9f STA $9ff8 ; (sstack + 6)
0e8e : 4c 43 0c JMP $0c43 ; (sformat.l5 + 0)
.s39:
0e91 : c9 73 __ CMP #$73
0e93 : f0 3b __ BEQ $0ed0 ; (sformat.s47 + 0)
.s40:
0e95 : c9 53 __ CMP #$53
0e97 : f0 37 __ BEQ $0ed0 ; (sformat.s47 + 0)
.s41:
0e99 : c9 63 __ CMP #$63
0e9b : f0 12 __ BEQ $0eaf ; (sformat.s46 + 0)
.s42:
0e9d : c9 43 __ CMP #$43
0e9f : f0 0e __ BEQ $0eaf ; (sformat.s46 + 0)
.s43:
0ea1 : aa __ __ TAX
0ea2 : f0 ea __ BEQ $0e8e ; (sformat.s59 + 89)
.s44:
0ea4 : a0 00 __ LDY #$00
0ea6 : 91 57 __ STA (T4 + 0),y 
.s45:
0ea8 : a9 01 __ LDA #$01
.s96:
0eaa : 85 5b __ STA T6 + 0 
0eac : 4c 43 0c JMP $0c43 ; (sformat.l5 + 0)
.s46:
0eaf : ad f7 9f LDA $9ff7 ; (sstack + 5)
0eb2 : 85 43 __ STA T0 + 0 
0eb4 : ad f8 9f LDA $9ff8 ; (sstack + 6)
0eb7 : 85 44 __ STA T0 + 1 
0eb9 : a0 00 __ LDY #$00
0ebb : b1 43 __ LDA (T0 + 0),y 
0ebd : 91 57 __ STA (T4 + 0),y 
0ebf : a5 43 __ LDA T0 + 0 
0ec1 : 69 01 __ ADC #$01
0ec3 : 8d f7 9f STA $9ff7 ; (sstack + 5)
0ec6 : a5 44 __ LDA T0 + 1 
0ec8 : 69 00 __ ADC #$00
0eca : 8d f8 9f STA $9ff8 ; (sstack + 6)
0ecd : 4c a8 0e JMP $0ea8 ; (sformat.s45 + 0)
.s47:
0ed0 : ad f7 9f LDA $9ff7 ; (sstack + 5)
0ed3 : 85 43 __ STA T0 + 0 
0ed5 : 69 01 __ ADC #$01
0ed7 : 8d f7 9f STA $9ff7 ; (sstack + 5)
0eda : ad f8 9f LDA $9ff8 ; (sstack + 6)
0edd : 85 44 __ STA T0 + 1 
0edf : 69 00 __ ADC #$00
0ee1 : 8d f8 9f STA $9ff8 ; (sstack + 6)
0ee4 : a0 00 __ LDY #$00
0ee6 : 84 5c __ STY T7 + 0 
0ee8 : b1 43 __ LDA (T0 + 0),y 
0eea : 85 1b __ STA ACCU + 0 ; (buff + 1)
0eec : 85 53 __ STA T1 + 0 
0eee : c8 __ __ INY
0eef : b1 43 __ LDA (T0 + 0),y 
0ef1 : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0ef3 : 85 54 __ STA T1 + 1 
0ef5 : ad db 9f LDA $9fdb ; (si.width + 0)
0ef8 : f0 0c __ BEQ $0f06 ; (sformat.s48 + 0)
.s100:
0efa : 88 __ __ DEY
0efb : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
0efd : f0 05 __ BEQ $0f04 ; (sformat.s101 + 0)
.l58:
0eff : c8 __ __ INY
0f00 : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
0f02 : d0 fb __ BNE $0eff ; (sformat.l58 + 0)
.s101:
0f04 : 84 5c __ STY T7 + 0 
.s48:
0f06 : ad e0 9f LDA $9fe0 ; (si.left + 0)
0f09 : 85 59 __ STA T5 + 0 
0f0b : d0 19 __ BNE $0f26 ; (sformat.s49 + 0)
.s98:
0f0d : a6 5c __ LDX T7 + 0 
0f0f : ec db 9f CPX $9fdb ; (si.width + 0)
0f12 : a0 00 __ LDY #$00
0f14 : b0 0c __ BCS $0f22 ; (sformat.s99 + 0)
.l57:
0f16 : ad da 9f LDA $9fda ; (si.fill + 0)
0f19 : 91 57 __ STA (T4 + 0),y 
0f1b : c8 __ __ INY
0f1c : e8 __ __ INX
0f1d : ec db 9f CPX $9fdb ; (si.width + 0)
0f20 : 90 f4 __ BCC $0f16 ; (sformat.l57 + 0)
.s99:
0f22 : 86 5c __ STX T7 + 0 
0f24 : 84 5b __ STY T6 + 0 
.s49:
0f26 : ac f9 9f LDY $9ff9 ; (sstack + 7)
0f29 : d0 48 __ BNE $0f73 ; (sformat.s54 + 0)
.s50:
0f2b : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
0f2d : f0 23 __ BEQ $0f52 ; (sformat.s51 + 0)
.s53:
0f2f : 18 __ __ CLC
0f30 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0f32 : 69 01 __ ADC #$01
0f34 : 85 43 __ STA T0 + 0 
0f36 : a5 1c __ LDA ACCU + 1 ; (fmt + 0)
0f38 : 69 00 __ ADC #$00
0f3a : 85 44 __ STA T0 + 1 
0f3c : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
.l92:
0f3e : a4 5b __ LDY T6 + 0 
0f40 : 91 57 __ STA (T4 + 0),y 
0f42 : e6 5b __ INC T6 + 0 
0f44 : a0 00 __ LDY #$00
0f46 : b1 43 __ LDA (T0 + 0),y 
0f48 : a8 __ __ TAY
0f49 : e6 43 __ INC T0 + 0 
0f4b : d0 02 __ BNE $0f4f ; (sformat.s112 + 0)
.s111:
0f4d : e6 44 __ INC T0 + 1 
.s112:
0f4f : 98 __ __ TYA
0f50 : d0 ec __ BNE $0f3e ; (sformat.l92 + 0)
.s51:
0f52 : a5 59 __ LDA T5 + 0 
0f54 : d0 03 __ BNE $0f59 ; (sformat.s97 + 0)
0f56 : 4c 43 0c JMP $0c43 ; (sformat.l5 + 0)
.s97:
0f59 : a6 5c __ LDX T7 + 0 
0f5b : ec db 9f CPX $9fdb ; (si.width + 0)
0f5e : a4 5b __ LDY T6 + 0 
0f60 : b0 0c __ BCS $0f6e ; (sformat.s102 + 0)
.l52:
0f62 : ad da 9f LDA $9fda ; (si.fill + 0)
0f65 : 91 57 __ STA (T4 + 0),y 
0f67 : c8 __ __ INY
0f68 : e8 __ __ INX
0f69 : ec db 9f CPX $9fdb ; (si.width + 0)
0f6c : 90 f4 __ BCC $0f62 ; (sformat.l52 + 0)
.s102:
0f6e : 84 5b __ STY T6 + 0 
0f70 : 4c 43 0c JMP $0c43 ; (sformat.l5 + 0)
.s54:
0f73 : a4 5b __ LDY T6 + 0 
0f75 : f0 11 __ BEQ $0f88 ; (sformat.s55 + 0)
.s56:
0f77 : a5 57 __ LDA T4 + 0 
0f79 : 85 0e __ STA P1 
0f7b : a5 58 __ LDA T4 + 1 
0f7d : 85 0f __ STA P2 
0f7f : a9 00 __ LDA #$00
0f81 : 85 5b __ STA T6 + 0 
0f83 : 91 0e __ STA (P1),y 
0f85 : 20 64 10 JSR $1064 ; (puts.l4 + 0)
.s55:
0f88 : a5 53 __ LDA T1 + 0 
0f8a : 85 0e __ STA P1 
0f8c : a5 54 __ LDA T1 + 1 
0f8e : 85 0f __ STA P2 
0f90 : 20 64 10 JSR $1064 ; (puts.l4 + 0)
0f93 : ad e0 9f LDA $9fe0 ; (si.left + 0)
0f96 : d0 c1 __ BNE $0f59 ; (sformat.s97 + 0)
0f98 : 4c 43 0c JMP $0c43 ; (sformat.l5 + 0)
.s60:
0f9b : ad f7 9f LDA $9ff7 ; (sstack + 5)
0f9e : 85 43 __ STA T0 + 0 
0fa0 : 69 03 __ ADC #$03
0fa2 : 8d f7 9f STA $9ff7 ; (sstack + 5)
0fa5 : ad f8 9f LDA $9ff8 ; (sstack + 6)
0fa8 : 85 44 __ STA T0 + 1 
0faa : 69 00 __ ADC #$00
0fac : 8d f8 9f STA $9ff8 ; (sstack + 6)
0faf : a0 00 __ LDY #$00
0fb1 : b1 55 __ LDA (T3 + 0),y 
0fb3 : aa __ __ TAX
0fb4 : e6 55 __ INC T3 + 0 
0fb6 : d0 02 __ BNE $0fba ; (sformat.s110 + 0)
.s109:
0fb8 : e6 56 __ INC T3 + 1 
.s110:
0fba : b1 43 __ LDA (T0 + 0),y 
0fbc : 85 1b __ STA ACCU + 0 ; (buff + 1)
0fbe : 85 11 __ STA P4 
0fc0 : a0 01 __ LDY #$01
0fc2 : b1 43 __ LDA (T0 + 0),y 
0fc4 : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0fc6 : 85 12 __ STA P5 
0fc8 : c8 __ __ INY
0fc9 : b1 43 __ LDA (T0 + 0),y 
0fcb : 85 1d __ STA ACCU + 2 ; (fmt + 1)
0fcd : 85 13 __ STA P6 
0fcf : c8 __ __ INY
0fd0 : b1 43 __ LDA (T0 + 0),y 
0fd2 : 85 14 __ STA P7 
0fd4 : e0 64 __ CPX #$64
0fd6 : f0 0c __ BEQ $0fe4 ; (sformat.s71 + 0)
.s61:
0fd8 : e0 44 __ CPX #$44
0fda : f0 08 __ BEQ $0fe4 ; (sformat.s71 + 0)
.s62:
0fdc : e0 69 __ CPX #$69
0fde : f0 04 __ BEQ $0fe4 ; (sformat.s71 + 0)
.s63:
0fe0 : e0 49 __ CPX #$49
0fe2 : d0 1c __ BNE $1000 ; (sformat.s64 + 0)
.s71:
0fe4 : a9 01 __ LDA #$01
.s94:
0fe6 : 85 15 __ STA P8 
.s69:
0fe8 : a5 57 __ LDA T4 + 0 
0fea : 85 0f __ STA P2 
0fec : a5 58 __ LDA T4 + 1 
0fee : 85 10 __ STA P3 
0ff0 : a9 da __ LDA #$da
0ff2 : 85 0d __ STA P0 
0ff4 : a9 9f __ LDA #$9f
0ff6 : 85 0e __ STA P1 
0ff8 : 20 f5 11 JSR $11f5 ; (nforml.s4 + 0)
0ffb : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0ffd : 4c aa 0e JMP $0eaa ; (sformat.s96 + 0)
.s64:
1000 : e0 75 __ CPX #$75
1002 : f0 04 __ BEQ $1008 ; (sformat.s70 + 0)
.s65:
1004 : e0 55 __ CPX #$55
1006 : d0 04 __ BNE $100c ; (sformat.s66 + 0)
.s70:
1008 : a9 00 __ LDA #$00
100a : f0 da __ BEQ $0fe6 ; (sformat.s94 + 0)
.s66:
100c : e0 78 __ CPX #$78
100e : f0 06 __ BEQ $1016 ; (sformat.s68 + 0)
.s67:
1010 : 85 1e __ STA ACCU + 3 ; (fps + 0)
1012 : e0 58 __ CPX #$58
1014 : d0 82 __ BNE $0f98 ; (sformat.s55 + 16)
.s68:
1016 : a9 00 __ LDA #$00
1018 : 85 15 __ STA P8 
101a : a9 10 __ LDA #$10
101c : 8d de 9f STA $9fde ; (si.base + 0)
101f : 8a __ __ TXA
1020 : 29 e0 __ AND #$e0
1022 : 09 01 __ ORA #$01
1024 : 8d dd 9f STA $9fdd ; (si.cha + 0)
1027 : 4c e8 0f JMP $0fe8 ; (sformat.s69 + 0)
.s73:
102a : a5 57 __ LDA T4 + 0 
102c : 85 0f __ STA P2 
102e : a5 58 __ LDA T4 + 1 
1030 : 85 10 __ STA P3 
1032 : ad f7 9f LDA $9ff7 ; (sstack + 5)
1035 : 85 43 __ STA T0 + 0 
1037 : ad f8 9f LDA $9ff8 ; (sstack + 6)
103a : 85 44 __ STA T0 + 1 
103c : a0 00 __ LDY #$00
103e : b1 43 __ LDA (T0 + 0),y 
1040 : 85 11 __ STA P4 
1042 : c8 __ __ INY
1043 : b1 43 __ LDA (T0 + 0),y 
1045 : 85 12 __ STA P5 
1047 : 18 __ __ CLC
1048 : a5 43 __ LDA T0 + 0 
104a : 69 02 __ ADC #$02
104c : 8d f7 9f STA $9ff7 ; (sstack + 5)
104f : a5 44 __ LDA T0 + 1 
1051 : 69 00 __ ADC #$00
1053 : 8d f8 9f STA $9ff8 ; (sstack + 6)
1056 : a9 da __ LDA #$da
1058 : 85 0d __ STA P0 
105a : a9 9f __ LDA #$9f
105c : 85 0e __ STA P1 
105e : 20 da 10 JSR $10da ; (nformi.s4 + 0)
1061 : 4c aa 0e JMP $0eaa ; (sformat.s96 + 0)
--------------------------------------------------------------------
puts: ; puts(const u8*)->void
;  12, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.l4:
1064 : a0 00 __ LDY #$00
1066 : b1 0e __ LDA (P1),y ; (str + 0)
1068 : d0 01 __ BNE $106b ; (puts.s5 + 0)
.s3:
106a : 60 __ __ RTS
.s5:
106b : e6 0e __ INC P1 ; (str + 0)
106d : d0 02 __ BNE $1071 ; (puts.s7 + 0)
.s6:
106f : e6 0f __ INC P2 ; (str + 1)
.s7:
1071 : 20 77 10 JSR $1077 ; (putpch.s4 + 0)
1074 : 4c 64 10 JMP $1064 ; (puts.l4 + 0)
--------------------------------------------------------------------
putpch: ; putpch(u8)->void
;  69, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.s4:
1077 : 85 0d __ STA P0 ; (c + 0)
1079 : ad 33 20 LDA $2033 ; (giocharmap + 0)
107c : f0 32 __ BEQ $10b0 ; (putpch.s5 + 0)
.s6:
107e : a5 0d __ LDA P0 ; (c + 0)
1080 : c9 0a __ CMP #$0a
1082 : d0 04 __ BNE $1088 ; (putpch.s7 + 0)
.s18:
1084 : a9 0d __ LDA #$0d
1086 : d0 32 __ BNE $10ba ; (putpch.s15 + 0)
.s7:
1088 : c9 09 __ CMP #$09
108a : f0 36 __ BEQ $10c2 ; (putpch.s16 + 0)
.s8:
108c : ad 33 20 LDA $2033 ; (giocharmap + 0)
108f : c9 02 __ CMP #$02
1091 : 90 1d __ BCC $10b0 ; (putpch.s5 + 0)
.s9:
1093 : a5 0d __ LDA P0 ; (c + 0)
1095 : c9 41 __ CMP #$41
1097 : 90 17 __ BCC $10b0 ; (putpch.s5 + 0)
.s10:
1099 : c9 7b __ CMP #$7b
109b : b0 13 __ BCS $10b0 ; (putpch.s5 + 0)
.s11:
109d : c9 61 __ CMP #$61
109f : b0 04 __ BCS $10a5 ; (putpch.s13 + 0)
.s12:
10a1 : c9 5b __ CMP #$5b
10a3 : b0 0b __ BCS $10b0 ; (putpch.s5 + 0)
.s13:
10a5 : 49 20 __ EOR #$20
10a7 : 85 0d __ STA P0 ; (c + 0)
10a9 : ad 33 20 LDA $2033 ; (giocharmap + 0)
10ac : c9 02 __ CMP #$02
10ae : f0 06 __ BEQ $10b6 ; (putpch.s14 + 0)
.s5:
10b0 : a5 0d __ LDA P0 ; (c + 0)
10b2 : 20 d2 ff JSR $ffd2 
.s3:
10b5 : 60 __ __ RTS
.s14:
10b6 : a5 0d __ LDA P0 ; (c + 0)
10b8 : 29 5f __ AND #$5f
.s15:
10ba : 85 43 __ STA T0 + 0 
10bc : a5 43 __ LDA T0 + 0 
10be : 20 d2 ff JSR $ffd2 
10c1 : 60 __ __ RTS
.s16:
10c2 : a5 d3 __ LDA $d3 
10c4 : 29 03 __ AND #$03
10c6 : 85 43 __ STA T0 + 0 
10c8 : a9 20 __ LDA #$20
10ca : 85 44 __ STA T1 + 0 
.l17:
10cc : a5 44 __ LDA T1 + 0 
10ce : 20 d2 ff JSR $ffd2 
10d1 : e6 43 __ INC T0 + 0 
10d3 : a5 43 __ LDA T0 + 0 
10d5 : c9 04 __ CMP #$04
10d7 : 90 f3 __ BCC $10cc ; (putpch.l17 + 0)
10d9 : 60 __ __ RTS
--------------------------------------------------------------------
nformi: ; nformi(const struct sinfo*,u8*,i16,bool)->u8
;  79, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s4:
10da : a9 00 __ LDA #$00
10dc : 85 43 __ STA T5 + 0 
10de : a0 04 __ LDY #$04
10e0 : b1 0d __ LDA (P0),y ; (si + 0)
10e2 : 85 44 __ STA T6 + 0 
10e4 : a5 13 __ LDA P6 ; (s + 0)
10e6 : f0 13 __ BEQ $10fb ; (nformi.s5 + 0)
.s33:
10e8 : 24 12 __ BIT P5 ; (v + 1)
10ea : 10 0f __ BPL $10fb ; (nformi.s5 + 0)
.s34:
10ec : 38 __ __ SEC
10ed : a9 00 __ LDA #$00
10ef : e5 11 __ SBC P4 ; (v + 0)
10f1 : 85 11 __ STA P4 ; (v + 0)
10f3 : a9 00 __ LDA #$00
10f5 : e5 12 __ SBC P5 ; (v + 1)
10f7 : 85 12 __ STA P5 ; (v + 1)
10f9 : e6 43 __ INC T5 + 0 
.s5:
10fb : a9 10 __ LDA #$10
10fd : 85 45 __ STA T7 + 0 
10ff : a5 11 __ LDA P4 ; (v + 0)
1101 : 05 12 __ ORA P5 ; (v + 1)
1103 : f0 33 __ BEQ $1138 ; (nformi.s6 + 0)
.s28:
1105 : a5 11 __ LDA P4 ; (v + 0)
1107 : 85 1b __ STA ACCU + 0 
1109 : a5 12 __ LDA P5 ; (v + 1)
110b : 85 1c __ STA ACCU + 1 
.l29:
110d : a5 44 __ LDA T6 + 0 
110f : 85 03 __ STA WORK + 0 
1111 : a9 00 __ LDA #$00
1113 : 85 04 __ STA WORK + 1 
1115 : 20 08 1e JSR $1e08 ; (divmod + 0)
1118 : a5 05 __ LDA WORK + 2 
111a : c9 0a __ CMP #$0a
111c : b0 04 __ BCS $1122 ; (nformi.s32 + 0)
.s30:
111e : a9 30 __ LDA #$30
1120 : 90 06 __ BCC $1128 ; (nformi.s31 + 0)
.s32:
1122 : a0 03 __ LDY #$03
1124 : b1 0d __ LDA (P0),y ; (si + 0)
1126 : e9 0a __ SBC #$0a
.s31:
1128 : 18 __ __ CLC
1129 : 65 05 __ ADC WORK + 2 
112b : a6 45 __ LDX T7 + 0 
112d : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
1130 : c6 45 __ DEC T7 + 0 
1132 : a5 1b __ LDA ACCU + 0 
1134 : 05 1c __ ORA ACCU + 1 
1136 : d0 d5 __ BNE $110d ; (nformi.l29 + 0)
.s6:
1138 : a0 02 __ LDY #$02
113a : b1 0d __ LDA (P0),y ; (si + 0)
113c : c9 ff __ CMP #$ff
113e : d0 04 __ BNE $1144 ; (nformi.s27 + 0)
.s7:
1140 : a9 0f __ LDA #$0f
1142 : d0 05 __ BNE $1149 ; (nformi.s39 + 0)
.s27:
1144 : 38 __ __ SEC
1145 : a9 10 __ LDA #$10
1147 : f1 0d __ SBC (P0),y ; (si + 0)
.s39:
1149 : c5 45 __ CMP T7 + 0 
114b : b0 0e __ BCS $115b ; (nformi.s8 + 0)
.s26:
114d : a8 __ __ TAY
114e : a9 30 __ LDA #$30
.l40:
1150 : a6 45 __ LDX T7 + 0 
1152 : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
1155 : c6 45 __ DEC T7 + 0 
1157 : c4 45 __ CPY T7 + 0 
1159 : 90 f5 __ BCC $1150 ; (nformi.l40 + 0)
.s8:
115b : a0 07 __ LDY #$07
115d : b1 0d __ LDA (P0),y ; (si + 0)
115f : f0 1c __ BEQ $117d ; (nformi.s9 + 0)
.s24:
1161 : a5 44 __ LDA T6 + 0 
1163 : c9 10 __ CMP #$10
1165 : d0 16 __ BNE $117d ; (nformi.s9 + 0)
.s25:
1167 : a0 03 __ LDY #$03
1169 : b1 0d __ LDA (P0),y ; (si + 0)
116b : a8 __ __ TAY
116c : a9 30 __ LDA #$30
116e : a6 45 __ LDX T7 + 0 
1170 : 9d e0 9f STA $9fe0,x ; (si.left + 0)
1173 : 98 __ __ TYA
1174 : 69 16 __ ADC #$16
1176 : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
1179 : ca __ __ DEX
117a : ca __ __ DEX
117b : 86 45 __ STX T7 + 0 
.s9:
117d : a9 00 __ LDA #$00
117f : 85 1b __ STA ACCU + 0 
1181 : a5 43 __ LDA T5 + 0 
1183 : f0 0c __ BEQ $1191 ; (nformi.s10 + 0)
.s23:
1185 : a9 2d __ LDA #$2d
.s22:
1187 : a6 45 __ LDX T7 + 0 
1189 : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
118c : c6 45 __ DEC T7 + 0 
118e : 4c 9b 11 JMP $119b ; (nformi.s11 + 0)
.s10:
1191 : a0 05 __ LDY #$05
1193 : b1 0d __ LDA (P0),y ; (si + 0)
1195 : f0 04 __ BEQ $119b ; (nformi.s11 + 0)
.s21:
1197 : a9 2b __ LDA #$2b
1199 : d0 ec __ BNE $1187 ; (nformi.s22 + 0)
.s11:
119b : a0 06 __ LDY #$06
119d : a6 45 __ LDX T7 + 0 
119f : b1 0d __ LDA (P0),y ; (si + 0)
11a1 : d0 2b __ BNE $11ce ; (nformi.s17 + 0)
.l12:
11a3 : 8a __ __ TXA
11a4 : 18 __ __ CLC
11a5 : a0 01 __ LDY #$01
11a7 : 71 0d __ ADC (P0),y ; (si + 0)
11a9 : b0 04 __ BCS $11af ; (nformi.s15 + 0)
.s16:
11ab : c9 11 __ CMP #$11
11ad : 90 0a __ BCC $11b9 ; (nformi.s13 + 0)
.s15:
11af : a0 00 __ LDY #$00
11b1 : b1 0d __ LDA (P0),y ; (si + 0)
11b3 : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
11b6 : ca __ __ DEX
11b7 : b0 ea __ BCS $11a3 ; (nformi.l12 + 0)
.s13:
11b9 : e0 10 __ CPX #$10
11bb : b0 0e __ BCS $11cb ; (nformi.s41 + 0)
.s14:
11bd : 88 __ __ DEY
.l37:
11be : bd e2 9f LDA $9fe2,x ; (buffer[0] + 0)
11c1 : 91 0f __ STA (P2),y ; (str + 0)
11c3 : c8 __ __ INY
11c4 : e8 __ __ INX
11c5 : e0 10 __ CPX #$10
11c7 : 90 f5 __ BCC $11be ; (nformi.l37 + 0)
.s38:
11c9 : 84 1b __ STY ACCU + 0 
.s41:
11cb : a5 1b __ LDA ACCU + 0 
.s3:
11cd : 60 __ __ RTS
.s17:
11ce : e0 10 __ CPX #$10
11d0 : b0 1a __ BCS $11ec ; (nformi.l18 + 0)
.s20:
11d2 : a0 00 __ LDY #$00
.l35:
11d4 : bd e2 9f LDA $9fe2,x ; (buffer[0] + 0)
11d7 : 91 0f __ STA (P2),y ; (str + 0)
11d9 : c8 __ __ INY
11da : e8 __ __ INX
11db : e0 10 __ CPX #$10
11dd : 90 f5 __ BCC $11d4 ; (nformi.l35 + 0)
.s36:
11df : 84 1b __ STY ACCU + 0 
11e1 : b0 09 __ BCS $11ec ; (nformi.l18 + 0)
.s19:
11e3 : 88 __ __ DEY
11e4 : b1 0d __ LDA (P0),y ; (si + 0)
11e6 : a4 1b __ LDY ACCU + 0 
11e8 : 91 0f __ STA (P2),y ; (str + 0)
11ea : e6 1b __ INC ACCU + 0 
.l18:
11ec : a5 1b __ LDA ACCU + 0 
11ee : a0 01 __ LDY #$01
11f0 : d1 0d __ CMP (P0),y ; (si + 0)
11f2 : 90 ef __ BCC $11e3 ; (nformi.s19 + 0)
11f4 : 60 __ __ RTS
--------------------------------------------------------------------
nforml: ; nforml(const struct sinfo*,u8*,i32,bool)->u8
; 137, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s4:
11f5 : a9 00 __ LDA #$00
11f7 : 85 43 __ STA T4 + 0 
11f9 : a5 15 __ LDA P8 ; (s + 0)
11fb : f0 1f __ BEQ $121c ; (nforml.s5 + 0)
.s35:
11fd : 24 14 __ BIT P7 ; (v + 3)
11ff : 10 1b __ BPL $121c ; (nforml.s5 + 0)
.s36:
1201 : 38 __ __ SEC
1202 : a9 00 __ LDA #$00
1204 : e5 11 __ SBC P4 ; (v + 0)
1206 : 85 11 __ STA P4 ; (v + 0)
1208 : a9 00 __ LDA #$00
120a : e5 12 __ SBC P5 ; (v + 1)
120c : 85 12 __ STA P5 ; (v + 1)
120e : a9 00 __ LDA #$00
1210 : e5 13 __ SBC P6 ; (v + 2)
1212 : 85 13 __ STA P6 ; (v + 2)
1214 : a9 00 __ LDA #$00
1216 : e5 14 __ SBC P7 ; (v + 3)
1218 : 85 14 __ STA P7 ; (v + 3)
121a : e6 43 __ INC T4 + 0 
.s5:
121c : a9 10 __ LDA #$10
121e : 85 44 __ STA T5 + 0 
1220 : a5 14 __ LDA P7 ; (v + 3)
1222 : f0 03 __ BEQ $1227 ; (nforml.s31 + 0)
1224 : 4c ef 12 JMP $12ef ; (nforml.l28 + 0)
.s31:
1227 : a5 13 __ LDA P6 ; (v + 2)
1229 : d0 f9 __ BNE $1224 ; (nforml.s5 + 8)
.s32:
122b : a5 12 __ LDA P5 ; (v + 1)
122d : d0 f5 __ BNE $1224 ; (nforml.s5 + 8)
.s33:
122f : c5 11 __ CMP P4 ; (v + 0)
1231 : 90 f1 __ BCC $1224 ; (nforml.s5 + 8)
.s6:
1233 : a0 02 __ LDY #$02
1235 : b1 0d __ LDA (P0),y ; (si + 0)
1237 : c9 ff __ CMP #$ff
1239 : d0 04 __ BNE $123f ; (nforml.s27 + 0)
.s7:
123b : a9 0f __ LDA #$0f
123d : d0 05 __ BNE $1244 ; (nforml.s41 + 0)
.s27:
123f : 38 __ __ SEC
1240 : a9 10 __ LDA #$10
1242 : f1 0d __ SBC (P0),y ; (si + 0)
.s41:
1244 : c5 44 __ CMP T5 + 0 
1246 : b0 0e __ BCS $1256 ; (nforml.s8 + 0)
.s26:
1248 : a8 __ __ TAY
1249 : a9 30 __ LDA #$30
.l42:
124b : a6 44 __ LDX T5 + 0 
124d : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
1250 : c6 44 __ DEC T5 + 0 
1252 : c4 44 __ CPY T5 + 0 
1254 : 90 f5 __ BCC $124b ; (nforml.l42 + 0)
.s8:
1256 : a0 07 __ LDY #$07
1258 : b1 0d __ LDA (P0),y ; (si + 0)
125a : f0 1d __ BEQ $1279 ; (nforml.s9 + 0)
.s24:
125c : a0 04 __ LDY #$04
125e : b1 0d __ LDA (P0),y ; (si + 0)
1260 : c9 10 __ CMP #$10
1262 : d0 15 __ BNE $1279 ; (nforml.s9 + 0)
.s25:
1264 : 88 __ __ DEY
1265 : b1 0d __ LDA (P0),y ; (si + 0)
1267 : a8 __ __ TAY
1268 : a9 30 __ LDA #$30
126a : a6 44 __ LDX T5 + 0 
126c : 9d e0 9f STA $9fe0,x ; (si.left + 0)
126f : 98 __ __ TYA
1270 : 69 16 __ ADC #$16
1272 : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
1275 : ca __ __ DEX
1276 : ca __ __ DEX
1277 : 86 44 __ STX T5 + 0 
.s9:
1279 : a9 00 __ LDA #$00
127b : 85 1b __ STA ACCU + 0 
127d : a5 43 __ LDA T4 + 0 
127f : f0 0c __ BEQ $128d ; (nforml.s10 + 0)
.s23:
1281 : a9 2d __ LDA #$2d
.s22:
1283 : a6 44 __ LDX T5 + 0 
1285 : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
1288 : c6 44 __ DEC T5 + 0 
128a : 4c 97 12 JMP $1297 ; (nforml.s11 + 0)
.s10:
128d : a0 05 __ LDY #$05
128f : b1 0d __ LDA (P0),y ; (si + 0)
1291 : f0 04 __ BEQ $1297 ; (nforml.s11 + 0)
.s21:
1293 : a9 2b __ LDA #$2b
1295 : d0 ec __ BNE $1283 ; (nforml.s22 + 0)
.s11:
1297 : a6 44 __ LDX T5 + 0 
1299 : a0 06 __ LDY #$06
129b : b1 0d __ LDA (P0),y ; (si + 0)
129d : d0 29 __ BNE $12c8 ; (nforml.s17 + 0)
.l12:
129f : 8a __ __ TXA
12a0 : 18 __ __ CLC
12a1 : a0 01 __ LDY #$01
12a3 : 71 0d __ ADC (P0),y ; (si + 0)
12a5 : b0 04 __ BCS $12ab ; (nforml.s15 + 0)
.s16:
12a7 : c9 11 __ CMP #$11
12a9 : 90 0a __ BCC $12b5 ; (nforml.s13 + 0)
.s15:
12ab : a0 00 __ LDY #$00
12ad : b1 0d __ LDA (P0),y ; (si + 0)
12af : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
12b2 : ca __ __ DEX
12b3 : b0 ea __ BCS $129f ; (nforml.l12 + 0)
.s13:
12b5 : e0 10 __ CPX #$10
12b7 : b0 0e __ BCS $12c7 ; (nforml.s3 + 0)
.s14:
12b9 : 88 __ __ DEY
.l39:
12ba : bd e2 9f LDA $9fe2,x ; (buffer[0] + 0)
12bd : 91 0f __ STA (P2),y ; (str + 0)
12bf : c8 __ __ INY
12c0 : e8 __ __ INX
12c1 : e0 10 __ CPX #$10
12c3 : 90 f5 __ BCC $12ba ; (nforml.l39 + 0)
.s40:
12c5 : 84 1b __ STY ACCU + 0 
.s3:
12c7 : 60 __ __ RTS
.s17:
12c8 : e0 10 __ CPX #$10
12ca : b0 1a __ BCS $12e6 ; (nforml.l18 + 0)
.s20:
12cc : a0 00 __ LDY #$00
.l37:
12ce : bd e2 9f LDA $9fe2,x ; (buffer[0] + 0)
12d1 : 91 0f __ STA (P2),y ; (str + 0)
12d3 : c8 __ __ INY
12d4 : e8 __ __ INX
12d5 : e0 10 __ CPX #$10
12d7 : 90 f5 __ BCC $12ce ; (nforml.l37 + 0)
.s38:
12d9 : 84 1b __ STY ACCU + 0 
12db : b0 09 __ BCS $12e6 ; (nforml.l18 + 0)
.s19:
12dd : 88 __ __ DEY
12de : b1 0d __ LDA (P0),y ; (si + 0)
12e0 : a4 1b __ LDY ACCU + 0 
12e2 : 91 0f __ STA (P2),y ; (str + 0)
12e4 : e6 1b __ INC ACCU + 0 
.l18:
12e6 : a5 1b __ LDA ACCU + 0 
12e8 : a0 01 __ LDY #$01
12ea : d1 0d __ CMP (P0),y ; (si + 0)
12ec : 90 ef __ BCC $12dd ; (nforml.s19 + 0)
12ee : 60 __ __ RTS
.l28:
12ef : a0 04 __ LDY #$04
12f1 : b1 0d __ LDA (P0),y ; (si + 0)
12f3 : 85 03 __ STA WORK + 0 
12f5 : a5 11 __ LDA P4 ; (v + 0)
12f7 : 85 1b __ STA ACCU + 0 
12f9 : a5 12 __ LDA P5 ; (v + 1)
12fb : 85 1c __ STA ACCU + 1 
12fd : a5 13 __ LDA P6 ; (v + 2)
12ff : 85 1d __ STA ACCU + 2 
1301 : a5 14 __ LDA P7 ; (v + 3)
1303 : 85 1e __ STA ACCU + 3 
1305 : a9 00 __ LDA #$00
1307 : 85 04 __ STA WORK + 1 
1309 : 85 05 __ STA WORK + 2 
130b : 85 06 __ STA WORK + 3 
130d : 20 49 1f JSR $1f49 ; (divmod32 + 0)
1310 : a5 07 __ LDA WORK + 4 
1312 : c9 0a __ CMP #$0a
1314 : b0 04 __ BCS $131a ; (nforml.s34 + 0)
.s29:
1316 : a9 30 __ LDA #$30
1318 : 90 06 __ BCC $1320 ; (nforml.s30 + 0)
.s34:
131a : a0 03 __ LDY #$03
131c : b1 0d __ LDA (P0),y ; (si + 0)
131e : e9 0a __ SBC #$0a
.s30:
1320 : 18 __ __ CLC
1321 : 65 07 __ ADC WORK + 4 
1323 : a6 44 __ LDX T5 + 0 
1325 : 9d e1 9f STA $9fe1,x ; (si.prefix + 0)
1328 : c6 44 __ DEC T5 + 0 
132a : a5 1b __ LDA ACCU + 0 
132c : 85 11 __ STA P4 ; (v + 0)
132e : a5 1c __ LDA ACCU + 1 
1330 : 85 12 __ STA P5 ; (v + 1)
1332 : a5 1d __ LDA ACCU + 2 
1334 : 85 13 __ STA P6 ; (v + 2)
1336 : a5 1e __ LDA ACCU + 3 
1338 : 85 14 __ STA P7 ; (v + 3)
133a : d0 b3 __ BNE $12ef ; (nforml.l28 + 0)
133c : 4c 27 12 JMP $1227 ; (nforml.s31 + 0)
--------------------------------------------------------------------
nformf: ; nformf(const struct sinfo*,u8*,float,u8)->u8
; 199, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s1:
133f : a2 03 __ LDX #$03
1341 : b5 53 __ LDA T7 + 0,x 
1343 : 9d e9 9f STA $9fe9,x ; (nformf@stack + 0)
1346 : ca __ __ DEX
1347 : 10 f8 __ BPL $1341 ; (nformf.s1 + 2)
.s4:
1349 : a5 16 __ LDA P9 ; (f + 1)
134b : 85 44 __ STA T0 + 1 
134d : a5 17 __ LDA P10 ; (f + 2)
134f : 85 45 __ STA T0 + 2 
1351 : a5 18 __ LDA P11 ; (f + 3)
1353 : 29 7f __ AND #$7f
1355 : 05 17 __ ORA P10 ; (f + 2)
1357 : 05 16 __ ORA P9 ; (f + 1)
1359 : 05 15 __ ORA P8 ; (f + 0)
135b : f0 21 __ BEQ $137e ; (nformf.s5 + 0)
.s107:
135d : 24 18 __ BIT P11 ; (f + 3)
135f : 10 1d __ BPL $137e ; (nformf.s5 + 0)
.s106:
1361 : a9 2d __ LDA #$2d
1363 : a0 00 __ LDY #$00
1365 : 91 13 __ STA (P6),y ; (str + 0)
1367 : a5 18 __ LDA P11 ; (f + 3)
1369 : 49 80 __ EOR #$80
136b : 85 10 __ STA P3 
136d : 85 18 __ STA P11 ; (f + 3)
136f : a5 15 __ LDA P8 ; (f + 0)
1371 : 85 0d __ STA P0 
1373 : a5 16 __ LDA P9 ; (f + 1)
1375 : 85 0e __ STA P1 
1377 : a5 17 __ LDA P10 ; (f + 2)
1379 : 85 0f __ STA P2 
137b : 4c 95 18 JMP $1895 ; (nformf.s104 + 0)
.s5:
137e : a5 15 __ LDA P8 ; (f + 0)
1380 : 85 0d __ STA P0 
1382 : a5 16 __ LDA P9 ; (f + 1)
1384 : 85 0e __ STA P1 
1386 : a5 17 __ LDA P10 ; (f + 2)
1388 : 85 0f __ STA P2 
138a : a5 18 __ LDA P11 ; (f + 3)
138c : 85 10 __ STA P3 
138e : a0 05 __ LDY #$05
1390 : b1 11 __ LDA (P4),y ; (si + 0)
1392 : f0 09 __ BEQ $139d ; (nformf.s6 + 0)
.s103:
1394 : a9 2b __ LDA #$2b
1396 : a0 00 __ LDY #$00
1398 : 91 13 __ STA (P6),y ; (str + 0)
139a : 4c 95 18 JMP $1895 ; (nformf.s104 + 0)
.s6:
139d : 20 a6 18 JSR $18a6 ; (isinf.s4 + 0)
13a0 : a2 00 __ LDX #$00
13a2 : 86 54 __ STX T9 + 0 
13a4 : a8 __ __ TAY
13a5 : f0 05 __ BEQ $13ac ; (nformf.s7 + 0)
.s101:
13a7 : a9 02 __ LDA #$02
13a9 : 4c 5c 18 JMP $185c ; (nformf.s102 + 0)
.s7:
13ac : a5 11 __ LDA P4 ; (si + 0)
13ae : 85 4b __ STA T2 + 0 
13b0 : a5 12 __ LDA P5 ; (si + 1)
13b2 : 85 4c __ STA T2 + 1 
13b4 : a0 02 __ LDY #$02
13b6 : b1 11 __ LDA (P4),y ; (si + 0)
13b8 : c9 ff __ CMP #$ff
13ba : d0 02 __ BNE $13be ; (nformf.s100 + 0)
.s8:
13bc : a9 06 __ LDA #$06
.s100:
13be : 85 4d __ STA T3 + 0 
13c0 : 85 52 __ STA T6 + 0 
13c2 : a9 00 __ LDA #$00
13c4 : 85 4f __ STA T4 + 0 
13c6 : 85 50 __ STA T4 + 1 
13c8 : a5 18 __ LDA P11 ; (f + 3)
13ca : 85 46 __ STA T0 + 3 
13cc : 29 7f __ AND #$7f
13ce : 05 17 __ ORA P10 ; (f + 2)
13d0 : 05 16 __ ORA P9 ; (f + 1)
13d2 : a6 15 __ LDX P8 ; (f + 0)
13d4 : 86 43 __ STX T0 + 0 
13d6 : 05 15 __ ORA P8 ; (f + 0)
13d8 : d0 03 __ BNE $13dd ; (nformf.s67 + 0)
13da : 4c 11 15 JMP $1511 ; (nformf.s9 + 0)
.s67:
13dd : a5 18 __ LDA P11 ; (f + 3)
13df : 10 03 __ BPL $13e4 ; (nformf.s95 + 0)
13e1 : 4c 63 14 JMP $1463 ; (nformf.l80 + 0)
.s95:
13e4 : c9 44 __ CMP #$44
13e6 : d0 0d __ BNE $13f5 ; (nformf.l99 + 0)
.s96:
13e8 : a5 17 __ LDA P10 ; (f + 2)
13ea : c9 7a __ CMP #$7a
13ec : d0 07 __ BNE $13f5 ; (nformf.l99 + 0)
.s97:
13ee : a5 16 __ LDA P9 ; (f + 1)
13f0 : d0 03 __ BNE $13f5 ; (nformf.l99 + 0)
.s98:
13f2 : 8a __ __ TXA
13f3 : f0 02 __ BEQ $13f7 ; (nformf.l90 + 0)
.l99:
13f5 : 90 54 __ BCC $144b ; (nformf.s68 + 0)
.l90:
13f7 : 18 __ __ CLC
13f8 : a5 4f __ LDA T4 + 0 
13fa : 69 03 __ ADC #$03
13fc : 85 4f __ STA T4 + 0 
13fe : 90 02 __ BCC $1402 ; (nformf.s121 + 0)
.s120:
1400 : e6 50 __ INC T4 + 1 
.s121:
1402 : a5 43 __ LDA T0 + 0 
1404 : 85 1b __ STA ACCU + 0 
1406 : a5 44 __ LDA T0 + 1 
1408 : 85 1c __ STA ACCU + 1 
140a : a5 45 __ LDA T0 + 2 
140c : 85 1d __ STA ACCU + 2 
140e : a5 46 __ LDA T0 + 3 
1410 : 85 1e __ STA ACCU + 3 
1412 : a9 00 __ LDA #$00
1414 : 85 03 __ STA WORK + 0 
1416 : 85 04 __ STA WORK + 1 
1418 : a9 7a __ LDA #$7a
141a : 85 05 __ STA WORK + 2 
141c : a9 44 __ LDA #$44
141e : 85 06 __ STA WORK + 3 
1420 : 20 3a 1b JSR $1b3a ; (freg + 20)
1423 : 20 20 1d JSR $1d20 ; (crt_fdiv + 0)
1426 : a5 1b __ LDA ACCU + 0 
1428 : 85 43 __ STA T0 + 0 
142a : a5 1c __ LDA ACCU + 1 
142c : 85 44 __ STA T0 + 1 
142e : a6 1d __ LDX ACCU + 2 
1430 : 86 45 __ STX T0 + 2 
1432 : a5 1e __ LDA ACCU + 3 
1434 : 85 46 __ STA T0 + 3 
1436 : 30 13 __ BMI $144b ; (nformf.s68 + 0)
.s91:
1438 : c9 44 __ CMP #$44
143a : d0 b9 __ BNE $13f5 ; (nformf.l99 + 0)
.s92:
143c : e0 7a __ CPX #$7a
143e : d0 b5 __ BNE $13f5 ; (nformf.l99 + 0)
.s93:
1440 : a5 1c __ LDA ACCU + 1 
1442 : 38 __ __ SEC
1443 : d0 b0 __ BNE $13f5 ; (nformf.l99 + 0)
.s94:
1445 : a5 1b __ LDA ACCU + 0 
1447 : f0 ae __ BEQ $13f7 ; (nformf.l90 + 0)
1449 : d0 aa __ BNE $13f5 ; (nformf.l99 + 0)
.s68:
144b : a5 46 __ LDA T0 + 3 
144d : 30 14 __ BMI $1463 ; (nformf.l80 + 0)
.s86:
144f : c9 3f __ CMP #$3f
1451 : d0 0e __ BNE $1461 ; (nformf.s85 + 0)
.s87:
1453 : a5 45 __ LDA T0 + 2 
1455 : c9 80 __ CMP #$80
1457 : d0 08 __ BNE $1461 ; (nformf.s85 + 0)
.s88:
1459 : a5 44 __ LDA T0 + 1 
145b : d0 04 __ BNE $1461 ; (nformf.s85 + 0)
.s89:
145d : a5 43 __ LDA T0 + 0 
145f : f0 49 __ BEQ $14aa ; (nformf.s69 + 0)
.s85:
1461 : b0 47 __ BCS $14aa ; (nformf.s69 + 0)
.l80:
1463 : 38 __ __ SEC
1464 : a5 4f __ LDA T4 + 0 
1466 : e9 03 __ SBC #$03
1468 : 85 4f __ STA T4 + 0 
146a : b0 02 __ BCS $146e ; (nformf.s116 + 0)
.s115:
146c : c6 50 __ DEC T4 + 1 
.s116:
146e : a9 00 __ LDA #$00
1470 : 85 1b __ STA ACCU + 0 
1472 : 85 1c __ STA ACCU + 1 
1474 : a9 7a __ LDA #$7a
1476 : 85 1d __ STA ACCU + 2 
1478 : a9 44 __ LDA #$44
147a : 85 1e __ STA ACCU + 3 
147c : a2 43 __ LDX #$43
147e : 20 2a 1b JSR $1b2a ; (freg + 4)
1481 : 20 58 1c JSR $1c58 ; (crt_fmul + 0)
1484 : a5 1b __ LDA ACCU + 0 
1486 : 85 43 __ STA T0 + 0 
1488 : a5 1c __ LDA ACCU + 1 
148a : 85 44 __ STA T0 + 1 
148c : a6 1d __ LDX ACCU + 2 
148e : 86 45 __ STX T0 + 2 
1490 : a5 1e __ LDA ACCU + 3 
1492 : 85 46 __ STA T0 + 3 
1494 : 30 cd __ BMI $1463 ; (nformf.l80 + 0)
.s81:
1496 : c9 3f __ CMP #$3f
1498 : 90 c9 __ BCC $1463 ; (nformf.l80 + 0)
.s122:
149a : d0 0e __ BNE $14aa ; (nformf.s69 + 0)
.s82:
149c : e0 80 __ CPX #$80
149e : 90 c3 __ BCC $1463 ; (nformf.l80 + 0)
.s123:
14a0 : d0 08 __ BNE $14aa ; (nformf.s69 + 0)
.s83:
14a2 : a5 1c __ LDA ACCU + 1 
14a4 : d0 bb __ BNE $1461 ; (nformf.s85 + 0)
.s84:
14a6 : a5 1b __ LDA ACCU + 0 
14a8 : d0 b7 __ BNE $1461 ; (nformf.s85 + 0)
.s69:
14aa : a5 46 __ LDA T0 + 3 
14ac : 30 63 __ BMI $1511 ; (nformf.s9 + 0)
.s75:
14ae : c9 41 __ CMP #$41
14b0 : d0 0e __ BNE $14c0 ; (nformf.l79 + 0)
.s76:
14b2 : a5 45 __ LDA T0 + 2 
14b4 : c9 20 __ CMP #$20
14b6 : d0 08 __ BNE $14c0 ; (nformf.l79 + 0)
.s77:
14b8 : a5 44 __ LDA T0 + 1 
14ba : d0 04 __ BNE $14c0 ; (nformf.l79 + 0)
.s78:
14bc : a5 43 __ LDA T0 + 0 
14be : f0 02 __ BEQ $14c2 ; (nformf.l70 + 0)
.l79:
14c0 : 90 4f __ BCC $1511 ; (nformf.s9 + 0)
.l70:
14c2 : e6 4f __ INC T4 + 0 
14c4 : d0 02 __ BNE $14c8 ; (nformf.s119 + 0)
.s118:
14c6 : e6 50 __ INC T4 + 1 
.s119:
14c8 : a5 43 __ LDA T0 + 0 
14ca : 85 1b __ STA ACCU + 0 
14cc : a5 44 __ LDA T0 + 1 
14ce : 85 1c __ STA ACCU + 1 
14d0 : a5 45 __ LDA T0 + 2 
14d2 : 85 1d __ STA ACCU + 2 
14d4 : a5 46 __ LDA T0 + 3 
14d6 : 85 1e __ STA ACCU + 3 
14d8 : a9 00 __ LDA #$00
14da : 85 03 __ STA WORK + 0 
14dc : 85 04 __ STA WORK + 1 
14de : a9 20 __ LDA #$20
14e0 : 85 05 __ STA WORK + 2 
14e2 : a9 41 __ LDA #$41
14e4 : 85 06 __ STA WORK + 3 
14e6 : 20 3a 1b JSR $1b3a ; (freg + 20)
14e9 : 20 20 1d JSR $1d20 ; (crt_fdiv + 0)
14ec : a5 1b __ LDA ACCU + 0 
14ee : 85 43 __ STA T0 + 0 
14f0 : a5 1c __ LDA ACCU + 1 
14f2 : 85 44 __ STA T0 + 1 
14f4 : a6 1d __ LDX ACCU + 2 
14f6 : 86 45 __ STX T0 + 2 
14f8 : a5 1e __ LDA ACCU + 3 
14fa : 85 46 __ STA T0 + 3 
14fc : 30 13 __ BMI $1511 ; (nformf.s9 + 0)
.s71:
14fe : c9 41 __ CMP #$41
1500 : d0 be __ BNE $14c0 ; (nformf.l79 + 0)
.s72:
1502 : e0 20 __ CPX #$20
1504 : d0 ba __ BNE $14c0 ; (nformf.l79 + 0)
.s73:
1506 : a5 1c __ LDA ACCU + 1 
1508 : 38 __ __ SEC
1509 : d0 b5 __ BNE $14c0 ; (nformf.l79 + 0)
.s74:
150b : a5 1b __ LDA ACCU + 0 
150d : f0 b3 __ BEQ $14c2 ; (nformf.l70 + 0)
150f : d0 af __ BNE $14c0 ; (nformf.l79 + 0)
.s9:
1511 : ad f2 9f LDA $9ff2 ; (sstack + 0)
1514 : c9 65 __ CMP #$65
1516 : d0 04 __ BNE $151c ; (nformf.s11 + 0)
.s10:
1518 : a9 01 __ LDA #$01
151a : d0 02 __ BNE $151e ; (nformf.s12 + 0)
.s11:
151c : a9 00 __ LDA #$00
.s12:
151e : 85 55 __ STA T10 + 0 
1520 : a6 4d __ LDX T3 + 0 
1522 : e8 __ __ INX
1523 : 86 51 __ STX T5 + 0 
1525 : ad f2 9f LDA $9ff2 ; (sstack + 0)
1528 : c9 67 __ CMP #$67
152a : d0 13 __ BNE $153f ; (nformf.s13 + 0)
.s63:
152c : a5 50 __ LDA T4 + 1 
152e : 30 08 __ BMI $1538 ; (nformf.s64 + 0)
.s66:
1530 : d0 06 __ BNE $1538 ; (nformf.s64 + 0)
.s65:
1532 : a5 4f __ LDA T4 + 0 
1534 : c9 04 __ CMP #$04
1536 : 90 07 __ BCC $153f ; (nformf.s13 + 0)
.s64:
1538 : a9 01 __ LDA #$01
153a : 85 55 __ STA T10 + 0 
153c : 4c c2 17 JMP $17c2 ; (nformf.s53 + 0)
.s13:
153f : a5 55 __ LDA T10 + 0 
1541 : d0 f9 __ BNE $153c ; (nformf.s64 + 4)
.s14:
1543 : 24 50 __ BIT T4 + 1 
1545 : 10 43 __ BPL $158a ; (nformf.s15 + 0)
.s52:
1547 : a5 43 __ LDA T0 + 0 
1549 : 85 1b __ STA ACCU + 0 
154b : a5 44 __ LDA T0 + 1 
154d : 85 1c __ STA ACCU + 1 
154f : a5 45 __ LDA T0 + 2 
1551 : 85 1d __ STA ACCU + 2 
1553 : a5 46 __ LDA T0 + 3 
1555 : 85 1e __ STA ACCU + 3 
.l108:
1557 : a9 00 __ LDA #$00
1559 : 85 03 __ STA WORK + 0 
155b : 85 04 __ STA WORK + 1 
155d : a9 20 __ LDA #$20
155f : 85 05 __ STA WORK + 2 
1561 : a9 41 __ LDA #$41
1563 : 85 06 __ STA WORK + 3 
1565 : 20 3a 1b JSR $1b3a ; (freg + 20)
1568 : 20 20 1d JSR $1d20 ; (crt_fdiv + 0)
156b : 18 __ __ CLC
156c : a5 4f __ LDA T4 + 0 
156e : 69 01 __ ADC #$01
1570 : 85 4f __ STA T4 + 0 
1572 : a5 50 __ LDA T4 + 1 
1574 : 69 00 __ ADC #$00
1576 : 85 50 __ STA T4 + 1 
1578 : 30 dd __ BMI $1557 ; (nformf.l108 + 0)
.s109:
157a : a5 1e __ LDA ACCU + 3 
157c : 85 46 __ STA T0 + 3 
157e : a5 1d __ LDA ACCU + 2 
1580 : 85 45 __ STA T0 + 2 
1582 : a5 1c __ LDA ACCU + 1 
1584 : 85 44 __ STA T0 + 1 
1586 : a5 1b __ LDA ACCU + 0 
1588 : 85 43 __ STA T0 + 0 
.s15:
158a : 18 __ __ CLC
158b : a5 4d __ LDA T3 + 0 
158d : 65 4f __ ADC T4 + 0 
158f : 18 __ __ CLC
1590 : 69 01 __ ADC #$01
1592 : 85 51 __ STA T5 + 0 
1594 : c9 07 __ CMP #$07
1596 : 90 14 __ BCC $15ac ; (nformf.s51 + 0)
.s16:
1598 : ad 4c 20 LDA $204c ; (fround5[0] + 24)
159b : 85 47 __ STA T1 + 0 
159d : ad 4d 20 LDA $204d ; (fround5[0] + 25)
15a0 : 85 48 __ STA T1 + 1 
15a2 : ad 4e 20 LDA $204e ; (fround5[0] + 26)
15a5 : 85 49 __ STA T1 + 2 
15a7 : ad 4f 20 LDA $204f ; (fround5[0] + 27)
15aa : b0 15 __ BCS $15c1 ; (nformf.s17 + 0)
.s51:
15ac : 0a __ __ ASL
15ad : 0a __ __ ASL
15ae : aa __ __ TAX
15af : bd 30 20 LDA $2030,x ; (spentry + 0)
15b2 : 85 47 __ STA T1 + 0 
15b4 : bd 31 20 LDA $2031,x ; (seed + 0)
15b7 : 85 48 __ STA T1 + 1 
15b9 : bd 32 20 LDA $2032,x ; (seed + 1)
15bc : 85 49 __ STA T1 + 2 
15be : bd 33 20 LDA $2033,x ; (giocharmap + 0)
.s17:
15c1 : 85 4a __ STA T1 + 3 
15c3 : a5 43 __ LDA T0 + 0 
15c5 : 85 1b __ STA ACCU + 0 
15c7 : a5 44 __ LDA T0 + 1 
15c9 : 85 1c __ STA ACCU + 1 
15cb : a5 45 __ LDA T0 + 2 
15cd : 85 1d __ STA ACCU + 2 
15cf : a5 46 __ LDA T0 + 3 
15d1 : 85 1e __ STA ACCU + 3 
15d3 : a2 47 __ LDX #$47
15d5 : 20 2a 1b JSR $1b2a ; (freg + 4)
15d8 : 20 71 1b JSR $1b71 ; (faddsub + 6)
15db : a5 1c __ LDA ACCU + 1 
15dd : 85 16 __ STA P9 ; (f + 1)
15df : a5 1d __ LDA ACCU + 2 
15e1 : 85 17 __ STA P10 ; (f + 2)
15e3 : a6 1b __ LDX ACCU + 0 
15e5 : a5 1e __ LDA ACCU + 3 
15e7 : 85 18 __ STA P11 ; (f + 3)
15e9 : 30 3a __ BMI $1625 ; (nformf.s18 + 0)
.s46:
15eb : c9 41 __ CMP #$41
15ed : d0 0d __ BNE $15fc ; (nformf.s50 + 0)
.s47:
15ef : a5 17 __ LDA P10 ; (f + 2)
15f1 : c9 20 __ CMP #$20
15f3 : d0 07 __ BNE $15fc ; (nformf.s50 + 0)
.s48:
15f5 : a5 16 __ LDA P9 ; (f + 1)
15f7 : d0 03 __ BNE $15fc ; (nformf.s50 + 0)
.s49:
15f9 : 8a __ __ TXA
15fa : f0 02 __ BEQ $15fe ; (nformf.s45 + 0)
.s50:
15fc : 90 27 __ BCC $1625 ; (nformf.s18 + 0)
.s45:
15fe : a9 00 __ LDA #$00
1600 : 85 03 __ STA WORK + 0 
1602 : 85 04 __ STA WORK + 1 
1604 : a9 20 __ LDA #$20
1606 : 85 05 __ STA WORK + 2 
1608 : a9 41 __ LDA #$41
160a : 85 06 __ STA WORK + 3 
160c : 20 3a 1b JSR $1b3a ; (freg + 20)
160f : 20 20 1d JSR $1d20 ; (crt_fdiv + 0)
1612 : a5 1c __ LDA ACCU + 1 
1614 : 85 16 __ STA P9 ; (f + 1)
1616 : a5 1d __ LDA ACCU + 2 
1618 : 85 17 __ STA P10 ; (f + 2)
161a : a5 1e __ LDA ACCU + 3 
161c : 85 18 __ STA P11 ; (f + 3)
161e : a6 4d __ LDX T3 + 0 
1620 : ca __ __ DEX
1621 : 86 52 __ STX T6 + 0 
1623 : a6 1b __ LDX ACCU + 0 
.s18:
1625 : 38 __ __ SEC
1626 : a5 51 __ LDA T5 + 0 
1628 : e5 52 __ SBC T6 + 0 
162a : 85 4d __ STA T3 + 0 
162c : a5 51 __ LDA T5 + 0 
162e : c9 15 __ CMP #$15
1630 : 90 04 __ BCC $1636 ; (nformf.s19 + 0)
.s44:
1632 : a9 14 __ LDA #$14
1634 : 85 51 __ STA T5 + 0 
.s19:
1636 : a5 4d __ LDA T3 + 0 
1638 : d0 08 __ BNE $1642 ; (nformf.s21 + 0)
.s20:
163a : a9 30 __ LDA #$30
163c : a4 54 __ LDY T9 + 0 
163e : 91 13 __ STA (P6),y ; (str + 0)
1640 : e6 54 __ INC T9 + 0 
.s21:
1642 : a9 00 __ LDA #$00
1644 : 85 56 __ STA T11 + 0 
1646 : c5 4d __ CMP T3 + 0 
1648 : f0 6f __ BEQ $16b9 ; (nformf.l43 + 0)
.s23:
164a : c9 07 __ CMP #$07
164c : 90 04 __ BCC $1652 ; (nformf.s24 + 0)
.l42:
164e : a9 30 __ LDA #$30
1650 : b0 55 __ BCS $16a7 ; (nformf.l25 + 0)
.s24:
1652 : 86 1b __ STX ACCU + 0 
1654 : 86 43 __ STX T0 + 0 
1656 : a5 16 __ LDA P9 ; (f + 1)
1658 : 85 1c __ STA ACCU + 1 
165a : 85 44 __ STA T0 + 1 
165c : a5 17 __ LDA P10 ; (f + 2)
165e : 85 1d __ STA ACCU + 2 
1660 : 85 45 __ STA T0 + 2 
1662 : a5 18 __ LDA P11 ; (f + 3)
1664 : 85 1e __ STA ACCU + 3 
1666 : 85 46 __ STA T0 + 3 
1668 : 20 b6 1e JSR $1eb6 ; (f32_to_i16 + 0)
166b : a5 1b __ LDA ACCU + 0 
166d : 85 53 __ STA T7 + 0 
166f : 20 02 1f JSR $1f02 ; (sint16_to_float + 0)
1672 : a2 43 __ LDX #$43
1674 : 20 2a 1b JSR $1b2a ; (freg + 4)
1677 : a5 1e __ LDA ACCU + 3 
1679 : 49 80 __ EOR #$80
167b : 85 1e __ STA ACCU + 3 
167d : 20 71 1b JSR $1b71 ; (faddsub + 6)
1680 : a9 00 __ LDA #$00
1682 : 85 03 __ STA WORK + 0 
1684 : 85 04 __ STA WORK + 1 
1686 : a9 20 __ LDA #$20
1688 : 85 05 __ STA WORK + 2 
168a : a9 41 __ LDA #$41
168c : 85 06 __ STA WORK + 3 
168e : 20 3a 1b JSR $1b3a ; (freg + 20)
1691 : 20 58 1c JSR $1c58 ; (crt_fmul + 0)
1694 : a5 1c __ LDA ACCU + 1 
1696 : 85 16 __ STA P9 ; (f + 1)
1698 : a5 1d __ LDA ACCU + 2 
169a : 85 17 __ STA P10 ; (f + 2)
169c : a5 1e __ LDA ACCU + 3 
169e : 85 18 __ STA P11 ; (f + 3)
16a0 : 18 __ __ CLC
16a1 : a5 53 __ LDA T7 + 0 
16a3 : 69 30 __ ADC #$30
16a5 : a6 1b __ LDX ACCU + 0 
.l25:
16a7 : a4 54 __ LDY T9 + 0 
16a9 : 91 13 __ STA (P6),y ; (str + 0)
16ab : e6 54 __ INC T9 + 0 
16ad : e6 56 __ INC T11 + 0 
16af : a5 56 __ LDA T11 + 0 
16b1 : c5 51 __ CMP T5 + 0 
16b3 : b0 14 __ BCS $16c9 ; (nformf.s26 + 0)
.s22:
16b5 : c5 4d __ CMP T3 + 0 
16b7 : d0 91 __ BNE $164a ; (nformf.s23 + 0)
.l43:
16b9 : a9 2e __ LDA #$2e
16bb : a4 54 __ LDY T9 + 0 
16bd : 91 13 __ STA (P6),y ; (str + 0)
16bf : e6 54 __ INC T9 + 0 
16c1 : a5 56 __ LDA T11 + 0 
16c3 : c9 07 __ CMP #$07
16c5 : 90 8b __ BCC $1652 ; (nformf.s24 + 0)
16c7 : b0 85 __ BCS $164e ; (nformf.l42 + 0)
.s26:
16c9 : a5 55 __ LDA T10 + 0 
16cb : f0 66 __ BEQ $1733 ; (nformf.s124 + 0)
.s38:
16cd : a0 03 __ LDY #$03
16cf : b1 4b __ LDA (T2 + 0),y 
16d1 : 69 03 __ ADC #$03
16d3 : a4 54 __ LDY T9 + 0 
16d5 : 91 13 __ STA (P6),y ; (str + 0)
16d7 : c8 __ __ INY
16d8 : 84 54 __ STY T9 + 0 
16da : 24 50 __ BIT T4 + 1 
16dc : 30 06 __ BMI $16e4 ; (nformf.s41 + 0)
.s39:
16de : a9 2b __ LDA #$2b
16e0 : 91 13 __ STA (P6),y ; (str + 0)
16e2 : d0 11 __ BNE $16f5 ; (nformf.s40 + 0)
.s41:
16e4 : a9 2d __ LDA #$2d
16e6 : 91 13 __ STA (P6),y ; (str + 0)
16e8 : 38 __ __ SEC
16e9 : a9 00 __ LDA #$00
16eb : e5 4f __ SBC T4 + 0 
16ed : 85 4f __ STA T4 + 0 
16ef : a9 00 __ LDA #$00
16f1 : e5 50 __ SBC T4 + 1 
16f3 : 85 50 __ STA T4 + 1 
.s40:
16f5 : e6 54 __ INC T9 + 0 
16f7 : a5 4f __ LDA T4 + 0 
16f9 : 85 1b __ STA ACCU + 0 
16fb : a5 50 __ LDA T4 + 1 
16fd : 85 1c __ STA ACCU + 1 
16ff : a9 0a __ LDA #$0a
1701 : 85 03 __ STA WORK + 0 
1703 : a9 00 __ LDA #$00
1705 : 85 04 __ STA WORK + 1 
1707 : 20 ce 1d JSR $1dce ; (divs16 + 0)
170a : 18 __ __ CLC
170b : a5 1b __ LDA ACCU + 0 
170d : 69 30 __ ADC #$30
170f : a4 54 __ LDY T9 + 0 
1711 : 91 13 __ STA (P6),y ; (str + 0)
1713 : e6 54 __ INC T9 + 0 
1715 : a5 4f __ LDA T4 + 0 
1717 : 85 1b __ STA ACCU + 0 
1719 : a5 50 __ LDA T4 + 1 
171b : 85 1c __ STA ACCU + 1 
171d : a9 0a __ LDA #$0a
171f : 85 03 __ STA WORK + 0 
1721 : a9 00 __ LDA #$00
1723 : 85 04 __ STA WORK + 1 
1725 : 20 89 1e JSR $1e89 ; (mods16 + 0)
1728 : 18 __ __ CLC
1729 : a5 05 __ LDA WORK + 2 
172b : 69 30 __ ADC #$30
172d : a4 54 __ LDY T9 + 0 
172f : 91 13 __ STA (P6),y ; (str + 0)
1731 : e6 54 __ INC T9 + 0 
.s124:
1733 : a5 54 __ LDA T9 + 0 
.s27:
1735 : a0 01 __ LDY #$01
1737 : d1 11 __ CMP (P4),y ; (si + 0)
1739 : b0 6b __ BCS $17a6 ; (nformf.s3 + 0)
.s28:
173b : a0 06 __ LDY #$06
173d : b1 11 __ LDA (P4),y ; (si + 0)
173f : f0 04 __ BEQ $1745 ; (nformf.s29 + 0)
.s110:
1741 : a6 54 __ LDX T9 + 0 
1743 : 90 6e __ BCC $17b3 ; (nformf.l36 + 0)
.s29:
1745 : a5 54 __ LDA T9 + 0 
1747 : f0 3e __ BEQ $1787 ; (nformf.s30 + 0)
.s35:
1749 : e9 00 __ SBC #$00
174b : a8 __ __ TAY
174c : a9 00 __ LDA #$00
174e : e9 00 __ SBC #$00
1750 : aa __ __ TAX
1751 : 98 __ __ TYA
1752 : 18 __ __ CLC
1753 : 65 13 __ ADC P6 ; (str + 0)
1755 : 85 47 __ STA T1 + 0 
1757 : 8a __ __ TXA
1758 : 65 14 __ ADC P7 ; (str + 1)
175a : 85 48 __ STA T1 + 1 
175c : a9 01 __ LDA #$01
175e : 85 4b __ STA T2 + 0 
1760 : a6 14 __ LDX P7 ; (str + 1)
1762 : 38 __ __ SEC
.l111:
1763 : a0 01 __ LDY #$01
1765 : b1 11 __ LDA (P4),y ; (si + 0)
1767 : e5 4b __ SBC T2 + 0 
1769 : 85 4d __ STA T3 + 0 
176b : 8a __ __ TXA
176c : 69 ff __ ADC #$ff
176e : 85 4e __ STA T3 + 1 
1770 : 88 __ __ DEY
1771 : b1 47 __ LDA (T1 + 0),y 
1773 : a4 13 __ LDY P6 ; (str + 0)
1775 : 91 4d __ STA (T3 + 0),y 
1777 : a5 47 __ LDA T1 + 0 
1779 : d0 02 __ BNE $177d ; (nformf.s114 + 0)
.s113:
177b : c6 48 __ DEC T1 + 1 
.s114:
177d : c6 47 __ DEC T1 + 0 
177f : e6 4b __ INC T2 + 0 
1781 : a5 54 __ LDA T9 + 0 
1783 : c5 4b __ CMP T2 + 0 
1785 : b0 dc __ BCS $1763 ; (nformf.l111 + 0)
.s30:
1787 : a9 00 __ LDA #$00
1789 : 85 4d __ STA T3 + 0 
178b : 90 08 __ BCC $1795 ; (nformf.l31 + 0)
.s33:
178d : a9 20 __ LDA #$20
178f : a4 4d __ LDY T3 + 0 
1791 : 91 13 __ STA (P6),y ; (str + 0)
1793 : e6 4d __ INC T3 + 0 
.l31:
1795 : a0 01 __ LDY #$01
1797 : b1 11 __ LDA (P4),y ; (si + 0)
1799 : 38 __ __ SEC
179a : e5 54 __ SBC T9 + 0 
179c : 90 ef __ BCC $178d ; (nformf.s33 + 0)
.s34:
179e : c5 4d __ CMP T3 + 0 
17a0 : 90 02 __ BCC $17a4 ; (nformf.s32 + 0)
.s112:
17a2 : d0 e9 __ BNE $178d ; (nformf.s33 + 0)
.s32:
17a4 : b1 11 __ LDA (P4),y ; (si + 0)
.s3:
17a6 : 85 1b __ STA ACCU + 0 
17a8 : a2 03 __ LDX #$03
17aa : bd e9 9f LDA $9fe9,x ; (nformf@stack + 0)
17ad : 95 53 __ STA T7 + 0,x 
17af : ca __ __ DEX
17b0 : 10 f8 __ BPL $17aa ; (nformf.s3 + 4)
17b2 : 60 __ __ RTS
.l36:
17b3 : 8a __ __ TXA
17b4 : a0 01 __ LDY #$01
17b6 : d1 11 __ CMP (P4),y ; (si + 0)
17b8 : b0 ea __ BCS $17a4 ; (nformf.s32 + 0)
.s37:
17ba : a8 __ __ TAY
17bb : a9 20 __ LDA #$20
17bd : 91 13 __ STA (P6),y ; (str + 0)
17bf : e8 __ __ INX
17c0 : 90 f1 __ BCC $17b3 ; (nformf.l36 + 0)
.s53:
17c2 : a5 51 __ LDA T5 + 0 
17c4 : c9 07 __ CMP #$07
17c6 : 90 14 __ BCC $17dc ; (nformf.s62 + 0)
.s54:
17c8 : ad 4c 20 LDA $204c ; (fround5[0] + 24)
17cb : 85 47 __ STA T1 + 0 
17cd : ad 4d 20 LDA $204d ; (fround5[0] + 25)
17d0 : 85 48 __ STA T1 + 1 
17d2 : ad 4e 20 LDA $204e ; (fround5[0] + 26)
17d5 : 85 49 __ STA T1 + 2 
17d7 : ad 4f 20 LDA $204f ; (fround5[0] + 27)
17da : b0 15 __ BCS $17f1 ; (nformf.s55 + 0)
.s62:
17dc : 0a __ __ ASL
17dd : 0a __ __ ASL
17de : aa __ __ TAX
17df : bd 30 20 LDA $2030,x ; (spentry + 0)
17e2 : 85 47 __ STA T1 + 0 
17e4 : bd 31 20 LDA $2031,x ; (seed + 0)
17e7 : 85 48 __ STA T1 + 1 
17e9 : bd 32 20 LDA $2032,x ; (seed + 1)
17ec : 85 49 __ STA T1 + 2 
17ee : bd 33 20 LDA $2033,x ; (giocharmap + 0)
.s55:
17f1 : 85 4a __ STA T1 + 3 
17f3 : a5 43 __ LDA T0 + 0 
17f5 : 85 1b __ STA ACCU + 0 
17f7 : a5 44 __ LDA T0 + 1 
17f9 : 85 1c __ STA ACCU + 1 
17fb : a5 45 __ LDA T0 + 2 
17fd : 85 1d __ STA ACCU + 2 
17ff : a5 46 __ LDA T0 + 3 
1801 : 85 1e __ STA ACCU + 3 
1803 : a2 47 __ LDX #$47
1805 : 20 2a 1b JSR $1b2a ; (freg + 4)
1808 : 20 71 1b JSR $1b71 ; (faddsub + 6)
180b : a5 1c __ LDA ACCU + 1 
180d : 85 16 __ STA P9 ; (f + 1)
180f : a5 1d __ LDA ACCU + 2 
1811 : 85 17 __ STA P10 ; (f + 2)
1813 : a6 1b __ LDX ACCU + 0 
1815 : a5 1e __ LDA ACCU + 3 
1817 : 85 18 __ STA P11 ; (f + 3)
1819 : 10 03 __ BPL $181e ; (nformf.s57 + 0)
181b : 4c 25 16 JMP $1625 ; (nformf.s18 + 0)
.s57:
181e : c9 41 __ CMP #$41
1820 : d0 0d __ BNE $182f ; (nformf.s61 + 0)
.s58:
1822 : a5 17 __ LDA P10 ; (f + 2)
1824 : c9 20 __ CMP #$20
1826 : d0 07 __ BNE $182f ; (nformf.s61 + 0)
.s59:
1828 : a5 16 __ LDA P9 ; (f + 1)
182a : d0 03 __ BNE $182f ; (nformf.s61 + 0)
.s60:
182c : 8a __ __ TXA
182d : f0 02 __ BEQ $1831 ; (nformf.s56 + 0)
.s61:
182f : 90 ea __ BCC $181b ; (nformf.s55 + 42)
.s56:
1831 : a9 00 __ LDA #$00
1833 : 85 03 __ STA WORK + 0 
1835 : 85 04 __ STA WORK + 1 
1837 : a9 20 __ LDA #$20
1839 : 85 05 __ STA WORK + 2 
183b : a9 41 __ LDA #$41
183d : 85 06 __ STA WORK + 3 
183f : 20 3a 1b JSR $1b3a ; (freg + 20)
1842 : 20 20 1d JSR $1d20 ; (crt_fdiv + 0)
1845 : a5 1c __ LDA ACCU + 1 
1847 : 85 16 __ STA P9 ; (f + 1)
1849 : a5 1d __ LDA ACCU + 2 
184b : 85 17 __ STA P10 ; (f + 2)
184d : a5 1e __ LDA ACCU + 3 
184f : 85 18 __ STA P11 ; (f + 3)
1851 : a6 1b __ LDX ACCU + 0 
1853 : e6 4f __ INC T4 + 0 
1855 : d0 c4 __ BNE $181b ; (nformf.s55 + 42)
.s117:
1857 : e6 50 __ INC T4 + 1 
1859 : 4c 25 16 JMP $1625 ; (nformf.s18 + 0)
.s102:
185c : 85 47 __ STA T1 + 0 
185e : 8a __ __ TXA
185f : 18 __ __ CLC
1860 : 65 13 __ ADC P6 ; (str + 0)
1862 : 85 43 __ STA T0 + 0 
1864 : a5 14 __ LDA P7 ; (str + 1)
1866 : 69 00 __ ADC #$00
1868 : 85 44 __ STA T0 + 1 
186a : a0 03 __ LDY #$03
186c : b1 11 __ LDA (P4),y ; (si + 0)
186e : 18 __ __ CLC
186f : 69 08 __ ADC #$08
1871 : a0 00 __ LDY #$00
1873 : 91 43 __ STA (T0 + 0),y 
1875 : 18 __ __ CLC
1876 : a0 03 __ LDY #$03
1878 : b1 11 __ LDA (P4),y ; (si + 0)
187a : 69 0d __ ADC #$0d
187c : a0 01 __ LDY #$01
187e : 91 43 __ STA (T0 + 0),y 
1880 : a0 03 __ LDY #$03
1882 : b1 11 __ LDA (P4),y ; (si + 0)
1884 : 18 __ __ CLC
1885 : 69 05 __ ADC #$05
1887 : a4 47 __ LDY T1 + 0 
1889 : 91 13 __ STA (P6),y ; (str + 0)
188b : 18 __ __ CLC
188c : a5 54 __ LDA T9 + 0 
188e : 69 03 __ ADC #$03
1890 : 85 54 __ STA T9 + 0 
1892 : 4c 35 17 JMP $1735 ; (nformf.s27 + 0)
.s104:
1895 : 20 a6 18 JSR $18a6 ; (isinf.s4 + 0)
1898 : a2 01 __ LDX #$01
189a : 86 54 __ STX T9 + 0 
189c : a8 __ __ TAY
189d : d0 03 __ BNE $18a2 ; (nformf.s105 + 0)
189f : 4c ac 13 JMP $13ac ; (nformf.s7 + 0)
.s105:
18a2 : a9 03 __ LDA #$03
18a4 : d0 b6 __ BNE $185c ; (nformf.s102 + 0)
--------------------------------------------------------------------
isinf: ; isinf(float)->bool
;  26, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/math.h"
.s4:
18a6 : 06 0f __ ASL P2 ; (f + 2)
18a8 : a5 10 __ LDA P3 ; (f + 3)
18aa : 2a __ __ ROL
18ab : c9 ff __ CMP #$ff
18ad : d0 03 __ BNE $18b2 ; (isinf.s6 + 0)
.s5:
18af : a9 01 __ LDA #$01
18b1 : 60 __ __ RTS
.s6:
18b2 : a9 00 __ LDA #$00
.s3:
18b4 : 60 __ __ RTS
--------------------------------------------------------------------
18b5 : __ __ __ BYT 93 00                                           : ..
--------------------------------------------------------------------
spawn_food: ; spawn_food()->void
;  38, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/snakeoscar64.c"
.s4:
18b7 : a9 54 __ LDA #$54
18b9 : 85 49 __ STA T5 + 0 
.l5:
18bb : 20 78 19 JSR $1978 ; (rand.s4 + 0)
18be : a9 26 __ LDA #$26
18c0 : 85 03 __ STA WORK + 0 
18c2 : a9 00 __ LDA #$00
18c4 : 85 04 __ STA WORK + 1 
18c6 : 20 08 1e JSR $1e08 ; (divmod + 0)
18c9 : 18 __ __ CLC
18ca : a5 05 __ LDA WORK + 2 
18cc : 69 01 __ ADC #$01
18ce : 85 4b __ STA T6 + 0 
18d0 : 8d 24 28 STA $2824 ; (fx + 0)
18d3 : a9 00 __ LDA #$00
18d5 : 8d 25 28 STA $2825 ; (fx + 1)
18d8 : 20 78 19 JSR $1978 ; (rand.s4 + 0)
18db : a9 15 __ LDA #$15
18dd : 85 03 __ STA WORK + 0 
18df : a9 00 __ LDA #$00
18e1 : 85 04 __ STA WORK + 1 
18e3 : 20 08 1e JSR $1e08 ; (divmod + 0)
18e6 : 18 __ __ CLC
18e7 : a5 05 __ LDA WORK + 2 
18e9 : 69 01 __ ADC #$01
18eb : 85 43 __ STA T0 + 0 
18ed : 8d 26 28 STA $2826 ; (fy + 0)
18f0 : a9 00 __ LDA #$00
18f2 : 8d 27 28 STA $2827 ; (fy + 1)
18f5 : 85 1d __ STA ACCU + 2 
18f7 : 85 1c __ STA ACCU + 1 
18f9 : ad 52 20 LDA $2052 ; (len + 0)
18fc : 85 45 __ STA T3 + 0 
18fe : ad 53 20 LDA $2053 ; (len + 1)
1901 : 30 5c __ BMI $195f ; (spawn_food.s6 + 0)
.s15:
1903 : 85 46 __ STA T3 + 1 
1905 : 05 45 __ ORA T3 + 0 
1907 : f0 56 __ BEQ $195f ; (spawn_food.s6 + 0)
.s16:
1909 : a2 00 __ LDX #$00
.l7:
190b : 8a __ __ TXA
190c : 0a __ __ ASL
190d : 85 47 __ STA T4 + 0 
190f : a8 __ __ TAY
1910 : a5 1c __ LDA ACCU + 1 
1912 : 2a __ __ ROL
1913 : 85 48 __ STA T4 + 1 
1915 : 18 __ __ CLC
1916 : 69 20 __ ADC #$20
1918 : 85 4a __ STA T5 + 1 
191a : b1 49 __ LDA (T5 + 0),y 
191c : 85 1b __ STA ACCU + 0 
191e : c8 __ __ INY
191f : b1 49 __ LDA (T5 + 0),y 
1921 : d0 24 __ BNE $1947 ; (spawn_food.s8 + 0)
.s14:
1923 : a5 1b __ LDA ACCU + 0 
1925 : c5 4b __ CMP T6 + 0 
1927 : d0 1e __ BNE $1947 ; (spawn_food.s8 + 0)
.s11:
1929 : 18 __ __ CLC
192a : a9 3c __ LDA #$3c
192c : 65 47 __ ADC T4 + 0 
192e : 85 47 __ STA T4 + 0 
1930 : a9 24 __ LDA #$24
1932 : 65 48 __ ADC T4 + 1 
1934 : 85 48 __ STA T4 + 1 
1936 : a0 01 __ LDY #$01
1938 : b1 47 __ LDA (T4 + 0),y 
193a : d0 0b __ BNE $1947 ; (spawn_food.s8 + 0)
.s13:
193c : a5 43 __ LDA T0 + 0 
193e : 88 __ __ DEY
193f : d1 47 __ CMP (T4 + 0),y 
1941 : d0 04 __ BNE $1947 ; (spawn_food.s8 + 0)
.s12:
1943 : a9 01 __ LDA #$01
1945 : 85 1d __ STA ACCU + 2 
.s8:
1947 : e8 __ __ INX
1948 : d0 02 __ BNE $194c ; (spawn_food.s18 + 0)
.s17:
194a : e6 1c __ INC ACCU + 1 
.s18:
194c : a5 1c __ LDA ACCU + 1 
194e : c5 46 __ CMP T3 + 1 
1950 : 90 b9 __ BCC $190b ; (spawn_food.l7 + 0)
.s19:
1952 : d0 04 __ BNE $1958 ; (spawn_food.s9 + 0)
.s10:
1954 : e4 45 __ CPX T3 + 0 
1956 : 90 b3 __ BCC $190b ; (spawn_food.l7 + 0)
.s9:
1958 : a5 1d __ LDA ACCU + 2 
195a : f0 03 __ BEQ $195f ; (spawn_food.s6 + 0)
195c : 4c bb 18 JMP $18bb ; (spawn_food.l5 + 0)
.s6:
195f : a5 43 __ LDA T0 + 0 
1961 : 0a __ __ ASL
1962 : 0a __ __ ASL
1963 : 65 43 __ ADC T0 + 0 
1965 : 0a __ __ ASL
1966 : 0a __ __ ASL
1967 : 85 43 __ STA T0 + 0 
1969 : a9 01 __ LDA #$01
196b : 2a __ __ ROL
196c : 06 43 __ ASL T0 + 0 
196e : 2a __ __ ROL
196f : 85 44 __ STA T0 + 1 
1971 : a9 53 __ LDA #$53
1973 : a4 4b __ LDY T6 + 0 
1975 : 91 43 __ STA (T0 + 0),y 
.s3:
1977 : 60 __ __ RTS
--------------------------------------------------------------------
rand: ; rand()->u16
;  68, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdlib.h"
.s4:
1978 : ad 32 20 LDA $2032 ; (seed + 1)
197b : 4a __ __ LSR
197c : ad 31 20 LDA $2031 ; (seed + 0)
197f : 6a __ __ ROR
1980 : aa __ __ TAX
1981 : a9 00 __ LDA #$00
1983 : 6a __ __ ROR
1984 : 4d 31 20 EOR $2031 ; (seed + 0)
1987 : 85 1b __ STA ACCU + 0 
1989 : 8a __ __ TXA
198a : 4d 32 20 EOR $2032 ; (seed + 1)
198d : 85 1c __ STA ACCU + 1 
198f : 4a __ __ LSR
1990 : 45 1b __ EOR ACCU + 0 
1992 : 8d 31 20 STA $2031 ; (seed + 0)
1995 : 85 1b __ STA ACCU + 0 
1997 : 45 1c __ EOR ACCU + 1 
1999 : 8d 32 20 STA $2032 ; (seed + 1)
199c : 85 1c __ STA ACCU + 1 
.s3:
199e : 60 __ __ RTS
--------------------------------------------------------------------
draw_hud: ; draw_hud()->void
;  32, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/snakeoscar64.c"
.s4:
199f : a9 ba __ LDA #$ba
19a1 : 8d fa 9f STA $9ffa ; (sstack + 8)
19a4 : a9 9f __ LDA #$9f
19a6 : 8d fb 9f STA $9ffb ; (sstack + 9)
19a9 : a9 29 __ LDA #$29
19ab : 8d fc 9f STA $9ffc ; (sstack + 10)
19ae : a9 1a __ LDA #$1a
19b0 : 8d fd 9f STA $9ffd ; (sstack + 11)
19b3 : ad 50 20 LDA $2050 ; (sc + 0)
19b6 : 8d fe 9f STA $9ffe ; (sstack + 12)
19b9 : ad 51 20 LDA $2051 ; (sc + 1)
19bc : 8d ff 9f STA $9fff ; (sstack + 13)
19bf : 20 d9 19 JSR $19d9 ; (sprintf.s1 + 0)
19c2 : a9 00 __ LDA #$00
19c4 : 85 12 __ STA P5 
19c6 : 85 13 __ STA P6 
19c8 : 85 15 __ STA P8 
19ca : a9 17 __ LDA #$17
19cc : 85 14 __ STA P7 
19ce : a9 9f __ LDA #$9f
19d0 : 85 17 __ STA P10 
19d2 : a9 ba __ LDA #$ba
19d4 : 85 16 __ STA P9 
19d6 : 4c 35 1a JMP $1a35 ; (draw_text.s4 + 0)
--------------------------------------------------------------------
sprintf: ; sprintf(u8*,const u8*)->i16
;  20, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.s1:
19d9 : a5 53 __ LDA T1 + 0 
19db : 8d ce 9f STA $9fce ; (sprintf@stack + 0)
19de : a5 54 __ LDA T1 + 1 
19e0 : 8d cf 9f STA $9fcf ; (sprintf@stack + 1)
.s4:
19e3 : ad fa 9f LDA $9ffa ; (sstack + 8)
19e6 : 85 53 __ STA T1 + 0 
19e8 : 8d f3 9f STA $9ff3 ; (sstack + 1)
19eb : a9 00 __ LDA #$00
19ed : 8d f9 9f STA $9ff9 ; (sstack + 7)
19f0 : ad fb 9f LDA $9ffb ; (sstack + 9)
19f3 : 85 54 __ STA T1 + 1 
19f5 : 8d f4 9f STA $9ff4 ; (sstack + 2)
19f8 : ad fc 9f LDA $9ffc ; (sstack + 10)
19fb : 8d f5 9f STA $9ff5 ; (sstack + 3)
19fe : ad fd 9f LDA $9ffd ; (sstack + 11)
1a01 : 8d f6 9f STA $9ff6 ; (sstack + 4)
1a04 : a9 fe __ LDA #$fe
1a06 : 8d f7 9f STA $9ff7 ; (sstack + 5)
1a09 : a9 9f __ LDA #$9f
1a0b : 8d f8 9f STA $9ff8 ; (sstack + 6)
1a0e : 20 21 0c JSR $0c21 ; (sformat.s1 + 0)
1a11 : 38 __ __ SEC
1a12 : a5 1b __ LDA ACCU + 0 
1a14 : e5 53 __ SBC T1 + 0 
1a16 : 85 1b __ STA ACCU + 0 
1a18 : a5 1c __ LDA ACCU + 1 
1a1a : e5 54 __ SBC T1 + 1 
1a1c : 85 1c __ STA ACCU + 1 
.s3:
1a1e : ad ce 9f LDA $9fce ; (sprintf@stack + 0)
1a21 : 85 53 __ STA T1 + 0 
1a23 : ad cf 9f LDA $9fcf ; (sprintf@stack + 1)
1a26 : 85 54 __ STA T1 + 1 
1a28 : 60 __ __ RTS
--------------------------------------------------------------------
1a29 : __ __ __ BYT 53 43 4f 52 45 3a 20 25 2d 35 64 00             : SCORE: %-5d.
--------------------------------------------------------------------
draw_text: ; draw_text(i16,i16,const u8*)->void
;  24, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/snakeoscar64.c"
.s4:
1a35 : a9 00 __ LDA #$00
1a37 : 85 43 __ STA T2 + 0 
1a39 : 85 44 __ STA T2 + 1 
1a3b : a5 16 __ LDA P9 ; (str + 0)
1a3d : 85 0d __ STA P0 
.l13:
1a3f : a5 17 __ LDA P10 ; (str + 1)
1a41 : 85 0e __ STA P1 
1a43 : 20 c1 1a JSR $1ac1 ; (strlen.s4 + 0)
1a46 : a5 44 __ LDA T2 + 1 
1a48 : c5 1c __ CMP ACCU + 1 
1a4a : d0 08 __ BNE $1a54 ; (draw_text.s12 + 0)
.s9:
1a4c : a5 43 __ LDA T2 + 0 
1a4e : c5 1b __ CMP ACCU + 0 
.s10:
1a50 : b0 08 __ BCS $1a5a ; (draw_text.s3 + 0)
1a52 : 90 07 __ BCC $1a5b ; (draw_text.s5 + 0)
.s12:
1a54 : 45 1c __ EOR ACCU + 1 
1a56 : 10 f8 __ BPL $1a50 ; (draw_text.s10 + 0)
.s11:
1a58 : b0 01 __ BCS $1a5b ; (draw_text.s5 + 0)
.s3:
1a5a : 60 __ __ RTS
.s5:
1a5b : a5 43 __ LDA T2 + 0 
1a5d : 85 1b __ STA ACCU + 0 
1a5f : 18 __ __ CLC
1a60 : a5 17 __ LDA P10 ; (str + 1)
1a62 : 65 44 __ ADC T2 + 1 
1a64 : 85 1c __ STA ACCU + 1 
1a66 : a4 16 __ LDY P9 ; (str + 0)
1a68 : b1 1b __ LDA (ACCU + 0),y 
1a6a : 85 1d __ STA ACCU + 2 
1a6c : c9 41 __ CMP #$41
1a6e : 90 08 __ BCC $1a78 ; (draw_text.s6 + 0)
.s7:
1a70 : c9 5b __ CMP #$5b
1a72 : b0 04 __ BCS $1a78 ; (draw_text.s6 + 0)
.s8:
1a74 : e9 3f __ SBC #$3f
1a76 : 85 1d __ STA ACCU + 2 
.s6:
1a78 : 18 __ __ CLC
1a79 : a5 12 __ LDA P5 ; (x + 0)
1a7b : 65 43 __ ADC T2 + 0 
1a7d : aa __ __ TAX
1a7e : a5 13 __ LDA P6 ; (x + 1)
1a80 : 65 44 __ ADC T2 + 1 
1a82 : 85 1c __ STA ACCU + 1 
1a84 : a5 14 __ LDA P7 ; (y + 0)
1a86 : 0a __ __ ASL
1a87 : 85 07 __ STA WORK + 4 
1a89 : a5 15 __ LDA P8 ; (y + 1)
1a8b : 2a __ __ ROL
1a8c : 06 07 __ ASL WORK + 4 
1a8e : 2a __ __ ROL
1a8f : a8 __ __ TAY
1a90 : 18 __ __ CLC
1a91 : a5 07 __ LDA WORK + 4 
1a93 : 65 14 __ ADC P7 ; (y + 0)
1a95 : 85 1b __ STA ACCU + 0 
1a97 : 98 __ __ TYA
1a98 : 65 15 __ ADC P8 ; (y + 1)
1a9a : 06 1b __ ASL ACCU + 0 
1a9c : 2a __ __ ROL
1a9d : 06 1b __ ASL ACCU + 0 
1a9f : 2a __ __ ROL
1aa0 : 06 1b __ ASL ACCU + 0 
1aa2 : 2a __ __ ROL
1aa3 : a8 __ __ TAY
1aa4 : 8a __ __ TXA
1aa5 : 18 __ __ CLC
1aa6 : 65 1b __ ADC ACCU + 0 
1aa8 : 85 1b __ STA ACCU + 0 
1aaa : 98 __ __ TYA
1aab : 65 1c __ ADC ACCU + 1 
1aad : 18 __ __ CLC
1aae : 69 04 __ ADC #$04
1ab0 : 85 1c __ STA ACCU + 1 
1ab2 : a5 1d __ LDA ACCU + 2 
1ab4 : a0 00 __ LDY #$00
1ab6 : 91 1b __ STA (ACCU + 0),y 
1ab8 : e6 43 __ INC T2 + 0 
1aba : d0 83 __ BNE $1a3f ; (draw_text.l13 + 0)
.s14:
1abc : e6 44 __ INC T2 + 1 
1abe : 4c 3f 1a JMP $1a3f ; (draw_text.l13 + 0)
--------------------------------------------------------------------
strlen: ; strlen(const u8*)->i16
;  12, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/string.h"
.s4:
1ac1 : a9 00 __ LDA #$00
1ac3 : 85 1b __ STA ACCU + 0 
1ac5 : 85 1c __ STA ACCU + 1 
1ac7 : a8 __ __ TAY
1ac8 : b1 0d __ LDA (P0),y ; (str + 0)
1aca : f0 10 __ BEQ $1adc ; (strlen.s3 + 0)
.s6:
1acc : a2 00 __ LDX #$00
.l7:
1ace : c8 __ __ INY
1acf : d0 03 __ BNE $1ad4 ; (strlen.s9 + 0)
.s8:
1ad1 : e6 0e __ INC P1 ; (str + 1)
1ad3 : e8 __ __ INX
.s9:
1ad4 : b1 0d __ LDA (P0),y ; (str + 0)
1ad6 : d0 f6 __ BNE $1ace ; (strlen.l7 + 0)
.s5:
1ad8 : 86 1c __ STX ACCU + 1 
1ada : 84 1b __ STY ACCU + 0 
.s3:
1adc : 60 __ __ RTS
--------------------------------------------------------------------
getch: ; getch()->u8
;  83, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.l4:
1add : 20 e4 ff JSR $ffe4 
1ae0 : 85 1b __ STA ACCU + 0 
1ae2 : a5 1b __ LDA ACCU + 0 
1ae4 : f0 f7 __ BEQ $1add ; (getch.l4 + 0)
.s5:
1ae6 : 4c e9 1a JMP $1ae9 ; (convch.s4 + 0)
--------------------------------------------------------------------
convch: ; convch(u8)->u8
; 242, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.c"
.s4:
1ae9 : a8 __ __ TAY
1aea : ad 33 20 LDA $2033 ; (giocharmap + 0)
1aed : f0 27 __ BEQ $1b16 ; (convch.s5 + 0)
.s6:
1aef : c0 0d __ CPY #$0d
1af1 : d0 03 __ BNE $1af6 ; (convch.s7 + 0)
.s16:
1af3 : a9 0a __ LDA #$0a
.s3:
1af5 : 60 __ __ RTS
.s7:
1af6 : c9 02 __ CMP #$02
1af8 : 90 1c __ BCC $1b16 ; (convch.s5 + 0)
.s8:
1afa : 98 __ __ TYA
1afb : c0 41 __ CPY #$41
1afd : 90 17 __ BCC $1b16 ; (convch.s5 + 0)
.s9:
1aff : c9 db __ CMP #$db
1b01 : b0 13 __ BCS $1b16 ; (convch.s5 + 0)
.s10:
1b03 : c9 c1 __ CMP #$c1
1b05 : 90 03 __ BCC $1b0a ; (convch.s11 + 0)
.s15:
1b07 : 49 a0 __ EOR #$a0
1b09 : a8 __ __ TAY
.s11:
1b0a : c9 7b __ CMP #$7b
1b0c : b0 08 __ BCS $1b16 ; (convch.s5 + 0)
.s12:
1b0e : c9 61 __ CMP #$61
1b10 : b0 06 __ BCS $1b18 ; (convch.s14 + 0)
.s13:
1b12 : c9 5b __ CMP #$5b
1b14 : 90 02 __ BCC $1b18 ; (convch.s14 + 0)
.s5:
1b16 : 98 __ __ TYA
1b17 : 60 __ __ RTS
.s14:
1b18 : 49 20 __ EOR #$20
1b1a : 60 __ __ RTS
--------------------------------------------------------------------
1b1b : __ __ __ BYT 47 41 4d 45 20 4f 56 45 52 21 00                : GAME OVER!.
--------------------------------------------------------------------
freg: ; freg
1b26 : b1 19 __ LDA (IP + 0),y 
1b28 : c8 __ __ INY
1b29 : aa __ __ TAX
1b2a : b5 00 __ LDA $00,x 
1b2c : 85 03 __ STA WORK + 0 
1b2e : b5 01 __ LDA $01,x 
1b30 : 85 04 __ STA WORK + 1 
1b32 : b5 02 __ LDA $02,x 
1b34 : 85 05 __ STA WORK + 2 
1b36 : b5 03 __ LDA WORK + 0,x 
1b38 : 85 06 __ STA WORK + 3 
1b3a : a5 05 __ LDA WORK + 2 
1b3c : 0a __ __ ASL
1b3d : a5 06 __ LDA WORK + 3 
1b3f : 2a __ __ ROL
1b40 : 85 08 __ STA WORK + 5 
1b42 : f0 06 __ BEQ $1b4a ; (freg + 36)
1b44 : a5 05 __ LDA WORK + 2 
1b46 : 09 80 __ ORA #$80
1b48 : 85 05 __ STA WORK + 2 
1b4a : a5 1d __ LDA ACCU + 2 
1b4c : 0a __ __ ASL
1b4d : a5 1e __ LDA ACCU + 3 
1b4f : 2a __ __ ROL
1b50 : 85 07 __ STA WORK + 4 
1b52 : f0 06 __ BEQ $1b5a ; (freg + 52)
1b54 : a5 1d __ LDA ACCU + 2 
1b56 : 09 80 __ ORA #$80
1b58 : 85 1d __ STA ACCU + 2 
1b5a : 60 __ __ RTS
1b5b : 06 1e __ ASL ACCU + 3 
1b5d : a5 07 __ LDA WORK + 4 
1b5f : 6a __ __ ROR
1b60 : 85 1e __ STA ACCU + 3 
1b62 : b0 06 __ BCS $1b6a ; (freg + 68)
1b64 : a5 1d __ LDA ACCU + 2 
1b66 : 29 7f __ AND #$7f
1b68 : 85 1d __ STA ACCU + 2 
1b6a : 60 __ __ RTS
--------------------------------------------------------------------
faddsub: ; faddsub
1b6b : a5 06 __ LDA WORK + 3 
1b6d : 49 80 __ EOR #$80
1b6f : 85 06 __ STA WORK + 3 
1b71 : a9 ff __ LDA #$ff
1b73 : c5 07 __ CMP WORK + 4 
1b75 : f0 04 __ BEQ $1b7b ; (faddsub + 16)
1b77 : c5 08 __ CMP WORK + 5 
1b79 : d0 11 __ BNE $1b8c ; (faddsub + 33)
1b7b : a5 1e __ LDA ACCU + 3 
1b7d : 09 7f __ ORA #$7f
1b7f : 85 1e __ STA ACCU + 3 
1b81 : a9 80 __ LDA #$80
1b83 : 85 1d __ STA ACCU + 2 
1b85 : a9 00 __ LDA #$00
1b87 : 85 1b __ STA ACCU + 0 
1b89 : 85 1c __ STA ACCU + 1 
1b8b : 60 __ __ RTS
1b8c : 38 __ __ SEC
1b8d : a5 07 __ LDA WORK + 4 
1b8f : e5 08 __ SBC WORK + 5 
1b91 : f0 38 __ BEQ $1bcb ; (faddsub + 96)
1b93 : aa __ __ TAX
1b94 : b0 25 __ BCS $1bbb ; (faddsub + 80)
1b96 : e0 e9 __ CPX #$e9
1b98 : b0 0e __ BCS $1ba8 ; (faddsub + 61)
1b9a : a5 08 __ LDA WORK + 5 
1b9c : 85 07 __ STA WORK + 4 
1b9e : a9 00 __ LDA #$00
1ba0 : 85 1b __ STA ACCU + 0 
1ba2 : 85 1c __ STA ACCU + 1 
1ba4 : 85 1d __ STA ACCU + 2 
1ba6 : f0 23 __ BEQ $1bcb ; (faddsub + 96)
1ba8 : a5 1d __ LDA ACCU + 2 
1baa : 4a __ __ LSR
1bab : 66 1c __ ROR ACCU + 1 
1bad : 66 1b __ ROR ACCU + 0 
1baf : e8 __ __ INX
1bb0 : d0 f8 __ BNE $1baa ; (faddsub + 63)
1bb2 : 85 1d __ STA ACCU + 2 
1bb4 : a5 08 __ LDA WORK + 5 
1bb6 : 85 07 __ STA WORK + 4 
1bb8 : 4c cb 1b JMP $1bcb ; (faddsub + 96)
1bbb : e0 18 __ CPX #$18
1bbd : b0 33 __ BCS $1bf2 ; (faddsub + 135)
1bbf : a5 05 __ LDA WORK + 2 
1bc1 : 4a __ __ LSR
1bc2 : 66 04 __ ROR WORK + 1 
1bc4 : 66 03 __ ROR WORK + 0 
1bc6 : ca __ __ DEX
1bc7 : d0 f8 __ BNE $1bc1 ; (faddsub + 86)
1bc9 : 85 05 __ STA WORK + 2 
1bcb : a5 1e __ LDA ACCU + 3 
1bcd : 29 80 __ AND #$80
1bcf : 85 1e __ STA ACCU + 3 
1bd1 : 45 06 __ EOR WORK + 3 
1bd3 : 30 31 __ BMI $1c06 ; (faddsub + 155)
1bd5 : 18 __ __ CLC
1bd6 : a5 1b __ LDA ACCU + 0 
1bd8 : 65 03 __ ADC WORK + 0 
1bda : 85 1b __ STA ACCU + 0 
1bdc : a5 1c __ LDA ACCU + 1 
1bde : 65 04 __ ADC WORK + 1 
1be0 : 85 1c __ STA ACCU + 1 
1be2 : a5 1d __ LDA ACCU + 2 
1be4 : 65 05 __ ADC WORK + 2 
1be6 : 85 1d __ STA ACCU + 2 
1be8 : 90 08 __ BCC $1bf2 ; (faddsub + 135)
1bea : 66 1d __ ROR ACCU + 2 
1bec : 66 1c __ ROR ACCU + 1 
1bee : 66 1b __ ROR ACCU + 0 
1bf0 : e6 07 __ INC WORK + 4 
1bf2 : a5 07 __ LDA WORK + 4 
1bf4 : c9 ff __ CMP #$ff
1bf6 : f0 83 __ BEQ $1b7b ; (faddsub + 16)
1bf8 : 4a __ __ LSR
1bf9 : 05 1e __ ORA ACCU + 3 
1bfb : 85 1e __ STA ACCU + 3 
1bfd : b0 06 __ BCS $1c05 ; (faddsub + 154)
1bff : a5 1d __ LDA ACCU + 2 
1c01 : 29 7f __ AND #$7f
1c03 : 85 1d __ STA ACCU + 2 
1c05 : 60 __ __ RTS
1c06 : 38 __ __ SEC
1c07 : a5 1b __ LDA ACCU + 0 
1c09 : e5 03 __ SBC WORK + 0 
1c0b : 85 1b __ STA ACCU + 0 
1c0d : a5 1c __ LDA ACCU + 1 
1c0f : e5 04 __ SBC WORK + 1 
1c11 : 85 1c __ STA ACCU + 1 
1c13 : a5 1d __ LDA ACCU + 2 
1c15 : e5 05 __ SBC WORK + 2 
1c17 : 85 1d __ STA ACCU + 2 
1c19 : b0 19 __ BCS $1c34 ; (faddsub + 201)
1c1b : 38 __ __ SEC
1c1c : a9 00 __ LDA #$00
1c1e : e5 1b __ SBC ACCU + 0 
1c20 : 85 1b __ STA ACCU + 0 
1c22 : a9 00 __ LDA #$00
1c24 : e5 1c __ SBC ACCU + 1 
1c26 : 85 1c __ STA ACCU + 1 
1c28 : a9 00 __ LDA #$00
1c2a : e5 1d __ SBC ACCU + 2 
1c2c : 85 1d __ STA ACCU + 2 
1c2e : a5 1e __ LDA ACCU + 3 
1c30 : 49 80 __ EOR #$80
1c32 : 85 1e __ STA ACCU + 3 
1c34 : a5 1d __ LDA ACCU + 2 
1c36 : 30 ba __ BMI $1bf2 ; (faddsub + 135)
1c38 : 05 1c __ ORA ACCU + 1 
1c3a : 05 1b __ ORA ACCU + 0 
1c3c : f0 0f __ BEQ $1c4d ; (faddsub + 226)
1c3e : c6 07 __ DEC WORK + 4 
1c40 : f0 0b __ BEQ $1c4d ; (faddsub + 226)
1c42 : 06 1b __ ASL ACCU + 0 
1c44 : 26 1c __ ROL ACCU + 1 
1c46 : 26 1d __ ROL ACCU + 2 
1c48 : 10 f4 __ BPL $1c3e ; (faddsub + 211)
1c4a : 4c f2 1b JMP $1bf2 ; (faddsub + 135)
1c4d : a9 00 __ LDA #$00
1c4f : 85 1b __ STA ACCU + 0 
1c51 : 85 1c __ STA ACCU + 1 
1c53 : 85 1d __ STA ACCU + 2 
1c55 : 85 1e __ STA ACCU + 3 
1c57 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul: ; crt_fmul
1c58 : a5 1b __ LDA ACCU + 0 
1c5a : 05 1c __ ORA ACCU + 1 
1c5c : 05 1d __ ORA ACCU + 2 
1c5e : f0 0e __ BEQ $1c6e ; (crt_fmul + 22)
1c60 : a5 03 __ LDA WORK + 0 
1c62 : 05 04 __ ORA WORK + 1 
1c64 : 05 05 __ ORA WORK + 2 
1c66 : d0 09 __ BNE $1c71 ; (crt_fmul + 25)
1c68 : 85 1b __ STA ACCU + 0 
1c6a : 85 1c __ STA ACCU + 1 
1c6c : 85 1d __ STA ACCU + 2 
1c6e : 85 1e __ STA ACCU + 3 
1c70 : 60 __ __ RTS
1c71 : a5 1e __ LDA ACCU + 3 
1c73 : 45 06 __ EOR WORK + 3 
1c75 : 29 80 __ AND #$80
1c77 : 85 1e __ STA ACCU + 3 
1c79 : a9 ff __ LDA #$ff
1c7b : c5 07 __ CMP WORK + 4 
1c7d : f0 42 __ BEQ $1cc1 ; (crt_fmul + 105)
1c7f : c5 08 __ CMP WORK + 5 
1c81 : f0 3e __ BEQ $1cc1 ; (crt_fmul + 105)
1c83 : a9 00 __ LDA #$00
1c85 : 85 09 __ STA WORK + 6 
1c87 : 85 0a __ STA WORK + 7 
1c89 : 85 0b __ STA WORK + 8 
1c8b : a4 1b __ LDY ACCU + 0 
1c8d : a5 03 __ LDA WORK + 0 
1c8f : d0 06 __ BNE $1c97 ; (crt_fmul + 63)
1c91 : a5 04 __ LDA WORK + 1 
1c93 : f0 0a __ BEQ $1c9f ; (crt_fmul + 71)
1c95 : d0 05 __ BNE $1c9c ; (crt_fmul + 68)
1c97 : 20 f2 1c JSR $1cf2 ; (crt_fmul8 + 0)
1c9a : a5 04 __ LDA WORK + 1 
1c9c : 20 f2 1c JSR $1cf2 ; (crt_fmul8 + 0)
1c9f : a5 05 __ LDA WORK + 2 
1ca1 : 20 f2 1c JSR $1cf2 ; (crt_fmul8 + 0)
1ca4 : 38 __ __ SEC
1ca5 : a5 0b __ LDA WORK + 8 
1ca7 : 30 06 __ BMI $1caf ; (crt_fmul + 87)
1ca9 : 06 09 __ ASL WORK + 6 
1cab : 26 0a __ ROL WORK + 7 
1cad : 2a __ __ ROL
1cae : 18 __ __ CLC
1caf : 29 7f __ AND #$7f
1cb1 : 85 0b __ STA WORK + 8 
1cb3 : a5 07 __ LDA WORK + 4 
1cb5 : 65 08 __ ADC WORK + 5 
1cb7 : 90 19 __ BCC $1cd2 ; (crt_fmul + 122)
1cb9 : e9 7f __ SBC #$7f
1cbb : b0 04 __ BCS $1cc1 ; (crt_fmul + 105)
1cbd : c9 ff __ CMP #$ff
1cbf : d0 15 __ BNE $1cd6 ; (crt_fmul + 126)
1cc1 : a5 1e __ LDA ACCU + 3 
1cc3 : 09 7f __ ORA #$7f
1cc5 : 85 1e __ STA ACCU + 3 
1cc7 : a9 80 __ LDA #$80
1cc9 : 85 1d __ STA ACCU + 2 
1ccb : a9 00 __ LDA #$00
1ccd : 85 1b __ STA ACCU + 0 
1ccf : 85 1c __ STA ACCU + 1 
1cd1 : 60 __ __ RTS
1cd2 : e9 7e __ SBC #$7e
1cd4 : 90 15 __ BCC $1ceb ; (crt_fmul + 147)
1cd6 : 4a __ __ LSR
1cd7 : 05 1e __ ORA ACCU + 3 
1cd9 : 85 1e __ STA ACCU + 3 
1cdb : a9 00 __ LDA #$00
1cdd : 6a __ __ ROR
1cde : 05 0b __ ORA WORK + 8 
1ce0 : 85 1d __ STA ACCU + 2 
1ce2 : a5 0a __ LDA WORK + 7 
1ce4 : 85 1c __ STA ACCU + 1 
1ce6 : a5 09 __ LDA WORK + 6 
1ce8 : 85 1b __ STA ACCU + 0 
1cea : 60 __ __ RTS
1ceb : a9 00 __ LDA #$00
1ced : 85 1e __ STA ACCU + 3 
1cef : f0 d8 __ BEQ $1cc9 ; (crt_fmul + 113)
1cf1 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul8: ; crt_fmul8
1cf2 : 38 __ __ SEC
1cf3 : 6a __ __ ROR
1cf4 : 90 1e __ BCC $1d14 ; (crt_fmul8 + 34)
1cf6 : aa __ __ TAX
1cf7 : 18 __ __ CLC
1cf8 : 98 __ __ TYA
1cf9 : 65 09 __ ADC WORK + 6 
1cfb : 85 09 __ STA WORK + 6 
1cfd : a5 0a __ LDA WORK + 7 
1cff : 65 1c __ ADC ACCU + 1 
1d01 : 85 0a __ STA WORK + 7 
1d03 : a5 0b __ LDA WORK + 8 
1d05 : 65 1d __ ADC ACCU + 2 
1d07 : 6a __ __ ROR
1d08 : 85 0b __ STA WORK + 8 
1d0a : 8a __ __ TXA
1d0b : 66 0a __ ROR WORK + 7 
1d0d : 66 09 __ ROR WORK + 6 
1d0f : 4a __ __ LSR
1d10 : f0 0d __ BEQ $1d1f ; (crt_fmul8 + 45)
1d12 : b0 e2 __ BCS $1cf6 ; (crt_fmul8 + 4)
1d14 : 66 0b __ ROR WORK + 8 
1d16 : 66 0a __ ROR WORK + 7 
1d18 : 66 09 __ ROR WORK + 6 
1d1a : 4a __ __ LSR
1d1b : 90 f7 __ BCC $1d14 ; (crt_fmul8 + 34)
1d1d : d0 d7 __ BNE $1cf6 ; (crt_fmul8 + 4)
1d1f : 60 __ __ RTS
--------------------------------------------------------------------
crt_fdiv: ; crt_fdiv
1d20 : a5 1b __ LDA ACCU + 0 
1d22 : 05 1c __ ORA ACCU + 1 
1d24 : 05 1d __ ORA ACCU + 2 
1d26 : d0 03 __ BNE $1d2b ; (crt_fdiv + 11)
1d28 : 85 1e __ STA ACCU + 3 
1d2a : 60 __ __ RTS
1d2b : a5 1e __ LDA ACCU + 3 
1d2d : 45 06 __ EOR WORK + 3 
1d2f : 29 80 __ AND #$80
1d31 : 85 1e __ STA ACCU + 3 
1d33 : a5 08 __ LDA WORK + 5 
1d35 : f0 62 __ BEQ $1d99 ; (crt_fdiv + 121)
1d37 : a5 07 __ LDA WORK + 4 
1d39 : c9 ff __ CMP #$ff
1d3b : f0 5c __ BEQ $1d99 ; (crt_fdiv + 121)
1d3d : a9 00 __ LDA #$00
1d3f : 85 09 __ STA WORK + 6 
1d41 : 85 0a __ STA WORK + 7 
1d43 : 85 0b __ STA WORK + 8 
1d45 : a2 18 __ LDX #$18
1d47 : a5 1b __ LDA ACCU + 0 
1d49 : c5 03 __ CMP WORK + 0 
1d4b : a5 1c __ LDA ACCU + 1 
1d4d : e5 04 __ SBC WORK + 1 
1d4f : a5 1d __ LDA ACCU + 2 
1d51 : e5 05 __ SBC WORK + 2 
1d53 : 90 13 __ BCC $1d68 ; (crt_fdiv + 72)
1d55 : a5 1b __ LDA ACCU + 0 
1d57 : e5 03 __ SBC WORK + 0 
1d59 : 85 1b __ STA ACCU + 0 
1d5b : a5 1c __ LDA ACCU + 1 
1d5d : e5 04 __ SBC WORK + 1 
1d5f : 85 1c __ STA ACCU + 1 
1d61 : a5 1d __ LDA ACCU + 2 
1d63 : e5 05 __ SBC WORK + 2 
1d65 : 85 1d __ STA ACCU + 2 
1d67 : 38 __ __ SEC
1d68 : 26 09 __ ROL WORK + 6 
1d6a : 26 0a __ ROL WORK + 7 
1d6c : 26 0b __ ROL WORK + 8 
1d6e : ca __ __ DEX
1d6f : f0 0a __ BEQ $1d7b ; (crt_fdiv + 91)
1d71 : 06 1b __ ASL ACCU + 0 
1d73 : 26 1c __ ROL ACCU + 1 
1d75 : 26 1d __ ROL ACCU + 2 
1d77 : b0 dc __ BCS $1d55 ; (crt_fdiv + 53)
1d79 : 90 cc __ BCC $1d47 ; (crt_fdiv + 39)
1d7b : 38 __ __ SEC
1d7c : a5 0b __ LDA WORK + 8 
1d7e : 30 06 __ BMI $1d86 ; (crt_fdiv + 102)
1d80 : 06 09 __ ASL WORK + 6 
1d82 : 26 0a __ ROL WORK + 7 
1d84 : 2a __ __ ROL
1d85 : 18 __ __ CLC
1d86 : 29 7f __ AND #$7f
1d88 : 85 0b __ STA WORK + 8 
1d8a : a5 07 __ LDA WORK + 4 
1d8c : e5 08 __ SBC WORK + 5 
1d8e : 90 1a __ BCC $1daa ; (crt_fdiv + 138)
1d90 : 18 __ __ CLC
1d91 : 69 7f __ ADC #$7f
1d93 : b0 04 __ BCS $1d99 ; (crt_fdiv + 121)
1d95 : c9 ff __ CMP #$ff
1d97 : d0 15 __ BNE $1dae ; (crt_fdiv + 142)
1d99 : a5 1e __ LDA ACCU + 3 
1d9b : 09 7f __ ORA #$7f
1d9d : 85 1e __ STA ACCU + 3 
1d9f : a9 80 __ LDA #$80
1da1 : 85 1d __ STA ACCU + 2 
1da3 : a9 00 __ LDA #$00
1da5 : 85 1c __ STA ACCU + 1 
1da7 : 85 1b __ STA ACCU + 0 
1da9 : 60 __ __ RTS
1daa : 69 7f __ ADC #$7f
1dac : 90 15 __ BCC $1dc3 ; (crt_fdiv + 163)
1dae : 4a __ __ LSR
1daf : 05 1e __ ORA ACCU + 3 
1db1 : 85 1e __ STA ACCU + 3 
1db3 : a9 00 __ LDA #$00
1db5 : 6a __ __ ROR
1db6 : 05 0b __ ORA WORK + 8 
1db8 : 85 1d __ STA ACCU + 2 
1dba : a5 0a __ LDA WORK + 7 
1dbc : 85 1c __ STA ACCU + 1 
1dbe : a5 09 __ LDA WORK + 6 
1dc0 : 85 1b __ STA ACCU + 0 
1dc2 : 60 __ __ RTS
1dc3 : a9 00 __ LDA #$00
1dc5 : 85 1e __ STA ACCU + 3 
1dc7 : 85 1d __ STA ACCU + 2 
1dc9 : 85 1c __ STA ACCU + 1 
1dcb : 85 1b __ STA ACCU + 0 
1dcd : 60 __ __ RTS
--------------------------------------------------------------------
divs16: ; divs16
1dce : 24 1c __ BIT ACCU + 1 
1dd0 : 10 0d __ BPL $1ddf ; (divs16 + 17)
1dd2 : 20 ec 1d JSR $1dec ; (negaccu + 0)
1dd5 : 24 04 __ BIT WORK + 1 
1dd7 : 10 0d __ BPL $1de6 ; (divs16 + 24)
1dd9 : 20 fa 1d JSR $1dfa ; (negtmp + 0)
1ddc : 4c 08 1e JMP $1e08 ; (divmod + 0)
1ddf : 24 04 __ BIT WORK + 1 
1de1 : 10 f9 __ BPL $1ddc ; (divs16 + 14)
1de3 : 20 fa 1d JSR $1dfa ; (negtmp + 0)
1de6 : 20 08 1e JSR $1e08 ; (divmod + 0)
1de9 : 4c ec 1d JMP $1dec ; (negaccu + 0)
--------------------------------------------------------------------
negaccu: ; negaccu
1dec : 38 __ __ SEC
1ded : a9 00 __ LDA #$00
1def : e5 1b __ SBC ACCU + 0 
1df1 : 85 1b __ STA ACCU + 0 
1df3 : a9 00 __ LDA #$00
1df5 : e5 1c __ SBC ACCU + 1 
1df7 : 85 1c __ STA ACCU + 1 
1df9 : 60 __ __ RTS
--------------------------------------------------------------------
negtmp: ; negtmp
1dfa : 38 __ __ SEC
1dfb : a9 00 __ LDA #$00
1dfd : e5 03 __ SBC WORK + 0 
1dff : 85 03 __ STA WORK + 0 
1e01 : a9 00 __ LDA #$00
1e03 : e5 04 __ SBC WORK + 1 
1e05 : 85 04 __ STA WORK + 1 
1e07 : 60 __ __ RTS
--------------------------------------------------------------------
divmod: ; divmod
1e08 : a5 1c __ LDA ACCU + 1 
1e0a : d0 31 __ BNE $1e3d ; (divmod + 53)
1e0c : a5 04 __ LDA WORK + 1 
1e0e : d0 1e __ BNE $1e2e ; (divmod + 38)
1e10 : 85 06 __ STA WORK + 3 
1e12 : a2 04 __ LDX #$04
1e14 : 06 1b __ ASL ACCU + 0 
1e16 : 2a __ __ ROL
1e17 : c5 03 __ CMP WORK + 0 
1e19 : 90 02 __ BCC $1e1d ; (divmod + 21)
1e1b : e5 03 __ SBC WORK + 0 
1e1d : 26 1b __ ROL ACCU + 0 
1e1f : 2a __ __ ROL
1e20 : c5 03 __ CMP WORK + 0 
1e22 : 90 02 __ BCC $1e26 ; (divmod + 30)
1e24 : e5 03 __ SBC WORK + 0 
1e26 : 26 1b __ ROL ACCU + 0 
1e28 : ca __ __ DEX
1e29 : d0 eb __ BNE $1e16 ; (divmod + 14)
1e2b : 85 05 __ STA WORK + 2 
1e2d : 60 __ __ RTS
1e2e : a5 1b __ LDA ACCU + 0 
1e30 : 85 05 __ STA WORK + 2 
1e32 : a5 1c __ LDA ACCU + 1 
1e34 : 85 06 __ STA WORK + 3 
1e36 : a9 00 __ LDA #$00
1e38 : 85 1b __ STA ACCU + 0 
1e3a : 85 1c __ STA ACCU + 1 
1e3c : 60 __ __ RTS
1e3d : a5 04 __ LDA WORK + 1 
1e3f : d0 1f __ BNE $1e60 ; (divmod + 88)
1e41 : a5 03 __ LDA WORK + 0 
1e43 : 30 1b __ BMI $1e60 ; (divmod + 88)
1e45 : a9 00 __ LDA #$00
1e47 : 85 06 __ STA WORK + 3 
1e49 : a2 10 __ LDX #$10
1e4b : 06 1b __ ASL ACCU + 0 
1e4d : 26 1c __ ROL ACCU + 1 
1e4f : 2a __ __ ROL
1e50 : c5 03 __ CMP WORK + 0 
1e52 : 90 02 __ BCC $1e56 ; (divmod + 78)
1e54 : e5 03 __ SBC WORK + 0 
1e56 : 26 1b __ ROL ACCU + 0 
1e58 : 26 1c __ ROL ACCU + 1 
1e5a : ca __ __ DEX
1e5b : d0 f2 __ BNE $1e4f ; (divmod + 71)
1e5d : 85 05 __ STA WORK + 2 
1e5f : 60 __ __ RTS
1e60 : a9 00 __ LDA #$00
1e62 : 85 05 __ STA WORK + 2 
1e64 : 85 06 __ STA WORK + 3 
1e66 : a0 10 __ LDY #$10
1e68 : 18 __ __ CLC
1e69 : 26 1b __ ROL ACCU + 0 
1e6b : 26 1c __ ROL ACCU + 1 
1e6d : 26 05 __ ROL WORK + 2 
1e6f : 26 06 __ ROL WORK + 3 
1e71 : 38 __ __ SEC
1e72 : a5 05 __ LDA WORK + 2 
1e74 : e5 03 __ SBC WORK + 0 
1e76 : aa __ __ TAX
1e77 : a5 06 __ LDA WORK + 3 
1e79 : e5 04 __ SBC WORK + 1 
1e7b : 90 04 __ BCC $1e81 ; (divmod + 121)
1e7d : 86 05 __ STX WORK + 2 
1e7f : 85 06 __ STA WORK + 3 
1e81 : 88 __ __ DEY
1e82 : d0 e5 __ BNE $1e69 ; (divmod + 97)
1e84 : 26 1b __ ROL ACCU + 0 
1e86 : 26 1c __ ROL ACCU + 1 
1e88 : 60 __ __ RTS
--------------------------------------------------------------------
mods16: ; mods16
1e89 : 24 1c __ BIT ACCU + 1 
1e8b : 10 10 __ BPL $1e9d ; (mods16 + 20)
1e8d : 20 ec 1d JSR $1dec ; (negaccu + 0)
1e90 : 24 04 __ BIT WORK + 1 
1e92 : 10 03 __ BPL $1e97 ; (mods16 + 14)
1e94 : 20 fa 1d JSR $1dfa ; (negtmp + 0)
1e97 : 20 08 1e JSR $1e08 ; (divmod + 0)
1e9a : 4c a8 1e JMP $1ea8 ; (negtmpb + 0)
1e9d : 24 04 __ BIT WORK + 1 
1e9f : 10 03 __ BPL $1ea4 ; (mods16 + 27)
1ea1 : 20 fa 1d JSR $1dfa ; (negtmp + 0)
1ea4 : 4c 08 1e JMP $1e08 ; (divmod + 0)
1ea7 : 60 __ __ RTS
--------------------------------------------------------------------
negtmpb: ; negtmpb
1ea8 : 38 __ __ SEC
1ea9 : a9 00 __ LDA #$00
1eab : e5 05 __ SBC WORK + 2 
1ead : 85 05 __ STA WORK + 2 
1eaf : a9 00 __ LDA #$00
1eb1 : e5 06 __ SBC WORK + 3 
1eb3 : 85 06 __ STA WORK + 3 
1eb5 : 60 __ __ RTS
--------------------------------------------------------------------
f32_to_i16: ; f32_to_i16
1eb6 : 20 4a 1b JSR $1b4a ; (freg + 36)
1eb9 : a5 07 __ LDA WORK + 4 
1ebb : c9 7f __ CMP #$7f
1ebd : b0 07 __ BCS $1ec6 ; (f32_to_i16 + 16)
1ebf : a9 00 __ LDA #$00
1ec1 : 85 1b __ STA ACCU + 0 
1ec3 : 85 1c __ STA ACCU + 1 
1ec5 : 60 __ __ RTS
1ec6 : e9 8e __ SBC #$8e
1ec8 : 90 16 __ BCC $1ee0 ; (f32_to_i16 + 42)
1eca : 24 1e __ BIT ACCU + 3 
1ecc : 30 09 __ BMI $1ed7 ; (f32_to_i16 + 33)
1ece : a9 ff __ LDA #$ff
1ed0 : 85 1b __ STA ACCU + 0 
1ed2 : a9 7f __ LDA #$7f
1ed4 : 85 1c __ STA ACCU + 1 
1ed6 : 60 __ __ RTS
1ed7 : a9 00 __ LDA #$00
1ed9 : 85 1b __ STA ACCU + 0 
1edb : a9 80 __ LDA #$80
1edd : 85 1c __ STA ACCU + 1 
1edf : 60 __ __ RTS
1ee0 : aa __ __ TAX
1ee1 : a5 1c __ LDA ACCU + 1 
1ee3 : 46 1d __ LSR ACCU + 2 
1ee5 : 6a __ __ ROR
1ee6 : e8 __ __ INX
1ee7 : d0 fa __ BNE $1ee3 ; (f32_to_i16 + 45)
1ee9 : 24 1e __ BIT ACCU + 3 
1eeb : 10 0e __ BPL $1efb ; (f32_to_i16 + 69)
1eed : 38 __ __ SEC
1eee : 49 ff __ EOR #$ff
1ef0 : 69 00 __ ADC #$00
1ef2 : 85 1b __ STA ACCU + 0 
1ef4 : a9 00 __ LDA #$00
1ef6 : e5 1d __ SBC ACCU + 2 
1ef8 : 85 1c __ STA ACCU + 1 
1efa : 60 __ __ RTS
1efb : 85 1b __ STA ACCU + 0 
1efd : a5 1d __ LDA ACCU + 2 
1eff : 85 1c __ STA ACCU + 1 
1f01 : 60 __ __ RTS
--------------------------------------------------------------------
sint16_to_float: ; sint16_to_float
1f02 : 24 1c __ BIT ACCU + 1 
1f04 : 30 03 __ BMI $1f09 ; (sint16_to_float + 7)
1f06 : 4c 20 1f JMP $1f20 ; (uint16_to_float + 0)
1f09 : 38 __ __ SEC
1f0a : a9 00 __ LDA #$00
1f0c : e5 1b __ SBC ACCU + 0 
1f0e : 85 1b __ STA ACCU + 0 
1f10 : a9 00 __ LDA #$00
1f12 : e5 1c __ SBC ACCU + 1 
1f14 : 85 1c __ STA ACCU + 1 
1f16 : 20 20 1f JSR $1f20 ; (uint16_to_float + 0)
1f19 : a5 1e __ LDA ACCU + 3 
1f1b : 09 80 __ ORA #$80
1f1d : 85 1e __ STA ACCU + 3 
1f1f : 60 __ __ RTS
--------------------------------------------------------------------
uint16_to_float: ; uint16_to_float
1f20 : a5 1b __ LDA ACCU + 0 
1f22 : 05 1c __ ORA ACCU + 1 
1f24 : d0 05 __ BNE $1f2b ; (uint16_to_float + 11)
1f26 : 85 1d __ STA ACCU + 2 
1f28 : 85 1e __ STA ACCU + 3 
1f2a : 60 __ __ RTS
1f2b : a2 8e __ LDX #$8e
1f2d : a5 1c __ LDA ACCU + 1 
1f2f : 30 06 __ BMI $1f37 ; (uint16_to_float + 23)
1f31 : ca __ __ DEX
1f32 : 06 1b __ ASL ACCU + 0 
1f34 : 2a __ __ ROL
1f35 : 10 fa __ BPL $1f31 ; (uint16_to_float + 17)
1f37 : 0a __ __ ASL
1f38 : 85 1d __ STA ACCU + 2 
1f3a : a5 1b __ LDA ACCU + 0 
1f3c : 85 1c __ STA ACCU + 1 
1f3e : 8a __ __ TXA
1f3f : 4a __ __ LSR
1f40 : 85 1e __ STA ACCU + 3 
1f42 : a9 00 __ LDA #$00
1f44 : 85 1b __ STA ACCU + 0 
1f46 : 66 1d __ ROR ACCU + 2 
1f48 : 60 __ __ RTS
--------------------------------------------------------------------
divmod32: ; divmod32
1f49 : a9 00 __ LDA #$00
1f4b : 85 07 __ STA WORK + 4 
1f4d : 85 08 __ STA WORK + 5 
1f4f : 85 09 __ STA WORK + 6 
1f51 : 85 0a __ STA WORK + 7 
1f53 : a5 05 __ LDA WORK + 2 
1f55 : 05 06 __ ORA WORK + 3 
1f57 : f0 4b __ BEQ $1fa4 ; (divmod32 + 91)
1f59 : a0 10 __ LDY #$10
1f5b : a5 1e __ LDA ACCU + 3 
1f5d : 85 08 __ STA WORK + 5 
1f5f : a5 1d __ LDA ACCU + 2 
1f61 : 85 07 __ STA WORK + 4 
1f63 : a9 00 __ LDA #$00
1f65 : 85 1d __ STA ACCU + 2 
1f67 : 85 1e __ STA ACCU + 3 
1f69 : 18 __ __ CLC
1f6a : 26 1b __ ROL ACCU + 0 
1f6c : 26 1c __ ROL ACCU + 1 
1f6e : 26 07 __ ROL WORK + 4 
1f70 : 26 08 __ ROL WORK + 5 
1f72 : 26 09 __ ROL WORK + 6 
1f74 : 26 0a __ ROL WORK + 7 
1f76 : a5 07 __ LDA WORK + 4 
1f78 : c5 03 __ CMP WORK + 0 
1f7a : a5 08 __ LDA WORK + 5 
1f7c : e5 04 __ SBC WORK + 1 
1f7e : a5 09 __ LDA WORK + 6 
1f80 : e5 05 __ SBC WORK + 2 
1f82 : aa __ __ TAX
1f83 : a5 0a __ LDA WORK + 7 
1f85 : e5 06 __ SBC WORK + 3 
1f87 : 90 11 __ BCC $1f9a ; (divmod32 + 81)
1f89 : 86 09 __ STX WORK + 6 
1f8b : 85 0a __ STA WORK + 7 
1f8d : a5 07 __ LDA WORK + 4 
1f8f : e5 03 __ SBC WORK + 0 
1f91 : 85 07 __ STA WORK + 4 
1f93 : a5 08 __ LDA WORK + 5 
1f95 : e5 04 __ SBC WORK + 1 
1f97 : 85 08 __ STA WORK + 5 
1f99 : 38 __ __ SEC
1f9a : 88 __ __ DEY
1f9b : d0 cd __ BNE $1f6a ; (divmod32 + 33)
1f9d : 26 1b __ ROL ACCU + 0 
1f9f : 26 1c __ ROL ACCU + 1 
1fa1 : a4 02 __ LDY $02 
1fa3 : 60 __ __ RTS
1fa4 : a5 1d __ LDA ACCU + 2 
1fa6 : 05 1e __ ORA ACCU + 3 
1fa8 : d0 0c __ BNE $1fb6 ; (divmod32 + 109)
1faa : 20 08 1e JSR $1e08 ; (divmod + 0)
1fad : a5 05 __ LDA WORK + 2 
1faf : 85 07 __ STA WORK + 4 
1fb1 : a5 06 __ LDA WORK + 3 
1fb3 : 85 08 __ STA WORK + 5 
1fb5 : 60 __ __ RTS
1fb6 : a0 20 __ LDY #$20
1fb8 : a5 04 __ LDA WORK + 1 
1fba : d0 27 __ BNE $1fe3 ; (divmod32 + 154)
1fbc : 18 __ __ CLC
1fbd : 26 1b __ ROL ACCU + 0 
1fbf : 26 1c __ ROL ACCU + 1 
1fc1 : 26 1d __ ROL ACCU + 2 
1fc3 : 26 1e __ ROL ACCU + 3 
1fc5 : 2a __ __ ROL
1fc6 : 90 05 __ BCC $1fcd ; (divmod32 + 132)
1fc8 : e5 03 __ SBC WORK + 0 
1fca : 38 __ __ SEC
1fcb : b0 06 __ BCS $1fd3 ; (divmod32 + 138)
1fcd : c5 03 __ CMP WORK + 0 
1fcf : 90 02 __ BCC $1fd3 ; (divmod32 + 138)
1fd1 : e5 03 __ SBC WORK + 0 
1fd3 : 88 __ __ DEY
1fd4 : d0 e7 __ BNE $1fbd ; (divmod32 + 116)
1fd6 : 85 07 __ STA WORK + 4 
1fd8 : 26 1b __ ROL ACCU + 0 
1fda : 26 1c __ ROL ACCU + 1 
1fdc : 26 1d __ ROL ACCU + 2 
1fde : 26 1e __ ROL ACCU + 3 
1fe0 : a4 02 __ LDY $02 
1fe2 : 60 __ __ RTS
1fe3 : a5 1e __ LDA ACCU + 3 
1fe5 : d0 10 __ BNE $1ff7 ; (divmod32 + 174)
1fe7 : a6 1d __ LDX ACCU + 2 
1fe9 : 86 1e __ STX ACCU + 3 
1feb : a6 1c __ LDX ACCU + 1 
1fed : 86 1d __ STX ACCU + 2 
1fef : a6 1b __ LDX ACCU + 0 
1ff1 : 86 1c __ STX ACCU + 1 
1ff3 : 85 1b __ STA ACCU + 0 
1ff5 : a0 18 __ LDY #$18
1ff7 : 18 __ __ CLC
1ff8 : 26 1b __ ROL ACCU + 0 
1ffa : 26 1c __ ROL ACCU + 1 
1ffc : 26 1d __ ROL ACCU + 2 
1ffe : 26 1e __ ROL ACCU + 3 
2000 : 26 07 __ ROL WORK + 4 
2002 : 26 08 __ ROL WORK + 5 
2004 : 90 0c __ BCC $2012 ; (divmod32 + 201)
2006 : a5 07 __ LDA WORK + 4 
2008 : e5 03 __ SBC WORK + 0 
200a : aa __ __ TAX
200b : a5 08 __ LDA WORK + 5 
200d : e5 04 __ SBC WORK + 1 
200f : 38 __ __ SEC
2010 : b0 0c __ BCS $201e ; (divmod32 + 213)
2012 : 38 __ __ SEC
2013 : a5 07 __ LDA WORK + 4 
2015 : e5 03 __ SBC WORK + 0 
2017 : aa __ __ TAX
2018 : a5 08 __ LDA WORK + 5 
201a : e5 04 __ SBC WORK + 1 
201c : 90 04 __ BCC $2022 ; (divmod32 + 217)
201e : 86 07 __ STX WORK + 4 
2020 : 85 08 __ STA WORK + 5 
2022 : 88 __ __ DEY
2023 : d0 d3 __ BNE $1ff8 ; (divmod32 + 175)
2025 : 26 1b __ ROL ACCU + 0 
2027 : 26 1c __ ROL ACCU + 1 
2029 : 26 1d __ ROL ACCU + 2 
202b : 26 1e __ ROL ACCU + 3 
202d : a4 02 __ LDY $02 
202f : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
2030 : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
seed:
2031 : __ __ __ BYT 00 7a                                           : .z
--------------------------------------------------------------------
giocharmap:
2033 : __ __ __ BYT 01                                              : .
--------------------------------------------------------------------
fround5:
2034 : __ __ __ BYT 00 00 00 3f cd cc 4c 3d 0a d7 a3 3b 6f 12 03 3a : ...?..L=...;o..:
2044 : __ __ __ BYT 17 b7 51 38 ac c5 a7 36 bd 37 06 35             : ..Q8...6.7.5
--------------------------------------------------------------------
sc:
2050 : __ __ __ BSS	2
--------------------------------------------------------------------
len:
2052 : __ __ __ BSS	2
--------------------------------------------------------------------
sx:
2054 : __ __ __ BSS	1000
--------------------------------------------------------------------
sy:
243c : __ __ __ BSS	1000
--------------------------------------------------------------------
fx:
2824 : __ __ __ BSS	2
--------------------------------------------------------------------
fy:
2826 : __ __ __ BSS	2
