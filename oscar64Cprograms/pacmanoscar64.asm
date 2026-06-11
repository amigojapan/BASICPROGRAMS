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
080e : 8e 01 24 STX $2401 ; (spentry + 0)
0811 : a2 24 __ LDX #$24
0813 : a0 48 __ LDY #$48
0815 : a9 00 __ LDA #$00
0817 : 85 19 __ STA IP + 0 
0819 : 86 1a __ STX IP + 1 
081b : e0 25 __ CPX #$25
081d : f0 0b __ BEQ $082a ; (startup + 41)
081f : 91 19 __ STA (IP + 0),y 
0821 : c8 __ __ INY
0822 : d0 fb __ BNE $081f ; (startup + 30)
0824 : e8 __ __ INX
0825 : d0 f2 __ BNE $0819 ; (startup + 24)
0827 : 91 19 __ STA (IP + 0),y 
0829 : c8 __ __ INY
082a : c0 5e __ CPY #$5e
082c : d0 f9 __ BNE $0827 ; (startup + 38)
082e : a9 00 __ LDA #$00
0830 : a2 f7 __ LDX #$f7
0832 : d0 03 __ BNE $0837 ; (startup + 54)
0834 : 95 00 __ STA $00,x 
0836 : e8 __ __ INX
0837 : e0 f7 __ CPX #$f7
0839 : d0 f9 __ BNE $0834 ; (startup + 51)
083b : a9 88 __ LDA #$88
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
; 147, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64.c"
.s1:
0880 : a2 0d __ LDX #$0d
0882 : b5 53 __ LDA T3 + 0,x 
0884 : 9d 8a 9f STA $9f8a,x ; (main@stack + 0)
0887 : ca __ __ DEX
0888 : 10 f8 __ BPL $0882 ; (main.s1 + 2)
.s4:
088a : a9 78 __ LDA #$78
088c : 8d f8 9f STA $9ff8 ; (sstack + 8)
088f : a9 18 __ LDA #$18
0891 : 8d f9 9f STA $9ff9 ; (sstack + 9)
0894 : 20 bc 0b JSR $0bbc ; (printf.s4 + 0)
0897 : 20 7a 18 JSR $187a ; (init.s4 + 0)
089a : 20 73 1a JSR $1a73 ; (draw_map.s4 + 0)
.l5:
089d : 20 de 1a JSR $1ade ; (draw_hud.s1 + 0)
08a0 : ad 26 24 LDA $2426 ; (te + 1)
08a3 : 85 54 __ STA T3 + 1 
08a5 : ad 25 24 LDA $2425 ; (te + 0)
08a8 : 85 53 __ STA T3 + 0 
08aa : 05 54 __ ORA T3 + 1 
08ac : d0 1e __ BNE $08cc ; (main.s6 + 0)
.s34:
08ae : a9 68 __ LDA #$68
08b0 : 8d f8 9f STA $9ff8 ; (sstack + 8)
08b3 : a9 1b __ LDA #$1b
.s3:
08b5 : 8d f9 9f STA $9ff9 ; (sstack + 9)
08b8 : 20 bc 0b JSR $0bbc ; (printf.s4 + 0)
08bb : a9 00 __ LDA #$00
08bd : 85 1b __ STA ACCU + 0 
08bf : 85 1c __ STA ACCU + 1 
08c1 : a2 0d __ LDX #$0d
08c3 : bd 8a 9f LDA $9f8a,x ; (main@stack + 0)
08c6 : 95 53 __ STA T3 + 0,x 
08c8 : ca __ __ DEX
08c9 : 10 f8 __ BPL $08c3 ; (main.s3 + 14)
08cb : 60 __ __ RTS
.s6:
08cc : ad 21 24 LDA $2421 ; (li + 0)
08cf : 0d 22 24 ORA $2422 ; (li + 1)
08d2 : d0 0a __ BNE $08de ; (main.s7 + 0)
.s33:
08d4 : a9 73 __ LDA #$73
08d6 : 8d f8 9f STA $9ff8 ; (sstack + 8)
08d9 : a9 1b __ LDA #$1b
08db : 4c b5 08 JMP $08b5 ; (main.s3 + 0)
.s7:
08de : ad 52 25 LDA $2552 ; (px + 0)
08e1 : 85 55 __ STA T4 + 0 
08e3 : ad 53 25 LDA $2553 ; (px + 1)
08e6 : 85 56 __ STA T4 + 1 
08e8 : ad 54 25 LDA $2554 ; (py + 0)
08eb : 85 57 __ STA T5 + 0 
08ed : ad 55 25 LDA $2555 ; (py + 1)
08f0 : 85 58 __ STA T5 + 1 
08f2 : ad 56 25 LDA $2556 ; (gx[0] + 0)
08f5 : 85 59 __ STA T6 + 0 
08f7 : ad 57 25 LDA $2557 ; (gx[0] + 1)
08fa : 85 5a __ STA T6 + 1 
08fc : ad 5a 25 LDA $255a ; (gy[0] + 0)
08ff : 85 5b __ STA T7 + 0 
0901 : ad 5b 25 LDA $255b ; (gy[0] + 1)
0904 : 85 5c __ STA T7 + 1 
0906 : ad 58 25 LDA $2558 ; (gx[0] + 2)
0909 : 85 5d __ STA T8 + 0 
090b : ad 59 25 LDA $2559 ; (gx[0] + 3)
090e : 85 5e __ STA T8 + 1 
0910 : ad 5c 25 LDA $255c ; (gy[0] + 2)
0913 : 85 5f __ STA T9 + 0 
0915 : ad 5d 25 LDA $255d ; (gy[0] + 3)
0918 : 85 60 __ STA T9 + 1 
.l8:
091a : 20 80 1b JSR $1b80 ; (getch.l4 + 0)
091d : aa __ __ TAX
091e : a9 00 __ LDA #$00
0920 : 85 43 __ STA T0 + 0 
0922 : e0 77 __ CPX #$77
0924 : f0 04 __ BEQ $092a ; (main.s32 + 0)
.s9:
0926 : e0 57 __ CPX #$57
0928 : d0 09 __ BNE $0933 ; (main.s10 + 0)
.s32:
092a : a9 ff __ LDA #$ff
092c : 85 45 __ STA T1 + 0 
.s35:
092e : 85 46 __ STA T1 + 1 
0930 : 4c 63 09 JMP $0963 ; (main.s17 + 0)
.s10:
0933 : e0 73 __ CPX #$73
0935 : f0 04 __ BEQ $093b ; (main.s31 + 0)
.s11:
0937 : e0 53 __ CPX #$53
0939 : d0 08 __ BNE $0943 ; (main.s12 + 0)
.s31:
093b : a9 01 __ LDA #$01
093d : 85 45 __ STA T1 + 0 
093f : a9 00 __ LDA #$00
0941 : f0 eb __ BEQ $092e ; (main.s35 + 0)
.s12:
0943 : 85 45 __ STA T1 + 0 
0945 : 85 46 __ STA T1 + 1 
0947 : 8a __ __ TXA
0948 : e0 61 __ CPX #$61
094a : f0 04 __ BEQ $0950 ; (main.s30 + 0)
.s13:
094c : c9 41 __ CMP #$41
094e : d0 07 __ BNE $0957 ; (main.s14 + 0)
.s30:
0950 : a9 ff __ LDA #$ff
.s36:
0952 : 85 43 __ STA T0 + 0 
0954 : 4c 63 09 JMP $0963 ; (main.s17 + 0)
.s14:
0957 : c9 64 __ CMP #$64
0959 : f0 04 __ BEQ $095f ; (main.s16 + 0)
.s15:
095b : c9 44 __ CMP #$44
095d : d0 bb __ BNE $091a ; (main.l8 + 0)
.s16:
095f : a9 01 __ LDA #$01
0961 : 85 43 __ STA T0 + 0 
.s17:
0963 : 18 __ __ CLC
0964 : a5 57 __ LDA T5 + 0 
0966 : 65 45 __ ADC T1 + 0 
0968 : a8 __ __ TAY
0969 : a5 58 __ LDA T5 + 1 
096b : 65 46 __ ADC T1 + 1 
096d : 85 46 __ STA T1 + 1 
096f : 18 __ __ CLC
0970 : a5 55 __ LDA T4 + 0 
0972 : 65 43 __ ADC T0 + 0 
0974 : 85 43 __ STA T0 + 0 
0976 : 0a __ __ ASL
0977 : 0a __ __ ASL
0978 : 0a __ __ ASL
0979 : a2 00 __ LDX #$00
097b : 90 01 __ BCC $097e ; (main.s38 + 0)
.s37:
097d : e8 __ __ INX
.s38:
097e : 38 __ __ SEC
097f : e5 43 __ SBC T0 + 0 
0981 : 85 47 __ STA T2 + 0 
0983 : 8a __ __ TXA
0984 : e9 00 __ SBC #$00
0986 : 06 47 __ ASL T2 + 0 
0988 : 2a __ __ ROL
0989 : aa __ __ TAX
098a : 18 __ __ CLC
098b : a9 48 __ LDA #$48
098d : 65 47 __ ADC T2 + 0 
098f : 85 47 __ STA T2 + 0 
0991 : 8a __ __ TXA
0992 : 69 24 __ ADC #$24
0994 : 85 48 __ STA T2 + 1 
0996 : b1 47 __ LDA (T2 + 0),y 
0998 : c9 01 __ CMP #$01
099a : d0 03 __ BNE $099f ; (main.s18 + 0)
099c : 4c 1a 09 JMP $091a ; (main.l8 + 0)
.s18:
099f : 8c 54 25 STY $2554 ; (py + 0)
09a2 : a6 46 __ LDX T1 + 1 
09a4 : 8e 55 25 STX $2555 ; (py + 1)
09a7 : a6 43 __ LDX T0 + 0 
09a9 : 8e 52 25 STX $2552 ; (px + 0)
09ac : a2 00 __ LDX #$00
09ae : 8e 53 25 STX $2553 ; (px + 1)
09b1 : c9 02 __ CMP #$02
09b3 : d0 1f __ BNE $09d4 ; (main.s19 + 0)
.s29:
09b5 : 8a __ __ TXA
09b6 : 91 47 __ STA (T2 + 0),y 
09b8 : ad 1f 24 LDA $241f ; (sc + 0)
09bb : 69 09 __ ADC #$09
09bd : 8d 1f 24 STA $241f ; (sc + 0)
09c0 : 90 04 __ BCC $09c6 ; (main.s40 + 0)
.s39:
09c2 : ee 20 24 INC $2420 ; (sc + 1)
09c5 : 18 __ __ CLC
.s40:
09c6 : a5 53 __ LDA T3 + 0 
09c8 : 69 ff __ ADC #$ff
09ca : 8d 25 24 STA $2425 ; (te + 0)
09cd : a5 54 __ LDA T3 + 1 
09cf : 69 ff __ ADC #$ff
09d1 : 8d 26 24 STA $2426 ; (te + 1)
.s19:
09d4 : b1 47 __ LDA (T2 + 0),y 
09d6 : c9 03 __ CMP #$03
09d8 : d0 26 __ BNE $0a00 ; (main.s20 + 0)
.s28:
09da : 8e 24 24 STX $2424 ; (pm + 1)
09dd : 8a __ __ TXA
09de : 91 47 __ STA (T2 + 0),y 
09e0 : a9 14 __ LDA #$14
09e2 : 8d 23 24 STA $2423 ; (pm + 0)
09e5 : ad 1f 24 LDA $241f ; (sc + 0)
09e8 : 69 31 __ ADC #$31
09ea : 8d 1f 24 STA $241f ; (sc + 0)
09ed : 90 04 __ BCC $09f3 ; (main.s42 + 0)
.s41:
09ef : ee 20 24 INC $2420 ; (sc + 1)
09f2 : 18 __ __ CLC
.s42:
09f3 : ad 25 24 LDA $2425 ; (te + 0)
09f6 : 69 ff __ ADC #$ff
09f8 : 8d 25 24 STA $2425 ; (te + 0)
09fb : b0 03 __ BCS $0a00 ; (main.s20 + 0)
.s43:
09fd : ce 26 24 DEC $2426 ; (te + 1)
.s20:
0a00 : 20 be 1b JSR $1bbe ; (check_collisions.s4 + 0)
0a03 : 20 8c 1c JSR $1c8c ; (update_ghosts.s1 + 0)
0a06 : 20 be 1b JSR $1bbe ; (check_collisions.s4 + 0)
0a09 : ad 24 24 LDA $2424 ; (pm + 1)
0a0c : 30 13 __ BMI $0a21 ; (main.s21 + 0)
.s27:
0a0e : 0d 23 24 ORA $2423 ; (pm + 0)
0a11 : f0 0e __ BEQ $0a21 ; (main.s21 + 0)
.s26:
0a13 : ad 23 24 LDA $2423 ; (pm + 0)
0a16 : 18 __ __ CLC
0a17 : 69 ff __ ADC #$ff
0a19 : 8d 23 24 STA $2423 ; (pm + 0)
0a1c : b0 03 __ BCS $0a21 ; (main.s21 + 0)
.s44:
0a1e : ce 24 24 DEC $2424 ; (pm + 1)
.s21:
0a21 : a5 55 __ LDA T4 + 0 
0a23 : 85 0d __ STA P0 
0a25 : a5 56 __ LDA T4 + 1 
0a27 : 85 0e __ STA P1 
0a29 : a5 57 __ LDA T5 + 0 
0a2b : 85 0f __ STA P2 
0a2d : a5 58 __ LDA T5 + 1 
0a2f : 85 10 __ STA P3 
0a31 : 20 ae 1a JSR $1aae ; (get_v.s4 + 0)
0a34 : aa __ __ TAX
0a35 : a5 59 __ LDA T6 + 0 
0a37 : 85 0d __ STA P0 
0a39 : a5 5a __ LDA T6 + 1 
0a3b : 85 0e __ STA P1 
0a3d : a5 5b __ LDA T7 + 0 
0a3f : 85 0f __ STA P2 
0a41 : a5 5c __ LDA T7 + 1 
0a43 : 85 10 __ STA P3 
0a45 : a5 57 __ LDA T5 + 0 
0a47 : 0a __ __ ASL
0a48 : 85 1b __ STA ACCU + 0 
0a4a : a5 58 __ LDA T5 + 1 
0a4c : 2a __ __ ROL
0a4d : 06 1b __ ASL ACCU + 0 
0a4f : 2a __ __ ROL
0a50 : a8 __ __ TAY
0a51 : 18 __ __ CLC
0a52 : a5 1b __ LDA ACCU + 0 
0a54 : 65 57 __ ADC T5 + 0 
0a56 : 85 43 __ STA T0 + 0 
0a58 : 98 __ __ TYA
0a59 : 65 58 __ ADC T5 + 1 
0a5b : 06 43 __ ASL T0 + 0 
0a5d : 2a __ __ ROL
0a5e : 06 43 __ ASL T0 + 0 
0a60 : 2a __ __ ROL
0a61 : 06 43 __ ASL T0 + 0 
0a63 : 2a __ __ ROL
0a64 : a8 __ __ TAY
0a65 : 18 __ __ CLC
0a66 : a5 43 __ LDA T0 + 0 
0a68 : 65 55 __ ADC T4 + 0 
0a6a : 85 43 __ STA T0 + 0 
0a6c : 98 __ __ TYA
0a6d : 65 56 __ ADC T4 + 1 
0a6f : 18 __ __ CLC
0a70 : 69 04 __ ADC #$04
0a72 : 85 44 __ STA T0 + 1 
0a74 : 8a __ __ TXA
0a75 : a0 00 __ LDY #$00
0a77 : 91 43 __ STA (T0 + 0),y 
0a79 : 20 ae 1a JSR $1aae ; (get_v.s4 + 0)
0a7c : aa __ __ TAX
0a7d : a5 5d __ LDA T8 + 0 
0a7f : 85 0d __ STA P0 
0a81 : a5 5e __ LDA T8 + 1 
0a83 : 85 0e __ STA P1 
0a85 : a5 5f __ LDA T9 + 0 
0a87 : 85 0f __ STA P2 
0a89 : a5 60 __ LDA T9 + 1 
0a8b : 85 10 __ STA P3 
0a8d : a5 5b __ LDA T7 + 0 
0a8f : 0a __ __ ASL
0a90 : 85 1b __ STA ACCU + 0 
0a92 : a5 5c __ LDA T7 + 1 
0a94 : 2a __ __ ROL
0a95 : 06 1b __ ASL ACCU + 0 
0a97 : 2a __ __ ROL
0a98 : a8 __ __ TAY
0a99 : 18 __ __ CLC
0a9a : a5 1b __ LDA ACCU + 0 
0a9c : 65 5b __ ADC T7 + 0 
0a9e : 85 43 __ STA T0 + 0 
0aa0 : 98 __ __ TYA
0aa1 : 65 5c __ ADC T7 + 1 
0aa3 : 06 43 __ ASL T0 + 0 
0aa5 : 2a __ __ ROL
0aa6 : 06 43 __ ASL T0 + 0 
0aa8 : 2a __ __ ROL
0aa9 : 06 43 __ ASL T0 + 0 
0aab : 2a __ __ ROL
0aac : a8 __ __ TAY
0aad : 18 __ __ CLC
0aae : a5 43 __ LDA T0 + 0 
0ab0 : 65 59 __ ADC T6 + 0 
0ab2 : 85 43 __ STA T0 + 0 
0ab4 : 98 __ __ TYA
0ab5 : 65 5a __ ADC T6 + 1 
0ab7 : 18 __ __ CLC
0ab8 : 69 04 __ ADC #$04
0aba : 85 44 __ STA T0 + 1 
0abc : 8a __ __ TXA
0abd : a0 00 __ LDY #$00
0abf : 91 43 __ STA (T0 + 0),y 
0ac1 : 20 ae 1a JSR $1aae ; (get_v.s4 + 0)
0ac4 : aa __ __ TAX
0ac5 : a5 0f __ LDA P2 
0ac7 : 0a __ __ ASL
0ac8 : 85 1b __ STA ACCU + 0 
0aca : a5 10 __ LDA P3 
0acc : 2a __ __ ROL
0acd : 06 1b __ ASL ACCU + 0 
0acf : 2a __ __ ROL
0ad0 : a8 __ __ TAY
0ad1 : 18 __ __ CLC
0ad2 : a5 1b __ LDA ACCU + 0 
0ad4 : 65 0f __ ADC P2 
0ad6 : 85 43 __ STA T0 + 0 
0ad8 : 98 __ __ TYA
0ad9 : 65 10 __ ADC P3 
0adb : 06 43 __ ASL T0 + 0 
0add : 2a __ __ ROL
0ade : 06 43 __ ASL T0 + 0 
0ae0 : 2a __ __ ROL
0ae1 : 06 43 __ ASL T0 + 0 
0ae3 : 2a __ __ ROL
0ae4 : a8 __ __ TAY
0ae5 : 18 __ __ CLC
0ae6 : a5 43 __ LDA T0 + 0 
0ae8 : 65 0d __ ADC P0 
0aea : 85 43 __ STA T0 + 0 
0aec : 98 __ __ TYA
0aed : 65 0e __ ADC P1 
0aef : 18 __ __ CLC
0af0 : 69 04 __ ADC #$04
0af2 : 85 44 __ STA T0 + 1 
0af4 : 8a __ __ TXA
0af5 : a0 00 __ LDY #$00
0af7 : 91 43 __ STA (T0 + 0),y 
0af9 : ad 54 25 LDA $2554 ; (py + 0)
0afc : 0a __ __ ASL
0afd : 85 07 __ STA WORK + 4 
0aff : ad 55 25 LDA $2555 ; (py + 1)
0b02 : 2a __ __ ROL
0b03 : 06 07 __ ASL WORK + 4 
0b05 : 2a __ __ ROL
0b06 : aa __ __ TAX
0b07 : 18 __ __ CLC
0b08 : a5 07 __ LDA WORK + 4 
0b0a : 6d 54 25 ADC $2554 ; (py + 0)
0b0d : 85 1b __ STA ACCU + 0 
0b0f : 8a __ __ TXA
0b10 : 6d 55 25 ADC $2555 ; (py + 1)
0b13 : 06 1b __ ASL ACCU + 0 
0b15 : 2a __ __ ROL
0b16 : 06 1b __ ASL ACCU + 0 
0b18 : 2a __ __ ROL
0b19 : 06 1b __ ASL ACCU + 0 
0b1b : 2a __ __ ROL
0b1c : aa __ __ TAX
0b1d : ad 52 25 LDA $2552 ; (px + 0)
0b20 : 18 __ __ CLC
0b21 : 65 1b __ ADC ACCU + 0 
0b23 : 85 43 __ STA T0 + 0 
0b25 : 8a __ __ TXA
0b26 : 6d 53 25 ADC $2553 ; (px + 1)
0b29 : 18 __ __ CLC
0b2a : 69 04 __ ADC #$04
0b2c : 85 44 __ STA T0 + 1 
0b2e : ad 27 24 LDA $2427 ; (p_sprite + 0)
0b31 : 91 43 __ STA (T0 + 0),y 
0b33 : ad 5a 25 LDA $255a ; (gy[0] + 0)
0b36 : 0a __ __ ASL
0b37 : 85 07 __ STA WORK + 4 
0b39 : ad 5b 25 LDA $255b ; (gy[0] + 1)
0b3c : 2a __ __ ROL
0b3d : 06 07 __ ASL WORK + 4 
0b3f : 2a __ __ ROL
0b40 : aa __ __ TAX
0b41 : 18 __ __ CLC
0b42 : a5 07 __ LDA WORK + 4 
0b44 : 6d 5a 25 ADC $255a ; (gy[0] + 0)
0b47 : 85 1b __ STA ACCU + 0 
0b49 : 8a __ __ TXA
0b4a : 6d 5b 25 ADC $255b ; (gy[0] + 1)
0b4d : 06 1b __ ASL ACCU + 0 
0b4f : 2a __ __ ROL
0b50 : 06 1b __ ASL ACCU + 0 
0b52 : 2a __ __ ROL
0b53 : 06 1b __ ASL ACCU + 0 
0b55 : 2a __ __ ROL
0b56 : aa __ __ TAX
0b57 : ad 56 25 LDA $2556 ; (gx[0] + 0)
0b5a : 18 __ __ CLC
0b5b : 65 1b __ ADC ACCU + 0 
0b5d : 85 43 __ STA T0 + 0 
0b5f : 8a __ __ TXA
0b60 : 6d 57 25 ADC $2557 ; (gx[0] + 1)
0b63 : 18 __ __ CLC
0b64 : 69 04 __ ADC #$04
0b66 : 85 44 __ STA T0 + 1 
0b68 : ad 24 24 LDA $2424 ; (pm + 1)
0b6b : 30 0b __ BMI $0b78 ; (main.s22 + 0)
.s25:
0b6d : 0d 23 24 ORA $2423 ; (pm + 0)
0b70 : f0 06 __ BEQ $0b78 ; (main.s22 + 0)
.s24:
0b72 : a9 66 __ LDA #$66
0b74 : 91 43 __ STA (T0 + 0),y 
0b76 : d0 06 __ BNE $0b7e ; (main.s23 + 0)
.s22:
0b78 : a9 a1 __ LDA #$a1
0b7a : 91 43 __ STA (T0 + 0),y 
0b7c : a9 a2 __ LDA #$a2
.s23:
0b7e : 85 43 __ STA T0 + 0 
0b80 : ad 5c 25 LDA $255c ; (gy[0] + 2)
0b83 : 0a __ __ ASL
0b84 : 85 07 __ STA WORK + 4 
0b86 : ad 5d 25 LDA $255d ; (gy[0] + 3)
0b89 : 2a __ __ ROL
0b8a : 06 07 __ ASL WORK + 4 
0b8c : 2a __ __ ROL
0b8d : aa __ __ TAX
0b8e : 18 __ __ CLC
0b8f : a5 07 __ LDA WORK + 4 
0b91 : 6d 5c 25 ADC $255c ; (gy[0] + 2)
0b94 : 85 1b __ STA ACCU + 0 
0b96 : 8a __ __ TXA
0b97 : 6d 5d 25 ADC $255d ; (gy[0] + 3)
0b9a : 06 1b __ ASL ACCU + 0 
0b9c : 2a __ __ ROL
0b9d : 06 1b __ ASL ACCU + 0 
0b9f : 2a __ __ ROL
0ba0 : 06 1b __ ASL ACCU + 0 
0ba2 : 2a __ __ ROL
0ba3 : aa __ __ TAX
0ba4 : ad 58 25 LDA $2558 ; (gx[0] + 2)
0ba7 : 18 __ __ CLC
0ba8 : 65 1b __ ADC ACCU + 0 
0baa : 85 45 __ STA T1 + 0 
0bac : 8a __ __ TXA
0bad : 6d 59 25 ADC $2559 ; (gx[0] + 3)
0bb0 : 18 __ __ CLC
0bb1 : 69 04 __ ADC #$04
0bb3 : 85 46 __ STA T1 + 1 
0bb5 : a5 43 __ LDA T0 + 0 
0bb7 : 91 45 __ STA (T1 + 0),y 
0bb9 : 4c 9d 08 JMP $089d ; (main.l5 + 0)
--------------------------------------------------------------------
printf: ; printf(const u8*)->void
;  18, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.s4:
0bbc : a9 01 __ LDA #$01
0bbe : 8d f7 9f STA $9ff7 ; (sstack + 7)
0bc1 : a9 9c __ LDA #$9c
0bc3 : 8d f1 9f STA $9ff1 ; (sstack + 1)
0bc6 : a9 9f __ LDA #$9f
0bc8 : 8d f2 9f STA $9ff2 ; (sstack + 2)
0bcb : ad f8 9f LDA $9ff8 ; (sstack + 8)
0bce : 8d f3 9f STA $9ff3 ; (sstack + 3)
0bd1 : ad f9 9f LDA $9ff9 ; (sstack + 9)
0bd4 : 8d f4 9f STA $9ff4 ; (sstack + 4)
0bd7 : a9 fa __ LDA #$fa
0bd9 : 8d f5 9f STA $9ff5 ; (sstack + 5)
0bdc : a9 9f __ LDA #$9f
0bde : 8d f6 9f STA $9ff6 ; (sstack + 6)
0be1 : 4c e4 0b JMP $0be4 ; (sformat.s1 + 0)
--------------------------------------------------------------------
sformat: ; sformat(u8*,const u8*,i16*,bool)->u8*
; 351, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s1:
0be4 : a2 09 __ LDX #$09
0be6 : b5 53 __ LDA T1 + 0,x 
0be8 : 9d ce 9f STA $9fce,x ; (sformat@stack + 0)
0beb : ca __ __ DEX
0bec : 10 f8 __ BPL $0be6 ; (sformat.s1 + 2)
.s4:
0bee : ad f3 9f LDA $9ff3 ; (sstack + 3)
0bf1 : 85 55 __ STA T3 + 0 
0bf3 : a9 00 __ LDA #$00
0bf5 : 85 5b __ STA T6 + 0 
0bf7 : ad f4 9f LDA $9ff4 ; (sstack + 4)
0bfa : 85 56 __ STA T3 + 1 
0bfc : ad f1 9f LDA $9ff1 ; (sstack + 1)
0bff : 85 57 __ STA T4 + 0 
0c01 : ad f2 9f LDA $9ff2 ; (sstack + 2)
0c04 : 85 58 __ STA T4 + 1 
.l5:
0c06 : a0 00 __ LDY #$00
0c08 : b1 55 __ LDA (T3 + 0),y 
0c0a : d0 36 __ BNE $0c42 ; (sformat.s10 + 0)
.s6:
0c0c : a4 5b __ LDY T6 + 0 
0c0e : 91 57 __ STA (T4 + 0),y 
0c10 : 98 __ __ TYA
0c11 : f0 28 __ BEQ $0c3b ; (sformat.s95 + 0)
.s7:
0c13 : ad f7 9f LDA $9ff7 ; (sstack + 7)
0c16 : d0 18 __ BNE $0c30 ; (sformat.s9 + 0)
.s8:
0c18 : 98 __ __ TYA
0c19 : 18 __ __ CLC
0c1a : 65 57 __ ADC T4 + 0 
0c1c : aa __ __ TAX
0c1d : a5 58 __ LDA T4 + 1 
0c1f : 69 00 __ ADC #$00
.s3:
0c21 : 86 1b __ STX ACCU + 0 ; (buff + 1)
0c23 : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0c25 : a2 09 __ LDX #$09
0c27 : bd ce 9f LDA $9fce,x ; (sformat@stack + 0)
0c2a : 95 53 __ STA T1 + 0,x 
0c2c : ca __ __ DEX
0c2d : 10 f8 __ BPL $0c27 ; (sformat.s3 + 6)
0c2f : 60 __ __ RTS
.s9:
0c30 : a5 57 __ LDA T4 + 0 
0c32 : 85 0e __ STA P1 
0c34 : a5 58 __ LDA T4 + 1 
0c36 : 85 0f __ STA P2 
0c38 : 20 27 10 JSR $1027 ; (puts.l4 + 0)
.s95:
0c3b : a5 58 __ LDA T4 + 1 
0c3d : a6 57 __ LDX T4 + 0 
0c3f : 4c 21 0c JMP $0c21 ; (sformat.s3 + 0)
.s10:
0c42 : c9 25 __ CMP #$25
0c44 : f0 3e __ BEQ $0c84 ; (sformat.s15 + 0)
.s11:
0c46 : a4 5b __ LDY T6 + 0 
0c48 : 91 57 __ STA (T4 + 0),y 
0c4a : e6 55 __ INC T3 + 0 
0c4c : d0 02 __ BNE $0c50 ; (sformat.s117 + 0)
.s116:
0c4e : e6 56 __ INC T3 + 1 
.s117:
0c50 : c8 __ __ INY
0c51 : 84 5b __ STY T6 + 0 
0c53 : 98 __ __ TYA
0c54 : c0 28 __ CPY #$28
0c56 : 90 ae __ BCC $0c06 ; (sformat.l5 + 0)
.s12:
0c58 : 85 43 __ STA T0 + 0 
0c5a : a9 00 __ LDA #$00
0c5c : 85 5b __ STA T6 + 0 
0c5e : ad f7 9f LDA $9ff7 ; (sstack + 7)
0c61 : f0 14 __ BEQ $0c77 ; (sformat.s13 + 0)
.s14:
0c63 : a5 57 __ LDA T4 + 0 
0c65 : 85 0e __ STA P1 
0c67 : a5 58 __ LDA T4 + 1 
0c69 : 85 0f __ STA P2 
0c6b : a9 00 __ LDA #$00
0c6d : a4 43 __ LDY T0 + 0 
0c6f : 91 0e __ STA (P1),y 
0c71 : 20 27 10 JSR $1027 ; (puts.l4 + 0)
0c74 : 4c 06 0c JMP $0c06 ; (sformat.l5 + 0)
.s13:
0c77 : 18 __ __ CLC
0c78 : a5 57 __ LDA T4 + 0 
0c7a : 65 43 __ ADC T0 + 0 
0c7c : 85 57 __ STA T4 + 0 
0c7e : 90 86 __ BCC $0c06 ; (sformat.l5 + 0)
.s118:
0c80 : e6 58 __ INC T4 + 1 
0c82 : b0 82 __ BCS $0c06 ; (sformat.l5 + 0)
.s15:
0c84 : a5 5b __ LDA T6 + 0 
0c86 : f0 27 __ BEQ $0caf ; (sformat.s16 + 0)
.s89:
0c88 : 84 5b __ STY T6 + 0 
0c8a : 85 43 __ STA T0 + 0 
0c8c : ad f7 9f LDA $9ff7 ; (sstack + 7)
0c8f : f0 13 __ BEQ $0ca4 ; (sformat.s90 + 0)
.s91:
0c91 : a5 57 __ LDA T4 + 0 
0c93 : 85 0e __ STA P1 
0c95 : a5 58 __ LDA T4 + 1 
0c97 : 85 0f __ STA P2 
0c99 : 98 __ __ TYA
0c9a : a4 43 __ LDY T0 + 0 
0c9c : 91 0e __ STA (P1),y 
0c9e : 20 27 10 JSR $1027 ; (puts.l4 + 0)
0ca1 : 4c af 0c JMP $0caf ; (sformat.s16 + 0)
.s90:
0ca4 : 18 __ __ CLC
0ca5 : a5 57 __ LDA T4 + 0 
0ca7 : 65 43 __ ADC T0 + 0 
0ca9 : 85 57 __ STA T4 + 0 
0cab : 90 02 __ BCC $0caf ; (sformat.s16 + 0)
.s115:
0cad : e6 58 __ INC T4 + 1 
.s16:
0caf : a9 00 __ LDA #$00
0cb1 : 8d dd 9f STA $9fdd ; (si.sign + 0)
0cb4 : 8d de 9f STA $9fde ; (si.left + 0)
0cb7 : 8d df 9f STA $9fdf ; (si.prefix + 0)
0cba : a0 01 __ LDY #$01
0cbc : b1 55 __ LDA (T3 + 0),y 
0cbe : a2 20 __ LDX #$20
0cc0 : 8e d8 9f STX $9fd8 ; (si.fill + 0)
0cc3 : a2 00 __ LDX #$00
0cc5 : 8e d9 9f STX $9fd9 ; (si.width + 0)
0cc8 : ca __ __ DEX
0cc9 : 8e da 9f STX $9fda ; (si.precision + 0)
0ccc : a2 0a __ LDX #$0a
0cce : 8e dc 9f STX $9fdc ; (si.base + 0)
0cd1 : aa __ __ TAX
0cd2 : a9 02 __ LDA #$02
0cd4 : d0 07 __ BNE $0cdd ; (sformat.l17 + 0)
.s85:
0cd6 : a0 00 __ LDY #$00
0cd8 : b1 55 __ LDA (T3 + 0),y 
0cda : aa __ __ TAX
0cdb : a9 01 __ LDA #$01
.l17:
0cdd : 18 __ __ CLC
0cde : 65 55 __ ADC T3 + 0 
0ce0 : 85 55 __ STA T3 + 0 
0ce2 : 90 02 __ BCC $0ce6 ; (sformat.s106 + 0)
.s105:
0ce4 : e6 56 __ INC T3 + 1 
.s106:
0ce6 : 8a __ __ TXA
0ce7 : e0 2b __ CPX #$2b
0ce9 : d0 07 __ BNE $0cf2 ; (sformat.s18 + 0)
.s88:
0ceb : a9 01 __ LDA #$01
0ced : 8d dd 9f STA $9fdd ; (si.sign + 0)
0cf0 : d0 e4 __ BNE $0cd6 ; (sformat.s85 + 0)
.s18:
0cf2 : c9 30 __ CMP #$30
0cf4 : d0 06 __ BNE $0cfc ; (sformat.s19 + 0)
.s87:
0cf6 : 8d d8 9f STA $9fd8 ; (si.fill + 0)
0cf9 : 4c d6 0c JMP $0cd6 ; (sformat.s85 + 0)
.s19:
0cfc : c9 23 __ CMP #$23
0cfe : d0 07 __ BNE $0d07 ; (sformat.s20 + 0)
.s86:
0d00 : a9 01 __ LDA #$01
0d02 : 8d df 9f STA $9fdf ; (si.prefix + 0)
0d05 : d0 cf __ BNE $0cd6 ; (sformat.s85 + 0)
.s20:
0d07 : c9 2d __ CMP #$2d
0d09 : d0 07 __ BNE $0d12 ; (sformat.s21 + 0)
.s84:
0d0b : a9 01 __ LDA #$01
0d0d : 8d de 9f STA $9fde ; (si.left + 0)
0d10 : d0 c4 __ BNE $0cd6 ; (sformat.s85 + 0)
.s21:
0d12 : 85 47 __ STA T2 + 0 
0d14 : c9 30 __ CMP #$30
0d16 : 90 40 __ BCC $0d58 ; (sformat.s22 + 0)
.s80:
0d18 : c9 3a __ CMP #$3a
0d1a : b0 7b __ BCS $0d97 ; (sformat.s23 + 0)
.s81:
0d1c : a0 00 __ LDY #$00
0d1e : 84 43 __ STY T0 + 0 
0d20 : c9 3a __ CMP #$3a
0d22 : a6 1c __ LDX ACCU + 1 ; (fmt + 0)
0d24 : b0 2b __ BCS $0d51 ; (sformat.s104 + 0)
.l83:
0d26 : a5 43 __ LDA T0 + 0 
0d28 : 0a __ __ ASL
0d29 : 85 1b __ STA ACCU + 0 ; (buff + 1)
0d2b : 98 __ __ TYA
0d2c : 2a __ __ ROL
0d2d : 06 1b __ ASL ACCU + 0 ; (buff + 1)
0d2f : 2a __ __ ROL
0d30 : aa __ __ TAX
0d31 : 18 __ __ CLC
0d32 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0d34 : 65 43 __ ADC T0 + 0 
0d36 : 0a __ __ ASL
0d37 : 18 __ __ CLC
0d38 : 65 47 __ ADC T2 + 0 
0d3a : 38 __ __ SEC
0d3b : e9 30 __ SBC #$30
0d3d : 85 43 __ STA T0 + 0 
0d3f : b1 55 __ LDA (T3 + 0),y 
0d41 : 85 47 __ STA T2 + 0 
0d43 : e6 55 __ INC T3 + 0 
0d45 : d0 02 __ BNE $0d49 ; (sformat.s114 + 0)
.s113:
0d47 : e6 56 __ INC T3 + 1 
.s114:
0d49 : c9 30 __ CMP #$30
0d4b : 90 04 __ BCC $0d51 ; (sformat.s104 + 0)
.s82:
0d4d : c9 3a __ CMP #$3a
0d4f : 90 d5 __ BCC $0d26 ; (sformat.l83 + 0)
.s104:
0d51 : 86 1c __ STX ACCU + 1 ; (fmt + 0)
0d53 : a6 43 __ LDX T0 + 0 
0d55 : 8e d9 9f STX $9fd9 ; (si.width + 0)
.s22:
0d58 : c9 2e __ CMP #$2e
0d5a : d0 3b __ BNE $0d97 ; (sformat.s23 + 0)
.s76:
0d5c : a9 00 __ LDA #$00
0d5e : a6 1c __ LDX ACCU + 1 ; (fmt + 0)
0d60 : 4c 7a 0d JMP $0d7a ; (sformat.l77 + 0)
.s79:
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
.l77:
0d7a : 85 43 __ STA T0 + 0 
0d7c : a0 00 __ LDY #$00
0d7e : b1 55 __ LDA (T3 + 0),y 
0d80 : 85 47 __ STA T2 + 0 
0d82 : e6 55 __ INC T3 + 0 
0d84 : d0 02 __ BNE $0d88 ; (sformat.s108 + 0)
.s107:
0d86 : e6 56 __ INC T3 + 1 
.s108:
0d88 : c9 30 __ CMP #$30
0d8a : 90 04 __ BCC $0d90 ; (sformat.s103 + 0)
.s78:
0d8c : c9 3a __ CMP #$3a
0d8e : 90 d3 __ BCC $0d63 ; (sformat.s79 + 0)
.s103:
0d90 : 86 1c __ STX ACCU + 1 ; (fmt + 0)
0d92 : a6 43 __ LDX T0 + 0 
0d94 : 8e da 9f STX $9fda ; (si.precision + 0)
.s23:
0d97 : c9 64 __ CMP #$64
0d99 : f0 0c __ BEQ $0da7 ; (sformat.s75 + 0)
.s24:
0d9b : c9 44 __ CMP #$44
0d9d : f0 08 __ BEQ $0da7 ; (sformat.s75 + 0)
.s25:
0d9f : c9 69 __ CMP #$69
0da1 : f0 04 __ BEQ $0da7 ; (sformat.s75 + 0)
.s26:
0da3 : c9 49 __ CMP #$49
0da5 : d0 07 __ BNE $0dae ; (sformat.s27 + 0)
.s75:
0da7 : a9 01 __ LDA #$01
.s93:
0da9 : 85 13 __ STA P6 
0dab : 4c ed 0f JMP $0fed ; (sformat.s73 + 0)
.s27:
0dae : c9 75 __ CMP #$75
0db0 : f0 04 __ BEQ $0db6 ; (sformat.s74 + 0)
.s28:
0db2 : c9 55 __ CMP #$55
0db4 : d0 04 __ BNE $0dba ; (sformat.s29 + 0)
.s74:
0db6 : a9 00 __ LDA #$00
0db8 : f0 ef __ BEQ $0da9 ; (sformat.s93 + 0)
.s29:
0dba : c9 78 __ CMP #$78
0dbc : f0 04 __ BEQ $0dc2 ; (sformat.s72 + 0)
.s30:
0dbe : c9 58 __ CMP #$58
0dc0 : d0 13 __ BNE $0dd5 ; (sformat.s31 + 0)
.s72:
0dc2 : 29 e0 __ AND #$e0
0dc4 : 09 01 __ ORA #$01
0dc6 : 8d db 9f STA $9fdb ; (si.cha + 0)
0dc9 : a9 00 __ LDA #$00
0dcb : 85 13 __ STA P6 
0dcd : a9 10 __ LDA #$10
0dcf : 8d dc 9f STA $9fdc ; (si.base + 0)
0dd2 : 4c ed 0f JMP $0fed ; (sformat.s73 + 0)
.s31:
0dd5 : c9 6c __ CMP #$6c
0dd7 : d0 03 __ BNE $0ddc ; (sformat.s32 + 0)
0dd9 : 4c 5e 0f JMP $0f5e ; (sformat.s60 + 0)
.s32:
0ddc : c9 4c __ CMP #$4c
0dde : f0 f9 __ BEQ $0dd9 ; (sformat.s31 + 4)
.s33:
0de0 : c9 66 __ CMP #$66
0de2 : f0 14 __ BEQ $0df8 ; (sformat.s59 + 0)
.s34:
0de4 : c9 67 __ CMP #$67
0de6 : f0 10 __ BEQ $0df8 ; (sformat.s59 + 0)
.s35:
0de8 : c9 65 __ CMP #$65
0dea : f0 0c __ BEQ $0df8 ; (sformat.s59 + 0)
.s36:
0dec : c9 46 __ CMP #$46
0dee : f0 08 __ BEQ $0df8 ; (sformat.s59 + 0)
.s37:
0df0 : c9 47 __ CMP #$47
0df2 : f0 04 __ BEQ $0df8 ; (sformat.s59 + 0)
.s38:
0df4 : c9 45 __ CMP #$45
0df6 : d0 5c __ BNE $0e54 ; (sformat.s39 + 0)
.s59:
0df8 : a5 57 __ LDA T4 + 0 
0dfa : 85 13 __ STA P6 
0dfc : a5 58 __ LDA T4 + 1 
0dfe : 85 14 __ STA P7 
0e00 : a5 47 __ LDA T2 + 0 
0e02 : 29 e0 __ AND #$e0
0e04 : 09 01 __ ORA #$01
0e06 : 8d db 9f STA $9fdb ; (si.cha + 0)
0e09 : ad f5 9f LDA $9ff5 ; (sstack + 5)
0e0c : 85 59 __ STA T5 + 0 
0e0e : a9 d8 __ LDA #$d8
0e10 : 85 11 __ STA P4 
0e12 : a9 9f __ LDA #$9f
0e14 : 85 12 __ STA P5 
0e16 : ad f6 9f LDA $9ff6 ; (sstack + 6)
0e19 : 85 5a __ STA T5 + 1 
0e1b : a0 00 __ LDY #$00
0e1d : b1 59 __ LDA (T5 + 0),y 
0e1f : 85 15 __ STA P8 
0e21 : c8 __ __ INY
0e22 : b1 59 __ LDA (T5 + 0),y 
0e24 : 85 16 __ STA P9 
0e26 : c8 __ __ INY
0e27 : b1 59 __ LDA (T5 + 0),y 
0e29 : 85 17 __ STA P10 
0e2b : c8 __ __ INY
0e2c : b1 59 __ LDA (T5 + 0),y 
0e2e : 85 18 __ STA P11 
0e30 : a5 47 __ LDA T2 + 0 
0e32 : ed db 9f SBC $9fdb ; (si.cha + 0)
0e35 : 18 __ __ CLC
0e36 : 69 61 __ ADC #$61
0e38 : 8d f0 9f STA $9ff0 ; (sstack + 0)
0e3b : 20 02 13 JSR $1302 ; (nformf.s1 + 0)
0e3e : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0e40 : 85 5b __ STA T6 + 0 
0e42 : 18 __ __ CLC
0e43 : a5 59 __ LDA T5 + 0 
0e45 : 69 04 __ ADC #$04
0e47 : 8d f5 9f STA $9ff5 ; (sstack + 5)
0e4a : a5 5a __ LDA T5 + 1 
0e4c : 69 00 __ ADC #$00
0e4e : 8d f6 9f STA $9ff6 ; (sstack + 6)
0e51 : 4c 06 0c JMP $0c06 ; (sformat.l5 + 0)
.s39:
0e54 : c9 73 __ CMP #$73
0e56 : f0 3b __ BEQ $0e93 ; (sformat.s47 + 0)
.s40:
0e58 : c9 53 __ CMP #$53
0e5a : f0 37 __ BEQ $0e93 ; (sformat.s47 + 0)
.s41:
0e5c : c9 63 __ CMP #$63
0e5e : f0 12 __ BEQ $0e72 ; (sformat.s46 + 0)
.s42:
0e60 : c9 43 __ CMP #$43
0e62 : f0 0e __ BEQ $0e72 ; (sformat.s46 + 0)
.s43:
0e64 : aa __ __ TAX
0e65 : f0 ea __ BEQ $0e51 ; (sformat.s59 + 89)
.s44:
0e67 : a0 00 __ LDY #$00
0e69 : 91 57 __ STA (T4 + 0),y 
.s45:
0e6b : a9 01 __ LDA #$01
.s96:
0e6d : 85 5b __ STA T6 + 0 
0e6f : 4c 06 0c JMP $0c06 ; (sformat.l5 + 0)
.s46:
0e72 : ad f5 9f LDA $9ff5 ; (sstack + 5)
0e75 : 85 43 __ STA T0 + 0 
0e77 : ad f6 9f LDA $9ff6 ; (sstack + 6)
0e7a : 85 44 __ STA T0 + 1 
0e7c : a0 00 __ LDY #$00
0e7e : b1 43 __ LDA (T0 + 0),y 
0e80 : 91 57 __ STA (T4 + 0),y 
0e82 : a5 43 __ LDA T0 + 0 
0e84 : 69 01 __ ADC #$01
0e86 : 8d f5 9f STA $9ff5 ; (sstack + 5)
0e89 : a5 44 __ LDA T0 + 1 
0e8b : 69 00 __ ADC #$00
0e8d : 8d f6 9f STA $9ff6 ; (sstack + 6)
0e90 : 4c 6b 0e JMP $0e6b ; (sformat.s45 + 0)
.s47:
0e93 : ad f5 9f LDA $9ff5 ; (sstack + 5)
0e96 : 85 43 __ STA T0 + 0 
0e98 : 69 01 __ ADC #$01
0e9a : 8d f5 9f STA $9ff5 ; (sstack + 5)
0e9d : ad f6 9f LDA $9ff6 ; (sstack + 6)
0ea0 : 85 44 __ STA T0 + 1 
0ea2 : 69 00 __ ADC #$00
0ea4 : 8d f6 9f STA $9ff6 ; (sstack + 6)
0ea7 : a0 00 __ LDY #$00
0ea9 : 84 5c __ STY T7 + 0 
0eab : b1 43 __ LDA (T0 + 0),y 
0ead : 85 1b __ STA ACCU + 0 ; (buff + 1)
0eaf : 85 53 __ STA T1 + 0 
0eb1 : c8 __ __ INY
0eb2 : b1 43 __ LDA (T0 + 0),y 
0eb4 : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0eb6 : 85 54 __ STA T1 + 1 
0eb8 : ad d9 9f LDA $9fd9 ; (si.width + 0)
0ebb : f0 0c __ BEQ $0ec9 ; (sformat.s48 + 0)
.s100:
0ebd : 88 __ __ DEY
0ebe : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
0ec0 : f0 05 __ BEQ $0ec7 ; (sformat.s101 + 0)
.l58:
0ec2 : c8 __ __ INY
0ec3 : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
0ec5 : d0 fb __ BNE $0ec2 ; (sformat.l58 + 0)
.s101:
0ec7 : 84 5c __ STY T7 + 0 
.s48:
0ec9 : ad de 9f LDA $9fde ; (si.left + 0)
0ecc : 85 59 __ STA T5 + 0 
0ece : d0 19 __ BNE $0ee9 ; (sformat.s49 + 0)
.s98:
0ed0 : a6 5c __ LDX T7 + 0 
0ed2 : ec d9 9f CPX $9fd9 ; (si.width + 0)
0ed5 : a0 00 __ LDY #$00
0ed7 : b0 0c __ BCS $0ee5 ; (sformat.s99 + 0)
.l57:
0ed9 : ad d8 9f LDA $9fd8 ; (si.fill + 0)
0edc : 91 57 __ STA (T4 + 0),y 
0ede : c8 __ __ INY
0edf : e8 __ __ INX
0ee0 : ec d9 9f CPX $9fd9 ; (si.width + 0)
0ee3 : 90 f4 __ BCC $0ed9 ; (sformat.l57 + 0)
.s99:
0ee5 : 86 5c __ STX T7 + 0 
0ee7 : 84 5b __ STY T6 + 0 
.s49:
0ee9 : ac f7 9f LDY $9ff7 ; (sstack + 7)
0eec : d0 48 __ BNE $0f36 ; (sformat.s54 + 0)
.s50:
0eee : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
0ef0 : f0 23 __ BEQ $0f15 ; (sformat.s51 + 0)
.s53:
0ef2 : 18 __ __ CLC
0ef3 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0ef5 : 69 01 __ ADC #$01
0ef7 : 85 43 __ STA T0 + 0 
0ef9 : a5 1c __ LDA ACCU + 1 ; (fmt + 0)
0efb : 69 00 __ ADC #$00
0efd : 85 44 __ STA T0 + 1 
0eff : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
.l92:
0f01 : a4 5b __ LDY T6 + 0 
0f03 : 91 57 __ STA (T4 + 0),y 
0f05 : e6 5b __ INC T6 + 0 
0f07 : a0 00 __ LDY #$00
0f09 : b1 43 __ LDA (T0 + 0),y 
0f0b : a8 __ __ TAY
0f0c : e6 43 __ INC T0 + 0 
0f0e : d0 02 __ BNE $0f12 ; (sformat.s112 + 0)
.s111:
0f10 : e6 44 __ INC T0 + 1 
.s112:
0f12 : 98 __ __ TYA
0f13 : d0 ec __ BNE $0f01 ; (sformat.l92 + 0)
.s51:
0f15 : a5 59 __ LDA T5 + 0 
0f17 : d0 03 __ BNE $0f1c ; (sformat.s97 + 0)
0f19 : 4c 06 0c JMP $0c06 ; (sformat.l5 + 0)
.s97:
0f1c : a6 5c __ LDX T7 + 0 
0f1e : ec d9 9f CPX $9fd9 ; (si.width + 0)
0f21 : a4 5b __ LDY T6 + 0 
0f23 : b0 0c __ BCS $0f31 ; (sformat.s102 + 0)
.l52:
0f25 : ad d8 9f LDA $9fd8 ; (si.fill + 0)
0f28 : 91 57 __ STA (T4 + 0),y 
0f2a : c8 __ __ INY
0f2b : e8 __ __ INX
0f2c : ec d9 9f CPX $9fd9 ; (si.width + 0)
0f2f : 90 f4 __ BCC $0f25 ; (sformat.l52 + 0)
.s102:
0f31 : 84 5b __ STY T6 + 0 
0f33 : 4c 06 0c JMP $0c06 ; (sformat.l5 + 0)
.s54:
0f36 : a4 5b __ LDY T6 + 0 
0f38 : f0 11 __ BEQ $0f4b ; (sformat.s55 + 0)
.s56:
0f3a : a5 57 __ LDA T4 + 0 
0f3c : 85 0e __ STA P1 
0f3e : a5 58 __ LDA T4 + 1 
0f40 : 85 0f __ STA P2 
0f42 : a9 00 __ LDA #$00
0f44 : 85 5b __ STA T6 + 0 
0f46 : 91 0e __ STA (P1),y 
0f48 : 20 27 10 JSR $1027 ; (puts.l4 + 0)
.s55:
0f4b : a5 53 __ LDA T1 + 0 
0f4d : 85 0e __ STA P1 
0f4f : a5 54 __ LDA T1 + 1 
0f51 : 85 0f __ STA P2 
0f53 : 20 27 10 JSR $1027 ; (puts.l4 + 0)
0f56 : ad de 9f LDA $9fde ; (si.left + 0)
0f59 : d0 c1 __ BNE $0f1c ; (sformat.s97 + 0)
0f5b : 4c 06 0c JMP $0c06 ; (sformat.l5 + 0)
.s60:
0f5e : ad f5 9f LDA $9ff5 ; (sstack + 5)
0f61 : 85 43 __ STA T0 + 0 
0f63 : 69 03 __ ADC #$03
0f65 : 8d f5 9f STA $9ff5 ; (sstack + 5)
0f68 : ad f6 9f LDA $9ff6 ; (sstack + 6)
0f6b : 85 44 __ STA T0 + 1 
0f6d : 69 00 __ ADC #$00
0f6f : 8d f6 9f STA $9ff6 ; (sstack + 6)
0f72 : a0 00 __ LDY #$00
0f74 : b1 55 __ LDA (T3 + 0),y 
0f76 : aa __ __ TAX
0f77 : e6 55 __ INC T3 + 0 
0f79 : d0 02 __ BNE $0f7d ; (sformat.s110 + 0)
.s109:
0f7b : e6 56 __ INC T3 + 1 
.s110:
0f7d : b1 43 __ LDA (T0 + 0),y 
0f7f : 85 1b __ STA ACCU + 0 ; (buff + 1)
0f81 : 85 11 __ STA P4 
0f83 : a0 01 __ LDY #$01
0f85 : b1 43 __ LDA (T0 + 0),y 
0f87 : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0f89 : 85 12 __ STA P5 
0f8b : c8 __ __ INY
0f8c : b1 43 __ LDA (T0 + 0),y 
0f8e : 85 1d __ STA ACCU + 2 ; (fmt + 1)
0f90 : 85 13 __ STA P6 
0f92 : c8 __ __ INY
0f93 : b1 43 __ LDA (T0 + 0),y 
0f95 : 85 14 __ STA P7 
0f97 : e0 64 __ CPX #$64
0f99 : f0 0c __ BEQ $0fa7 ; (sformat.s71 + 0)
.s61:
0f9b : e0 44 __ CPX #$44
0f9d : f0 08 __ BEQ $0fa7 ; (sformat.s71 + 0)
.s62:
0f9f : e0 69 __ CPX #$69
0fa1 : f0 04 __ BEQ $0fa7 ; (sformat.s71 + 0)
.s63:
0fa3 : e0 49 __ CPX #$49
0fa5 : d0 1c __ BNE $0fc3 ; (sformat.s64 + 0)
.s71:
0fa7 : a9 01 __ LDA #$01
.s94:
0fa9 : 85 15 __ STA P8 
.s69:
0fab : a5 57 __ LDA T4 + 0 
0fad : 85 0f __ STA P2 
0faf : a5 58 __ LDA T4 + 1 
0fb1 : 85 10 __ STA P3 
0fb3 : a9 d8 __ LDA #$d8
0fb5 : 85 0d __ STA P0 
0fb7 : a9 9f __ LDA #$9f
0fb9 : 85 0e __ STA P1 
0fbb : 20 b8 11 JSR $11b8 ; (nforml.s4 + 0)
0fbe : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0fc0 : 4c 6d 0e JMP $0e6d ; (sformat.s96 + 0)
.s64:
0fc3 : e0 75 __ CPX #$75
0fc5 : f0 04 __ BEQ $0fcb ; (sformat.s70 + 0)
.s65:
0fc7 : e0 55 __ CPX #$55
0fc9 : d0 04 __ BNE $0fcf ; (sformat.s66 + 0)
.s70:
0fcb : a9 00 __ LDA #$00
0fcd : f0 da __ BEQ $0fa9 ; (sformat.s94 + 0)
.s66:
0fcf : e0 78 __ CPX #$78
0fd1 : f0 06 __ BEQ $0fd9 ; (sformat.s68 + 0)
.s67:
0fd3 : 85 1e __ STA ACCU + 3 ; (fps + 0)
0fd5 : e0 58 __ CPX #$58
0fd7 : d0 82 __ BNE $0f5b ; (sformat.s55 + 16)
.s68:
0fd9 : a9 00 __ LDA #$00
0fdb : 85 15 __ STA P8 
0fdd : a9 10 __ LDA #$10
0fdf : 8d dc 9f STA $9fdc ; (si.base + 0)
0fe2 : 8a __ __ TXA
0fe3 : 29 e0 __ AND #$e0
0fe5 : 09 01 __ ORA #$01
0fe7 : 8d db 9f STA $9fdb ; (si.cha + 0)
0fea : 4c ab 0f JMP $0fab ; (sformat.s69 + 0)
.s73:
0fed : a5 57 __ LDA T4 + 0 
0fef : 85 0f __ STA P2 
0ff1 : a5 58 __ LDA T4 + 1 
0ff3 : 85 10 __ STA P3 
0ff5 : ad f5 9f LDA $9ff5 ; (sstack + 5)
0ff8 : 85 43 __ STA T0 + 0 
0ffa : ad f6 9f LDA $9ff6 ; (sstack + 6)
0ffd : 85 44 __ STA T0 + 1 
0fff : a0 00 __ LDY #$00
1001 : b1 43 __ LDA (T0 + 0),y 
1003 : 85 11 __ STA P4 
1005 : c8 __ __ INY
1006 : b1 43 __ LDA (T0 + 0),y 
1008 : 85 12 __ STA P5 
100a : 18 __ __ CLC
100b : a5 43 __ LDA T0 + 0 
100d : 69 02 __ ADC #$02
100f : 8d f5 9f STA $9ff5 ; (sstack + 5)
1012 : a5 44 __ LDA T0 + 1 
1014 : 69 00 __ ADC #$00
1016 : 8d f6 9f STA $9ff6 ; (sstack + 6)
1019 : a9 d8 __ LDA #$d8
101b : 85 0d __ STA P0 
101d : a9 9f __ LDA #$9f
101f : 85 0e __ STA P1 
1021 : 20 9d 10 JSR $109d ; (nformi.s4 + 0)
1024 : 4c 6d 0e JMP $0e6d ; (sformat.s96 + 0)
--------------------------------------------------------------------
puts: ; puts(const u8*)->void
;  12, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.l4:
1027 : a0 00 __ LDY #$00
1029 : b1 0e __ LDA (P1),y ; (str + 0)
102b : d0 01 __ BNE $102e ; (puts.s5 + 0)
.s3:
102d : 60 __ __ RTS
.s5:
102e : e6 0e __ INC P1 ; (str + 0)
1030 : d0 02 __ BNE $1034 ; (puts.s7 + 0)
.s6:
1032 : e6 0f __ INC P2 ; (str + 1)
.s7:
1034 : 20 3a 10 JSR $103a ; (putpch.s4 + 0)
1037 : 4c 27 10 JMP $1027 ; (puts.l4 + 0)
--------------------------------------------------------------------
putpch: ; putpch(u8)->void
;  69, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.s4:
103a : 85 0d __ STA P0 ; (c + 0)
103c : ad 02 24 LDA $2402 ; (giocharmap + 0)
103f : f0 32 __ BEQ $1073 ; (putpch.s5 + 0)
.s6:
1041 : a5 0d __ LDA P0 ; (c + 0)
1043 : c9 0a __ CMP #$0a
1045 : d0 04 __ BNE $104b ; (putpch.s7 + 0)
.s18:
1047 : a9 0d __ LDA #$0d
1049 : d0 32 __ BNE $107d ; (putpch.s15 + 0)
.s7:
104b : c9 09 __ CMP #$09
104d : f0 36 __ BEQ $1085 ; (putpch.s16 + 0)
.s8:
104f : ad 02 24 LDA $2402 ; (giocharmap + 0)
1052 : c9 02 __ CMP #$02
1054 : 90 1d __ BCC $1073 ; (putpch.s5 + 0)
.s9:
1056 : a5 0d __ LDA P0 ; (c + 0)
1058 : c9 41 __ CMP #$41
105a : 90 17 __ BCC $1073 ; (putpch.s5 + 0)
.s10:
105c : c9 7b __ CMP #$7b
105e : b0 13 __ BCS $1073 ; (putpch.s5 + 0)
.s11:
1060 : c9 61 __ CMP #$61
1062 : b0 04 __ BCS $1068 ; (putpch.s13 + 0)
.s12:
1064 : c9 5b __ CMP #$5b
1066 : b0 0b __ BCS $1073 ; (putpch.s5 + 0)
.s13:
1068 : 49 20 __ EOR #$20
106a : 85 0d __ STA P0 ; (c + 0)
106c : ad 02 24 LDA $2402 ; (giocharmap + 0)
106f : c9 02 __ CMP #$02
1071 : f0 06 __ BEQ $1079 ; (putpch.s14 + 0)
.s5:
1073 : a5 0d __ LDA P0 ; (c + 0)
1075 : 20 d2 ff JSR $ffd2 
.s3:
1078 : 60 __ __ RTS
.s14:
1079 : a5 0d __ LDA P0 ; (c + 0)
107b : 29 5f __ AND #$5f
.s15:
107d : 85 43 __ STA T0 + 0 
107f : a5 43 __ LDA T0 + 0 
1081 : 20 d2 ff JSR $ffd2 
1084 : 60 __ __ RTS
.s16:
1085 : a5 d3 __ LDA $d3 
1087 : 29 03 __ AND #$03
1089 : 85 43 __ STA T0 + 0 
108b : a9 20 __ LDA #$20
108d : 85 44 __ STA T1 + 0 
.l17:
108f : a5 44 __ LDA T1 + 0 
1091 : 20 d2 ff JSR $ffd2 
1094 : e6 43 __ INC T0 + 0 
1096 : a5 43 __ LDA T0 + 0 
1098 : c9 04 __ CMP #$04
109a : 90 f3 __ BCC $108f ; (putpch.l17 + 0)
109c : 60 __ __ RTS
--------------------------------------------------------------------
nformi: ; nformi(const struct sinfo*,u8*,i16,bool)->u8
;  79, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s4:
109d : a9 00 __ LDA #$00
109f : 85 43 __ STA T5 + 0 
10a1 : a0 04 __ LDY #$04
10a3 : b1 0d __ LDA (P0),y ; (si + 0)
10a5 : 85 44 __ STA T6 + 0 
10a7 : a5 13 __ LDA P6 ; (s + 0)
10a9 : f0 13 __ BEQ $10be ; (nformi.s5 + 0)
.s33:
10ab : 24 12 __ BIT P5 ; (v + 1)
10ad : 10 0f __ BPL $10be ; (nformi.s5 + 0)
.s34:
10af : 38 __ __ SEC
10b0 : a9 00 __ LDA #$00
10b2 : e5 11 __ SBC P4 ; (v + 0)
10b4 : 85 11 __ STA P4 ; (v + 0)
10b6 : a9 00 __ LDA #$00
10b8 : e5 12 __ SBC P5 ; (v + 1)
10ba : 85 12 __ STA P5 ; (v + 1)
10bc : e6 43 __ INC T5 + 0 
.s5:
10be : a9 10 __ LDA #$10
10c0 : 85 45 __ STA T7 + 0 
10c2 : a5 11 __ LDA P4 ; (v + 0)
10c4 : 05 12 __ ORA P5 ; (v + 1)
10c6 : f0 33 __ BEQ $10fb ; (nformi.s6 + 0)
.s28:
10c8 : a5 11 __ LDA P4 ; (v + 0)
10ca : 85 1b __ STA ACCU + 0 
10cc : a5 12 __ LDA P5 ; (v + 1)
10ce : 85 1c __ STA ACCU + 1 
.l29:
10d0 : a5 44 __ LDA T6 + 0 
10d2 : 85 03 __ STA WORK + 0 
10d4 : a9 00 __ LDA #$00
10d6 : 85 04 __ STA WORK + 1 
10d8 : 20 d9 21 JSR $21d9 ; (divmod + 0)
10db : a5 05 __ LDA WORK + 2 
10dd : c9 0a __ CMP #$0a
10df : b0 04 __ BCS $10e5 ; (nformi.s32 + 0)
.s30:
10e1 : a9 30 __ LDA #$30
10e3 : 90 06 __ BCC $10eb ; (nformi.s31 + 0)
.s32:
10e5 : a0 03 __ LDY #$03
10e7 : b1 0d __ LDA (P0),y ; (si + 0)
10e9 : e9 0a __ SBC #$0a
.s31:
10eb : 18 __ __ CLC
10ec : 65 05 __ ADC WORK + 2 
10ee : a6 45 __ LDX T7 + 0 
10f0 : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
10f3 : c6 45 __ DEC T7 + 0 
10f5 : a5 1b __ LDA ACCU + 0 
10f7 : 05 1c __ ORA ACCU + 1 
10f9 : d0 d5 __ BNE $10d0 ; (nformi.l29 + 0)
.s6:
10fb : a0 02 __ LDY #$02
10fd : b1 0d __ LDA (P0),y ; (si + 0)
10ff : c9 ff __ CMP #$ff
1101 : d0 04 __ BNE $1107 ; (nformi.s27 + 0)
.s7:
1103 : a9 0f __ LDA #$0f
1105 : d0 05 __ BNE $110c ; (nformi.s39 + 0)
.s27:
1107 : 38 __ __ SEC
1108 : a9 10 __ LDA #$10
110a : f1 0d __ SBC (P0),y ; (si + 0)
.s39:
110c : c5 45 __ CMP T7 + 0 
110e : b0 0e __ BCS $111e ; (nformi.s8 + 0)
.s26:
1110 : a8 __ __ TAY
1111 : a9 30 __ LDA #$30
.l40:
1113 : a6 45 __ LDX T7 + 0 
1115 : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
1118 : c6 45 __ DEC T7 + 0 
111a : c4 45 __ CPY T7 + 0 
111c : 90 f5 __ BCC $1113 ; (nformi.l40 + 0)
.s8:
111e : a0 07 __ LDY #$07
1120 : b1 0d __ LDA (P0),y ; (si + 0)
1122 : f0 1c __ BEQ $1140 ; (nformi.s9 + 0)
.s24:
1124 : a5 44 __ LDA T6 + 0 
1126 : c9 10 __ CMP #$10
1128 : d0 16 __ BNE $1140 ; (nformi.s9 + 0)
.s25:
112a : a0 03 __ LDY #$03
112c : b1 0d __ LDA (P0),y ; (si + 0)
112e : a8 __ __ TAY
112f : a9 30 __ LDA #$30
1131 : a6 45 __ LDX T7 + 0 
1133 : 9d de 9f STA $9fde,x ; (si.left + 0)
1136 : 98 __ __ TYA
1137 : 69 16 __ ADC #$16
1139 : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
113c : ca __ __ DEX
113d : ca __ __ DEX
113e : 86 45 __ STX T7 + 0 
.s9:
1140 : a9 00 __ LDA #$00
1142 : 85 1b __ STA ACCU + 0 
1144 : a5 43 __ LDA T5 + 0 
1146 : f0 0c __ BEQ $1154 ; (nformi.s10 + 0)
.s23:
1148 : a9 2d __ LDA #$2d
.s22:
114a : a6 45 __ LDX T7 + 0 
114c : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
114f : c6 45 __ DEC T7 + 0 
1151 : 4c 5e 11 JMP $115e ; (nformi.s11 + 0)
.s10:
1154 : a0 05 __ LDY #$05
1156 : b1 0d __ LDA (P0),y ; (si + 0)
1158 : f0 04 __ BEQ $115e ; (nformi.s11 + 0)
.s21:
115a : a9 2b __ LDA #$2b
115c : d0 ec __ BNE $114a ; (nformi.s22 + 0)
.s11:
115e : a0 06 __ LDY #$06
1160 : a6 45 __ LDX T7 + 0 
1162 : b1 0d __ LDA (P0),y ; (si + 0)
1164 : d0 2b __ BNE $1191 ; (nformi.s17 + 0)
.l12:
1166 : 8a __ __ TXA
1167 : 18 __ __ CLC
1168 : a0 01 __ LDY #$01
116a : 71 0d __ ADC (P0),y ; (si + 0)
116c : b0 04 __ BCS $1172 ; (nformi.s15 + 0)
.s16:
116e : c9 11 __ CMP #$11
1170 : 90 0a __ BCC $117c ; (nformi.s13 + 0)
.s15:
1172 : a0 00 __ LDY #$00
1174 : b1 0d __ LDA (P0),y ; (si + 0)
1176 : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
1179 : ca __ __ DEX
117a : b0 ea __ BCS $1166 ; (nformi.l12 + 0)
.s13:
117c : e0 10 __ CPX #$10
117e : b0 0e __ BCS $118e ; (nformi.s41 + 0)
.s14:
1180 : 88 __ __ DEY
.l37:
1181 : bd e0 9f LDA $9fe0,x ; (buffer[0] + 0)
1184 : 91 0f __ STA (P2),y ; (str + 0)
1186 : c8 __ __ INY
1187 : e8 __ __ INX
1188 : e0 10 __ CPX #$10
118a : 90 f5 __ BCC $1181 ; (nformi.l37 + 0)
.s38:
118c : 84 1b __ STY ACCU + 0 
.s41:
118e : a5 1b __ LDA ACCU + 0 
.s3:
1190 : 60 __ __ RTS
.s17:
1191 : e0 10 __ CPX #$10
1193 : b0 1a __ BCS $11af ; (nformi.l18 + 0)
.s20:
1195 : a0 00 __ LDY #$00
.l35:
1197 : bd e0 9f LDA $9fe0,x ; (buffer[0] + 0)
119a : 91 0f __ STA (P2),y ; (str + 0)
119c : c8 __ __ INY
119d : e8 __ __ INX
119e : e0 10 __ CPX #$10
11a0 : 90 f5 __ BCC $1197 ; (nformi.l35 + 0)
.s36:
11a2 : 84 1b __ STY ACCU + 0 
11a4 : b0 09 __ BCS $11af ; (nformi.l18 + 0)
.s19:
11a6 : 88 __ __ DEY
11a7 : b1 0d __ LDA (P0),y ; (si + 0)
11a9 : a4 1b __ LDY ACCU + 0 
11ab : 91 0f __ STA (P2),y ; (str + 0)
11ad : e6 1b __ INC ACCU + 0 
.l18:
11af : a5 1b __ LDA ACCU + 0 
11b1 : a0 01 __ LDY #$01
11b3 : d1 0d __ CMP (P0),y ; (si + 0)
11b5 : 90 ef __ BCC $11a6 ; (nformi.s19 + 0)
11b7 : 60 __ __ RTS
--------------------------------------------------------------------
nforml: ; nforml(const struct sinfo*,u8*,i32,bool)->u8
; 137, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s4:
11b8 : a9 00 __ LDA #$00
11ba : 85 43 __ STA T4 + 0 
11bc : a5 15 __ LDA P8 ; (s + 0)
11be : f0 1f __ BEQ $11df ; (nforml.s5 + 0)
.s35:
11c0 : 24 14 __ BIT P7 ; (v + 3)
11c2 : 10 1b __ BPL $11df ; (nforml.s5 + 0)
.s36:
11c4 : 38 __ __ SEC
11c5 : a9 00 __ LDA #$00
11c7 : e5 11 __ SBC P4 ; (v + 0)
11c9 : 85 11 __ STA P4 ; (v + 0)
11cb : a9 00 __ LDA #$00
11cd : e5 12 __ SBC P5 ; (v + 1)
11cf : 85 12 __ STA P5 ; (v + 1)
11d1 : a9 00 __ LDA #$00
11d3 : e5 13 __ SBC P6 ; (v + 2)
11d5 : 85 13 __ STA P6 ; (v + 2)
11d7 : a9 00 __ LDA #$00
11d9 : e5 14 __ SBC P7 ; (v + 3)
11db : 85 14 __ STA P7 ; (v + 3)
11dd : e6 43 __ INC T4 + 0 
.s5:
11df : a9 10 __ LDA #$10
11e1 : 85 44 __ STA T5 + 0 
11e3 : a5 14 __ LDA P7 ; (v + 3)
11e5 : f0 03 __ BEQ $11ea ; (nforml.s31 + 0)
11e7 : 4c b2 12 JMP $12b2 ; (nforml.l28 + 0)
.s31:
11ea : a5 13 __ LDA P6 ; (v + 2)
11ec : d0 f9 __ BNE $11e7 ; (nforml.s5 + 8)
.s32:
11ee : a5 12 __ LDA P5 ; (v + 1)
11f0 : d0 f5 __ BNE $11e7 ; (nforml.s5 + 8)
.s33:
11f2 : c5 11 __ CMP P4 ; (v + 0)
11f4 : 90 f1 __ BCC $11e7 ; (nforml.s5 + 8)
.s6:
11f6 : a0 02 __ LDY #$02
11f8 : b1 0d __ LDA (P0),y ; (si + 0)
11fa : c9 ff __ CMP #$ff
11fc : d0 04 __ BNE $1202 ; (nforml.s27 + 0)
.s7:
11fe : a9 0f __ LDA #$0f
1200 : d0 05 __ BNE $1207 ; (nforml.s41 + 0)
.s27:
1202 : 38 __ __ SEC
1203 : a9 10 __ LDA #$10
1205 : f1 0d __ SBC (P0),y ; (si + 0)
.s41:
1207 : c5 44 __ CMP T5 + 0 
1209 : b0 0e __ BCS $1219 ; (nforml.s8 + 0)
.s26:
120b : a8 __ __ TAY
120c : a9 30 __ LDA #$30
.l42:
120e : a6 44 __ LDX T5 + 0 
1210 : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
1213 : c6 44 __ DEC T5 + 0 
1215 : c4 44 __ CPY T5 + 0 
1217 : 90 f5 __ BCC $120e ; (nforml.l42 + 0)
.s8:
1219 : a0 07 __ LDY #$07
121b : b1 0d __ LDA (P0),y ; (si + 0)
121d : f0 1d __ BEQ $123c ; (nforml.s9 + 0)
.s24:
121f : a0 04 __ LDY #$04
1221 : b1 0d __ LDA (P0),y ; (si + 0)
1223 : c9 10 __ CMP #$10
1225 : d0 15 __ BNE $123c ; (nforml.s9 + 0)
.s25:
1227 : 88 __ __ DEY
1228 : b1 0d __ LDA (P0),y ; (si + 0)
122a : a8 __ __ TAY
122b : a9 30 __ LDA #$30
122d : a6 44 __ LDX T5 + 0 
122f : 9d de 9f STA $9fde,x ; (si.left + 0)
1232 : 98 __ __ TYA
1233 : 69 16 __ ADC #$16
1235 : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
1238 : ca __ __ DEX
1239 : ca __ __ DEX
123a : 86 44 __ STX T5 + 0 
.s9:
123c : a9 00 __ LDA #$00
123e : 85 1b __ STA ACCU + 0 
1240 : a5 43 __ LDA T4 + 0 
1242 : f0 0c __ BEQ $1250 ; (nforml.s10 + 0)
.s23:
1244 : a9 2d __ LDA #$2d
.s22:
1246 : a6 44 __ LDX T5 + 0 
1248 : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
124b : c6 44 __ DEC T5 + 0 
124d : 4c 5a 12 JMP $125a ; (nforml.s11 + 0)
.s10:
1250 : a0 05 __ LDY #$05
1252 : b1 0d __ LDA (P0),y ; (si + 0)
1254 : f0 04 __ BEQ $125a ; (nforml.s11 + 0)
.s21:
1256 : a9 2b __ LDA #$2b
1258 : d0 ec __ BNE $1246 ; (nforml.s22 + 0)
.s11:
125a : a6 44 __ LDX T5 + 0 
125c : a0 06 __ LDY #$06
125e : b1 0d __ LDA (P0),y ; (si + 0)
1260 : d0 29 __ BNE $128b ; (nforml.s17 + 0)
.l12:
1262 : 8a __ __ TXA
1263 : 18 __ __ CLC
1264 : a0 01 __ LDY #$01
1266 : 71 0d __ ADC (P0),y ; (si + 0)
1268 : b0 04 __ BCS $126e ; (nforml.s15 + 0)
.s16:
126a : c9 11 __ CMP #$11
126c : 90 0a __ BCC $1278 ; (nforml.s13 + 0)
.s15:
126e : a0 00 __ LDY #$00
1270 : b1 0d __ LDA (P0),y ; (si + 0)
1272 : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
1275 : ca __ __ DEX
1276 : b0 ea __ BCS $1262 ; (nforml.l12 + 0)
.s13:
1278 : e0 10 __ CPX #$10
127a : b0 0e __ BCS $128a ; (nforml.s3 + 0)
.s14:
127c : 88 __ __ DEY
.l39:
127d : bd e0 9f LDA $9fe0,x ; (buffer[0] + 0)
1280 : 91 0f __ STA (P2),y ; (str + 0)
1282 : c8 __ __ INY
1283 : e8 __ __ INX
1284 : e0 10 __ CPX #$10
1286 : 90 f5 __ BCC $127d ; (nforml.l39 + 0)
.s40:
1288 : 84 1b __ STY ACCU + 0 
.s3:
128a : 60 __ __ RTS
.s17:
128b : e0 10 __ CPX #$10
128d : b0 1a __ BCS $12a9 ; (nforml.l18 + 0)
.s20:
128f : a0 00 __ LDY #$00
.l37:
1291 : bd e0 9f LDA $9fe0,x ; (buffer[0] + 0)
1294 : 91 0f __ STA (P2),y ; (str + 0)
1296 : c8 __ __ INY
1297 : e8 __ __ INX
1298 : e0 10 __ CPX #$10
129a : 90 f5 __ BCC $1291 ; (nforml.l37 + 0)
.s38:
129c : 84 1b __ STY ACCU + 0 
129e : b0 09 __ BCS $12a9 ; (nforml.l18 + 0)
.s19:
12a0 : 88 __ __ DEY
12a1 : b1 0d __ LDA (P0),y ; (si + 0)
12a3 : a4 1b __ LDY ACCU + 0 
12a5 : 91 0f __ STA (P2),y ; (str + 0)
12a7 : e6 1b __ INC ACCU + 0 
.l18:
12a9 : a5 1b __ LDA ACCU + 0 
12ab : a0 01 __ LDY #$01
12ad : d1 0d __ CMP (P0),y ; (si + 0)
12af : 90 ef __ BCC $12a0 ; (nforml.s19 + 0)
12b1 : 60 __ __ RTS
.l28:
12b2 : a0 04 __ LDY #$04
12b4 : b1 0d __ LDA (P0),y ; (si + 0)
12b6 : 85 03 __ STA WORK + 0 
12b8 : a5 11 __ LDA P4 ; (v + 0)
12ba : 85 1b __ STA ACCU + 0 
12bc : a5 12 __ LDA P5 ; (v + 1)
12be : 85 1c __ STA ACCU + 1 
12c0 : a5 13 __ LDA P6 ; (v + 2)
12c2 : 85 1d __ STA ACCU + 2 
12c4 : a5 14 __ LDA P7 ; (v + 3)
12c6 : 85 1e __ STA ACCU + 3 
12c8 : a9 00 __ LDA #$00
12ca : 85 04 __ STA WORK + 1 
12cc : 85 05 __ STA WORK + 2 
12ce : 85 06 __ STA WORK + 3 
12d0 : 20 1a 23 JSR $231a ; (divmod32 + 0)
12d3 : a5 07 __ LDA WORK + 4 
12d5 : c9 0a __ CMP #$0a
12d7 : b0 04 __ BCS $12dd ; (nforml.s34 + 0)
.s29:
12d9 : a9 30 __ LDA #$30
12db : 90 06 __ BCC $12e3 ; (nforml.s30 + 0)
.s34:
12dd : a0 03 __ LDY #$03
12df : b1 0d __ LDA (P0),y ; (si + 0)
12e1 : e9 0a __ SBC #$0a
.s30:
12e3 : 18 __ __ CLC
12e4 : 65 07 __ ADC WORK + 4 
12e6 : a6 44 __ LDX T5 + 0 
12e8 : 9d df 9f STA $9fdf,x ; (si.prefix + 0)
12eb : c6 44 __ DEC T5 + 0 
12ed : a5 1b __ LDA ACCU + 0 
12ef : 85 11 __ STA P4 ; (v + 0)
12f1 : a5 1c __ LDA ACCU + 1 
12f3 : 85 12 __ STA P5 ; (v + 1)
12f5 : a5 1d __ LDA ACCU + 2 
12f7 : 85 13 __ STA P6 ; (v + 2)
12f9 : a5 1e __ LDA ACCU + 3 
12fb : 85 14 __ STA P7 ; (v + 3)
12fd : d0 b3 __ BNE $12b2 ; (nforml.l28 + 0)
12ff : 4c ea 11 JMP $11ea ; (nforml.s31 + 0)
--------------------------------------------------------------------
nformf: ; nformf(const struct sinfo*,u8*,float,u8)->u8
; 199, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s1:
1302 : a2 03 __ LDX #$03
1304 : b5 53 __ LDA T7 + 0,x 
1306 : 9d e7 9f STA $9fe7,x ; (nformf@stack + 0)
1309 : ca __ __ DEX
130a : 10 f8 __ BPL $1304 ; (nformf.s1 + 2)
.s4:
130c : a5 16 __ LDA P9 ; (f + 1)
130e : 85 44 __ STA T0 + 1 
1310 : a5 17 __ LDA P10 ; (f + 2)
1312 : 85 45 __ STA T0 + 2 
1314 : a5 18 __ LDA P11 ; (f + 3)
1316 : 29 7f __ AND #$7f
1318 : 05 17 __ ORA P10 ; (f + 2)
131a : 05 16 __ ORA P9 ; (f + 1)
131c : 05 15 __ ORA P8 ; (f + 0)
131e : f0 21 __ BEQ $1341 ; (nformf.s5 + 0)
.s107:
1320 : 24 18 __ BIT P11 ; (f + 3)
1322 : 10 1d __ BPL $1341 ; (nformf.s5 + 0)
.s106:
1324 : a9 2d __ LDA #$2d
1326 : a0 00 __ LDY #$00
1328 : 91 13 __ STA (P6),y ; (str + 0)
132a : a5 18 __ LDA P11 ; (f + 3)
132c : 49 80 __ EOR #$80
132e : 85 10 __ STA P3 
1330 : 85 18 __ STA P11 ; (f + 3)
1332 : a5 15 __ LDA P8 ; (f + 0)
1334 : 85 0d __ STA P0 
1336 : a5 16 __ LDA P9 ; (f + 1)
1338 : 85 0e __ STA P1 
133a : a5 17 __ LDA P10 ; (f + 2)
133c : 85 0f __ STA P2 
133e : 4c 58 18 JMP $1858 ; (nformf.s104 + 0)
.s5:
1341 : a5 15 __ LDA P8 ; (f + 0)
1343 : 85 0d __ STA P0 
1345 : a5 16 __ LDA P9 ; (f + 1)
1347 : 85 0e __ STA P1 
1349 : a5 17 __ LDA P10 ; (f + 2)
134b : 85 0f __ STA P2 
134d : a5 18 __ LDA P11 ; (f + 3)
134f : 85 10 __ STA P3 
1351 : a0 05 __ LDY #$05
1353 : b1 11 __ LDA (P4),y ; (si + 0)
1355 : f0 09 __ BEQ $1360 ; (nformf.s6 + 0)
.s103:
1357 : a9 2b __ LDA #$2b
1359 : a0 00 __ LDY #$00
135b : 91 13 __ STA (P6),y ; (str + 0)
135d : 4c 58 18 JMP $1858 ; (nformf.s104 + 0)
.s6:
1360 : 20 69 18 JSR $1869 ; (isinf.s4 + 0)
1363 : a2 00 __ LDX #$00
1365 : 86 54 __ STX T9 + 0 
1367 : a8 __ __ TAY
1368 : f0 05 __ BEQ $136f ; (nformf.s7 + 0)
.s101:
136a : a9 02 __ LDA #$02
136c : 4c 1f 18 JMP $181f ; (nformf.s102 + 0)
.s7:
136f : a5 11 __ LDA P4 ; (si + 0)
1371 : 85 4b __ STA T2 + 0 
1373 : a5 12 __ LDA P5 ; (si + 1)
1375 : 85 4c __ STA T2 + 1 
1377 : a0 02 __ LDY #$02
1379 : b1 11 __ LDA (P4),y ; (si + 0)
137b : c9 ff __ CMP #$ff
137d : d0 02 __ BNE $1381 ; (nformf.s100 + 0)
.s8:
137f : a9 06 __ LDA #$06
.s100:
1381 : 85 4d __ STA T3 + 0 
1383 : 85 52 __ STA T6 + 0 
1385 : a9 00 __ LDA #$00
1387 : 85 4f __ STA T4 + 0 
1389 : 85 50 __ STA T4 + 1 
138b : a5 18 __ LDA P11 ; (f + 3)
138d : 85 46 __ STA T0 + 3 
138f : 29 7f __ AND #$7f
1391 : 05 17 __ ORA P10 ; (f + 2)
1393 : 05 16 __ ORA P9 ; (f + 1)
1395 : a6 15 __ LDX P8 ; (f + 0)
1397 : 86 43 __ STX T0 + 0 
1399 : 05 15 __ ORA P8 ; (f + 0)
139b : d0 03 __ BNE $13a0 ; (nformf.s67 + 0)
139d : 4c d4 14 JMP $14d4 ; (nformf.s9 + 0)
.s67:
13a0 : a5 18 __ LDA P11 ; (f + 3)
13a2 : 10 03 __ BPL $13a7 ; (nformf.s95 + 0)
13a4 : 4c 26 14 JMP $1426 ; (nformf.l80 + 0)
.s95:
13a7 : c9 44 __ CMP #$44
13a9 : d0 0d __ BNE $13b8 ; (nformf.l99 + 0)
.s96:
13ab : a5 17 __ LDA P10 ; (f + 2)
13ad : c9 7a __ CMP #$7a
13af : d0 07 __ BNE $13b8 ; (nformf.l99 + 0)
.s97:
13b1 : a5 16 __ LDA P9 ; (f + 1)
13b3 : d0 03 __ BNE $13b8 ; (nformf.l99 + 0)
.s98:
13b5 : 8a __ __ TXA
13b6 : f0 02 __ BEQ $13ba ; (nformf.l90 + 0)
.l99:
13b8 : 90 54 __ BCC $140e ; (nformf.s68 + 0)
.l90:
13ba : 18 __ __ CLC
13bb : a5 4f __ LDA T4 + 0 
13bd : 69 03 __ ADC #$03
13bf : 85 4f __ STA T4 + 0 
13c1 : 90 02 __ BCC $13c5 ; (nformf.s121 + 0)
.s120:
13c3 : e6 50 __ INC T4 + 1 
.s121:
13c5 : a5 43 __ LDA T0 + 0 
13c7 : 85 1b __ STA ACCU + 0 
13c9 : a5 44 __ LDA T0 + 1 
13cb : 85 1c __ STA ACCU + 1 
13cd : a5 45 __ LDA T0 + 2 
13cf : 85 1d __ STA ACCU + 2 
13d1 : a5 46 __ LDA T0 + 3 
13d3 : 85 1e __ STA ACCU + 3 
13d5 : a9 00 __ LDA #$00
13d7 : 85 03 __ STA WORK + 0 
13d9 : 85 04 __ STA WORK + 1 
13db : a9 7a __ LDA #$7a
13dd : 85 05 __ STA WORK + 2 
13df : a9 44 __ LDA #$44
13e1 : 85 06 __ STA WORK + 3 
13e3 : 20 0b 1f JSR $1f0b ; (freg + 20)
13e6 : 20 f1 20 JSR $20f1 ; (crt_fdiv + 0)
13e9 : a5 1b __ LDA ACCU + 0 
13eb : 85 43 __ STA T0 + 0 
13ed : a5 1c __ LDA ACCU + 1 
13ef : 85 44 __ STA T0 + 1 
13f1 : a6 1d __ LDX ACCU + 2 
13f3 : 86 45 __ STX T0 + 2 
13f5 : a5 1e __ LDA ACCU + 3 
13f7 : 85 46 __ STA T0 + 3 
13f9 : 30 13 __ BMI $140e ; (nformf.s68 + 0)
.s91:
13fb : c9 44 __ CMP #$44
13fd : d0 b9 __ BNE $13b8 ; (nformf.l99 + 0)
.s92:
13ff : e0 7a __ CPX #$7a
1401 : d0 b5 __ BNE $13b8 ; (nformf.l99 + 0)
.s93:
1403 : a5 1c __ LDA ACCU + 1 
1405 : 38 __ __ SEC
1406 : d0 b0 __ BNE $13b8 ; (nformf.l99 + 0)
.s94:
1408 : a5 1b __ LDA ACCU + 0 
140a : f0 ae __ BEQ $13ba ; (nformf.l90 + 0)
140c : d0 aa __ BNE $13b8 ; (nformf.l99 + 0)
.s68:
140e : a5 46 __ LDA T0 + 3 
1410 : 30 14 __ BMI $1426 ; (nformf.l80 + 0)
.s86:
1412 : c9 3f __ CMP #$3f
1414 : d0 0e __ BNE $1424 ; (nformf.s85 + 0)
.s87:
1416 : a5 45 __ LDA T0 + 2 
1418 : c9 80 __ CMP #$80
141a : d0 08 __ BNE $1424 ; (nformf.s85 + 0)
.s88:
141c : a5 44 __ LDA T0 + 1 
141e : d0 04 __ BNE $1424 ; (nformf.s85 + 0)
.s89:
1420 : a5 43 __ LDA T0 + 0 
1422 : f0 49 __ BEQ $146d ; (nformf.s69 + 0)
.s85:
1424 : b0 47 __ BCS $146d ; (nformf.s69 + 0)
.l80:
1426 : 38 __ __ SEC
1427 : a5 4f __ LDA T4 + 0 
1429 : e9 03 __ SBC #$03
142b : 85 4f __ STA T4 + 0 
142d : b0 02 __ BCS $1431 ; (nformf.s116 + 0)
.s115:
142f : c6 50 __ DEC T4 + 1 
.s116:
1431 : a9 00 __ LDA #$00
1433 : 85 1b __ STA ACCU + 0 
1435 : 85 1c __ STA ACCU + 1 
1437 : a9 7a __ LDA #$7a
1439 : 85 1d __ STA ACCU + 2 
143b : a9 44 __ LDA #$44
143d : 85 1e __ STA ACCU + 3 
143f : a2 43 __ LDX #$43
1441 : 20 fb 1e JSR $1efb ; (freg + 4)
1444 : 20 29 20 JSR $2029 ; (crt_fmul + 0)
1447 : a5 1b __ LDA ACCU + 0 
1449 : 85 43 __ STA T0 + 0 
144b : a5 1c __ LDA ACCU + 1 
144d : 85 44 __ STA T0 + 1 
144f : a6 1d __ LDX ACCU + 2 
1451 : 86 45 __ STX T0 + 2 
1453 : a5 1e __ LDA ACCU + 3 
1455 : 85 46 __ STA T0 + 3 
1457 : 30 cd __ BMI $1426 ; (nformf.l80 + 0)
.s81:
1459 : c9 3f __ CMP #$3f
145b : 90 c9 __ BCC $1426 ; (nformf.l80 + 0)
.s122:
145d : d0 0e __ BNE $146d ; (nformf.s69 + 0)
.s82:
145f : e0 80 __ CPX #$80
1461 : 90 c3 __ BCC $1426 ; (nformf.l80 + 0)
.s123:
1463 : d0 08 __ BNE $146d ; (nformf.s69 + 0)
.s83:
1465 : a5 1c __ LDA ACCU + 1 
1467 : d0 bb __ BNE $1424 ; (nformf.s85 + 0)
.s84:
1469 : a5 1b __ LDA ACCU + 0 
146b : d0 b7 __ BNE $1424 ; (nformf.s85 + 0)
.s69:
146d : a5 46 __ LDA T0 + 3 
146f : 30 63 __ BMI $14d4 ; (nformf.s9 + 0)
.s75:
1471 : c9 41 __ CMP #$41
1473 : d0 0e __ BNE $1483 ; (nformf.l79 + 0)
.s76:
1475 : a5 45 __ LDA T0 + 2 
1477 : c9 20 __ CMP #$20
1479 : d0 08 __ BNE $1483 ; (nformf.l79 + 0)
.s77:
147b : a5 44 __ LDA T0 + 1 
147d : d0 04 __ BNE $1483 ; (nformf.l79 + 0)
.s78:
147f : a5 43 __ LDA T0 + 0 
1481 : f0 02 __ BEQ $1485 ; (nformf.l70 + 0)
.l79:
1483 : 90 4f __ BCC $14d4 ; (nformf.s9 + 0)
.l70:
1485 : e6 4f __ INC T4 + 0 
1487 : d0 02 __ BNE $148b ; (nformf.s119 + 0)
.s118:
1489 : e6 50 __ INC T4 + 1 
.s119:
148b : a5 43 __ LDA T0 + 0 
148d : 85 1b __ STA ACCU + 0 
148f : a5 44 __ LDA T0 + 1 
1491 : 85 1c __ STA ACCU + 1 
1493 : a5 45 __ LDA T0 + 2 
1495 : 85 1d __ STA ACCU + 2 
1497 : a5 46 __ LDA T0 + 3 
1499 : 85 1e __ STA ACCU + 3 
149b : a9 00 __ LDA #$00
149d : 85 03 __ STA WORK + 0 
149f : 85 04 __ STA WORK + 1 
14a1 : a9 20 __ LDA #$20
14a3 : 85 05 __ STA WORK + 2 
14a5 : a9 41 __ LDA #$41
14a7 : 85 06 __ STA WORK + 3 
14a9 : 20 0b 1f JSR $1f0b ; (freg + 20)
14ac : 20 f1 20 JSR $20f1 ; (crt_fdiv + 0)
14af : a5 1b __ LDA ACCU + 0 
14b1 : 85 43 __ STA T0 + 0 
14b3 : a5 1c __ LDA ACCU + 1 
14b5 : 85 44 __ STA T0 + 1 
14b7 : a6 1d __ LDX ACCU + 2 
14b9 : 86 45 __ STX T0 + 2 
14bb : a5 1e __ LDA ACCU + 3 
14bd : 85 46 __ STA T0 + 3 
14bf : 30 13 __ BMI $14d4 ; (nformf.s9 + 0)
.s71:
14c1 : c9 41 __ CMP #$41
14c3 : d0 be __ BNE $1483 ; (nformf.l79 + 0)
.s72:
14c5 : e0 20 __ CPX #$20
14c7 : d0 ba __ BNE $1483 ; (nformf.l79 + 0)
.s73:
14c9 : a5 1c __ LDA ACCU + 1 
14cb : 38 __ __ SEC
14cc : d0 b5 __ BNE $1483 ; (nformf.l79 + 0)
.s74:
14ce : a5 1b __ LDA ACCU + 0 
14d0 : f0 b3 __ BEQ $1485 ; (nformf.l70 + 0)
14d2 : d0 af __ BNE $1483 ; (nformf.l79 + 0)
.s9:
14d4 : ad f0 9f LDA $9ff0 ; (sstack + 0)
14d7 : c9 65 __ CMP #$65
14d9 : d0 04 __ BNE $14df ; (nformf.s11 + 0)
.s10:
14db : a9 01 __ LDA #$01
14dd : d0 02 __ BNE $14e1 ; (nformf.s12 + 0)
.s11:
14df : a9 00 __ LDA #$00
.s12:
14e1 : 85 55 __ STA T10 + 0 
14e3 : a6 4d __ LDX T3 + 0 
14e5 : e8 __ __ INX
14e6 : 86 51 __ STX T5 + 0 
14e8 : ad f0 9f LDA $9ff0 ; (sstack + 0)
14eb : c9 67 __ CMP #$67
14ed : d0 13 __ BNE $1502 ; (nformf.s13 + 0)
.s63:
14ef : a5 50 __ LDA T4 + 1 
14f1 : 30 08 __ BMI $14fb ; (nformf.s64 + 0)
.s66:
14f3 : d0 06 __ BNE $14fb ; (nformf.s64 + 0)
.s65:
14f5 : a5 4f __ LDA T4 + 0 
14f7 : c9 04 __ CMP #$04
14f9 : 90 07 __ BCC $1502 ; (nformf.s13 + 0)
.s64:
14fb : a9 01 __ LDA #$01
14fd : 85 55 __ STA T10 + 0 
14ff : 4c 85 17 JMP $1785 ; (nformf.s53 + 0)
.s13:
1502 : a5 55 __ LDA T10 + 0 
1504 : d0 f9 __ BNE $14ff ; (nformf.s64 + 4)
.s14:
1506 : 24 50 __ BIT T4 + 1 
1508 : 10 43 __ BPL $154d ; (nformf.s15 + 0)
.s52:
150a : a5 43 __ LDA T0 + 0 
150c : 85 1b __ STA ACCU + 0 
150e : a5 44 __ LDA T0 + 1 
1510 : 85 1c __ STA ACCU + 1 
1512 : a5 45 __ LDA T0 + 2 
1514 : 85 1d __ STA ACCU + 2 
1516 : a5 46 __ LDA T0 + 3 
1518 : 85 1e __ STA ACCU + 3 
.l108:
151a : a9 00 __ LDA #$00
151c : 85 03 __ STA WORK + 0 
151e : 85 04 __ STA WORK + 1 
1520 : a9 20 __ LDA #$20
1522 : 85 05 __ STA WORK + 2 
1524 : a9 41 __ LDA #$41
1526 : 85 06 __ STA WORK + 3 
1528 : 20 0b 1f JSR $1f0b ; (freg + 20)
152b : 20 f1 20 JSR $20f1 ; (crt_fdiv + 0)
152e : 18 __ __ CLC
152f : a5 4f __ LDA T4 + 0 
1531 : 69 01 __ ADC #$01
1533 : 85 4f __ STA T4 + 0 
1535 : a5 50 __ LDA T4 + 1 
1537 : 69 00 __ ADC #$00
1539 : 85 50 __ STA T4 + 1 
153b : 30 dd __ BMI $151a ; (nformf.l108 + 0)
.s109:
153d : a5 1e __ LDA ACCU + 3 
153f : 85 46 __ STA T0 + 3 
1541 : a5 1d __ LDA ACCU + 2 
1543 : 85 45 __ STA T0 + 2 
1545 : a5 1c __ LDA ACCU + 1 
1547 : 85 44 __ STA T0 + 1 
1549 : a5 1b __ LDA ACCU + 0 
154b : 85 43 __ STA T0 + 0 
.s15:
154d : 18 __ __ CLC
154e : a5 4d __ LDA T3 + 0 
1550 : 65 4f __ ADC T4 + 0 
1552 : 18 __ __ CLC
1553 : 69 01 __ ADC #$01
1555 : 85 51 __ STA T5 + 0 
1557 : c9 07 __ CMP #$07
1559 : 90 14 __ BCC $156f ; (nformf.s51 + 0)
.s16:
155b : ad 1b 24 LDA $241b ; (fround5[0] + 24)
155e : 85 47 __ STA T1 + 0 
1560 : ad 1c 24 LDA $241c ; (fround5[0] + 25)
1563 : 85 48 __ STA T1 + 1 
1565 : ad 1d 24 LDA $241d ; (fround5[0] + 26)
1568 : 85 49 __ STA T1 + 2 
156a : ad 1e 24 LDA $241e ; (fround5[0] + 27)
156d : b0 15 __ BCS $1584 ; (nformf.s17 + 0)
.s51:
156f : 0a __ __ ASL
1570 : 0a __ __ ASL
1571 : aa __ __ TAX
1572 : bd ff 23 LDA $23ff,x ; (divmod32 + 229)
1575 : 85 47 __ STA T1 + 0 
1577 : bd 00 24 LDA $2400,x ; (divmod32 + 230)
157a : 85 48 __ STA T1 + 1 
157c : bd 01 24 LDA $2401,x ; (spentry + 0)
157f : 85 49 __ STA T1 + 2 
1581 : bd 02 24 LDA $2402,x ; (giocharmap + 0)
.s17:
1584 : 85 4a __ STA T1 + 3 
1586 : a5 43 __ LDA T0 + 0 
1588 : 85 1b __ STA ACCU + 0 
158a : a5 44 __ LDA T0 + 1 
158c : 85 1c __ STA ACCU + 1 
158e : a5 45 __ LDA T0 + 2 
1590 : 85 1d __ STA ACCU + 2 
1592 : a5 46 __ LDA T0 + 3 
1594 : 85 1e __ STA ACCU + 3 
1596 : a2 47 __ LDX #$47
1598 : 20 fb 1e JSR $1efb ; (freg + 4)
159b : 20 42 1f JSR $1f42 ; (faddsub + 6)
159e : a5 1c __ LDA ACCU + 1 
15a0 : 85 16 __ STA P9 ; (f + 1)
15a2 : a5 1d __ LDA ACCU + 2 
15a4 : 85 17 __ STA P10 ; (f + 2)
15a6 : a6 1b __ LDX ACCU + 0 
15a8 : a5 1e __ LDA ACCU + 3 
15aa : 85 18 __ STA P11 ; (f + 3)
15ac : 30 3a __ BMI $15e8 ; (nformf.s18 + 0)
.s46:
15ae : c9 41 __ CMP #$41
15b0 : d0 0d __ BNE $15bf ; (nformf.s50 + 0)
.s47:
15b2 : a5 17 __ LDA P10 ; (f + 2)
15b4 : c9 20 __ CMP #$20
15b6 : d0 07 __ BNE $15bf ; (nformf.s50 + 0)
.s48:
15b8 : a5 16 __ LDA P9 ; (f + 1)
15ba : d0 03 __ BNE $15bf ; (nformf.s50 + 0)
.s49:
15bc : 8a __ __ TXA
15bd : f0 02 __ BEQ $15c1 ; (nformf.s45 + 0)
.s50:
15bf : 90 27 __ BCC $15e8 ; (nformf.s18 + 0)
.s45:
15c1 : a9 00 __ LDA #$00
15c3 : 85 03 __ STA WORK + 0 
15c5 : 85 04 __ STA WORK + 1 
15c7 : a9 20 __ LDA #$20
15c9 : 85 05 __ STA WORK + 2 
15cb : a9 41 __ LDA #$41
15cd : 85 06 __ STA WORK + 3 
15cf : 20 0b 1f JSR $1f0b ; (freg + 20)
15d2 : 20 f1 20 JSR $20f1 ; (crt_fdiv + 0)
15d5 : a5 1c __ LDA ACCU + 1 
15d7 : 85 16 __ STA P9 ; (f + 1)
15d9 : a5 1d __ LDA ACCU + 2 
15db : 85 17 __ STA P10 ; (f + 2)
15dd : a5 1e __ LDA ACCU + 3 
15df : 85 18 __ STA P11 ; (f + 3)
15e1 : a6 4d __ LDX T3 + 0 
15e3 : ca __ __ DEX
15e4 : 86 52 __ STX T6 + 0 
15e6 : a6 1b __ LDX ACCU + 0 
.s18:
15e8 : 38 __ __ SEC
15e9 : a5 51 __ LDA T5 + 0 
15eb : e5 52 __ SBC T6 + 0 
15ed : 85 4d __ STA T3 + 0 
15ef : a5 51 __ LDA T5 + 0 
15f1 : c9 15 __ CMP #$15
15f3 : 90 04 __ BCC $15f9 ; (nformf.s19 + 0)
.s44:
15f5 : a9 14 __ LDA #$14
15f7 : 85 51 __ STA T5 + 0 
.s19:
15f9 : a5 4d __ LDA T3 + 0 
15fb : d0 08 __ BNE $1605 ; (nformf.s21 + 0)
.s20:
15fd : a9 30 __ LDA #$30
15ff : a4 54 __ LDY T9 + 0 
1601 : 91 13 __ STA (P6),y ; (str + 0)
1603 : e6 54 __ INC T9 + 0 
.s21:
1605 : a9 00 __ LDA #$00
1607 : 85 56 __ STA T11 + 0 
1609 : c5 4d __ CMP T3 + 0 
160b : f0 6f __ BEQ $167c ; (nformf.l43 + 0)
.s23:
160d : c9 07 __ CMP #$07
160f : 90 04 __ BCC $1615 ; (nformf.s24 + 0)
.l42:
1611 : a9 30 __ LDA #$30
1613 : b0 55 __ BCS $166a ; (nformf.l25 + 0)
.s24:
1615 : 86 1b __ STX ACCU + 0 
1617 : 86 43 __ STX T0 + 0 
1619 : a5 16 __ LDA P9 ; (f + 1)
161b : 85 1c __ STA ACCU + 1 
161d : 85 44 __ STA T0 + 1 
161f : a5 17 __ LDA P10 ; (f + 2)
1621 : 85 1d __ STA ACCU + 2 
1623 : 85 45 __ STA T0 + 2 
1625 : a5 18 __ LDA P11 ; (f + 3)
1627 : 85 1e __ STA ACCU + 3 
1629 : 85 46 __ STA T0 + 3 
162b : 20 87 22 JSR $2287 ; (f32_to_i16 + 0)
162e : a5 1b __ LDA ACCU + 0 
1630 : 85 53 __ STA T7 + 0 
1632 : 20 d3 22 JSR $22d3 ; (sint16_to_float + 0)
1635 : a2 43 __ LDX #$43
1637 : 20 fb 1e JSR $1efb ; (freg + 4)
163a : a5 1e __ LDA ACCU + 3 
163c : 49 80 __ EOR #$80
163e : 85 1e __ STA ACCU + 3 
1640 : 20 42 1f JSR $1f42 ; (faddsub + 6)
1643 : a9 00 __ LDA #$00
1645 : 85 03 __ STA WORK + 0 
1647 : 85 04 __ STA WORK + 1 
1649 : a9 20 __ LDA #$20
164b : 85 05 __ STA WORK + 2 
164d : a9 41 __ LDA #$41
164f : 85 06 __ STA WORK + 3 
1651 : 20 0b 1f JSR $1f0b ; (freg + 20)
1654 : 20 29 20 JSR $2029 ; (crt_fmul + 0)
1657 : a5 1c __ LDA ACCU + 1 
1659 : 85 16 __ STA P9 ; (f + 1)
165b : a5 1d __ LDA ACCU + 2 
165d : 85 17 __ STA P10 ; (f + 2)
165f : a5 1e __ LDA ACCU + 3 
1661 : 85 18 __ STA P11 ; (f + 3)
1663 : 18 __ __ CLC
1664 : a5 53 __ LDA T7 + 0 
1666 : 69 30 __ ADC #$30
1668 : a6 1b __ LDX ACCU + 0 
.l25:
166a : a4 54 __ LDY T9 + 0 
166c : 91 13 __ STA (P6),y ; (str + 0)
166e : e6 54 __ INC T9 + 0 
1670 : e6 56 __ INC T11 + 0 
1672 : a5 56 __ LDA T11 + 0 
1674 : c5 51 __ CMP T5 + 0 
1676 : b0 14 __ BCS $168c ; (nformf.s26 + 0)
.s22:
1678 : c5 4d __ CMP T3 + 0 
167a : d0 91 __ BNE $160d ; (nformf.s23 + 0)
.l43:
167c : a9 2e __ LDA #$2e
167e : a4 54 __ LDY T9 + 0 
1680 : 91 13 __ STA (P6),y ; (str + 0)
1682 : e6 54 __ INC T9 + 0 
1684 : a5 56 __ LDA T11 + 0 
1686 : c9 07 __ CMP #$07
1688 : 90 8b __ BCC $1615 ; (nformf.s24 + 0)
168a : b0 85 __ BCS $1611 ; (nformf.l42 + 0)
.s26:
168c : a5 55 __ LDA T10 + 0 
168e : f0 66 __ BEQ $16f6 ; (nformf.s124 + 0)
.s38:
1690 : a0 03 __ LDY #$03
1692 : b1 4b __ LDA (T2 + 0),y 
1694 : 69 03 __ ADC #$03
1696 : a4 54 __ LDY T9 + 0 
1698 : 91 13 __ STA (P6),y ; (str + 0)
169a : c8 __ __ INY
169b : 84 54 __ STY T9 + 0 
169d : 24 50 __ BIT T4 + 1 
169f : 30 06 __ BMI $16a7 ; (nformf.s41 + 0)
.s39:
16a1 : a9 2b __ LDA #$2b
16a3 : 91 13 __ STA (P6),y ; (str + 0)
16a5 : d0 11 __ BNE $16b8 ; (nformf.s40 + 0)
.s41:
16a7 : a9 2d __ LDA #$2d
16a9 : 91 13 __ STA (P6),y ; (str + 0)
16ab : 38 __ __ SEC
16ac : a9 00 __ LDA #$00
16ae : e5 4f __ SBC T4 + 0 
16b0 : 85 4f __ STA T4 + 0 
16b2 : a9 00 __ LDA #$00
16b4 : e5 50 __ SBC T4 + 1 
16b6 : 85 50 __ STA T4 + 1 
.s40:
16b8 : e6 54 __ INC T9 + 0 
16ba : a5 4f __ LDA T4 + 0 
16bc : 85 1b __ STA ACCU + 0 
16be : a5 50 __ LDA T4 + 1 
16c0 : 85 1c __ STA ACCU + 1 
16c2 : a9 0a __ LDA #$0a
16c4 : 85 03 __ STA WORK + 0 
16c6 : a9 00 __ LDA #$00
16c8 : 85 04 __ STA WORK + 1 
16ca : 20 9f 21 JSR $219f ; (divs16 + 0)
16cd : 18 __ __ CLC
16ce : a5 1b __ LDA ACCU + 0 
16d0 : 69 30 __ ADC #$30
16d2 : a4 54 __ LDY T9 + 0 
16d4 : 91 13 __ STA (P6),y ; (str + 0)
16d6 : e6 54 __ INC T9 + 0 
16d8 : a5 4f __ LDA T4 + 0 
16da : 85 1b __ STA ACCU + 0 
16dc : a5 50 __ LDA T4 + 1 
16de : 85 1c __ STA ACCU + 1 
16e0 : a9 0a __ LDA #$0a
16e2 : 85 03 __ STA WORK + 0 
16e4 : a9 00 __ LDA #$00
16e6 : 85 04 __ STA WORK + 1 
16e8 : 20 5a 22 JSR $225a ; (mods16 + 0)
16eb : 18 __ __ CLC
16ec : a5 05 __ LDA WORK + 2 
16ee : 69 30 __ ADC #$30
16f0 : a4 54 __ LDY T9 + 0 
16f2 : 91 13 __ STA (P6),y ; (str + 0)
16f4 : e6 54 __ INC T9 + 0 
.s124:
16f6 : a5 54 __ LDA T9 + 0 
.s27:
16f8 : a0 01 __ LDY #$01
16fa : d1 11 __ CMP (P4),y ; (si + 0)
16fc : b0 6b __ BCS $1769 ; (nformf.s3 + 0)
.s28:
16fe : a0 06 __ LDY #$06
1700 : b1 11 __ LDA (P4),y ; (si + 0)
1702 : f0 04 __ BEQ $1708 ; (nformf.s29 + 0)
.s110:
1704 : a6 54 __ LDX T9 + 0 
1706 : 90 6e __ BCC $1776 ; (nformf.l36 + 0)
.s29:
1708 : a5 54 __ LDA T9 + 0 
170a : f0 3e __ BEQ $174a ; (nformf.s30 + 0)
.s35:
170c : e9 00 __ SBC #$00
170e : a8 __ __ TAY
170f : a9 00 __ LDA #$00
1711 : e9 00 __ SBC #$00
1713 : aa __ __ TAX
1714 : 98 __ __ TYA
1715 : 18 __ __ CLC
1716 : 65 13 __ ADC P6 ; (str + 0)
1718 : 85 47 __ STA T1 + 0 
171a : 8a __ __ TXA
171b : 65 14 __ ADC P7 ; (str + 1)
171d : 85 48 __ STA T1 + 1 
171f : a9 01 __ LDA #$01
1721 : 85 4b __ STA T2 + 0 
1723 : a6 14 __ LDX P7 ; (str + 1)
1725 : 38 __ __ SEC
.l111:
1726 : a0 01 __ LDY #$01
1728 : b1 11 __ LDA (P4),y ; (si + 0)
172a : e5 4b __ SBC T2 + 0 
172c : 85 4d __ STA T3 + 0 
172e : 8a __ __ TXA
172f : 69 ff __ ADC #$ff
1731 : 85 4e __ STA T3 + 1 
1733 : 88 __ __ DEY
1734 : b1 47 __ LDA (T1 + 0),y 
1736 : a4 13 __ LDY P6 ; (str + 0)
1738 : 91 4d __ STA (T3 + 0),y 
173a : a5 47 __ LDA T1 + 0 
173c : d0 02 __ BNE $1740 ; (nformf.s114 + 0)
.s113:
173e : c6 48 __ DEC T1 + 1 
.s114:
1740 : c6 47 __ DEC T1 + 0 
1742 : e6 4b __ INC T2 + 0 
1744 : a5 54 __ LDA T9 + 0 
1746 : c5 4b __ CMP T2 + 0 
1748 : b0 dc __ BCS $1726 ; (nformf.l111 + 0)
.s30:
174a : a9 00 __ LDA #$00
174c : 85 4d __ STA T3 + 0 
174e : 90 08 __ BCC $1758 ; (nformf.l31 + 0)
.s33:
1750 : a9 20 __ LDA #$20
1752 : a4 4d __ LDY T3 + 0 
1754 : 91 13 __ STA (P6),y ; (str + 0)
1756 : e6 4d __ INC T3 + 0 
.l31:
1758 : a0 01 __ LDY #$01
175a : b1 11 __ LDA (P4),y ; (si + 0)
175c : 38 __ __ SEC
175d : e5 54 __ SBC T9 + 0 
175f : 90 ef __ BCC $1750 ; (nformf.s33 + 0)
.s34:
1761 : c5 4d __ CMP T3 + 0 
1763 : 90 02 __ BCC $1767 ; (nformf.s32 + 0)
.s112:
1765 : d0 e9 __ BNE $1750 ; (nformf.s33 + 0)
.s32:
1767 : b1 11 __ LDA (P4),y ; (si + 0)
.s3:
1769 : 85 1b __ STA ACCU + 0 
176b : a2 03 __ LDX #$03
176d : bd e7 9f LDA $9fe7,x ; (nformf@stack + 0)
1770 : 95 53 __ STA T7 + 0,x 
1772 : ca __ __ DEX
1773 : 10 f8 __ BPL $176d ; (nformf.s3 + 4)
1775 : 60 __ __ RTS
.l36:
1776 : 8a __ __ TXA
1777 : a0 01 __ LDY #$01
1779 : d1 11 __ CMP (P4),y ; (si + 0)
177b : b0 ea __ BCS $1767 ; (nformf.s32 + 0)
.s37:
177d : a8 __ __ TAY
177e : a9 20 __ LDA #$20
1780 : 91 13 __ STA (P6),y ; (str + 0)
1782 : e8 __ __ INX
1783 : 90 f1 __ BCC $1776 ; (nformf.l36 + 0)
.s53:
1785 : a5 51 __ LDA T5 + 0 
1787 : c9 07 __ CMP #$07
1789 : 90 14 __ BCC $179f ; (nformf.s62 + 0)
.s54:
178b : ad 1b 24 LDA $241b ; (fround5[0] + 24)
178e : 85 47 __ STA T1 + 0 
1790 : ad 1c 24 LDA $241c ; (fround5[0] + 25)
1793 : 85 48 __ STA T1 + 1 
1795 : ad 1d 24 LDA $241d ; (fround5[0] + 26)
1798 : 85 49 __ STA T1 + 2 
179a : ad 1e 24 LDA $241e ; (fround5[0] + 27)
179d : b0 15 __ BCS $17b4 ; (nformf.s55 + 0)
.s62:
179f : 0a __ __ ASL
17a0 : 0a __ __ ASL
17a1 : aa __ __ TAX
17a2 : bd ff 23 LDA $23ff,x ; (divmod32 + 229)
17a5 : 85 47 __ STA T1 + 0 
17a7 : bd 00 24 LDA $2400,x ; (divmod32 + 230)
17aa : 85 48 __ STA T1 + 1 
17ac : bd 01 24 LDA $2401,x ; (spentry + 0)
17af : 85 49 __ STA T1 + 2 
17b1 : bd 02 24 LDA $2402,x ; (giocharmap + 0)
.s55:
17b4 : 85 4a __ STA T1 + 3 
17b6 : a5 43 __ LDA T0 + 0 
17b8 : 85 1b __ STA ACCU + 0 
17ba : a5 44 __ LDA T0 + 1 
17bc : 85 1c __ STA ACCU + 1 
17be : a5 45 __ LDA T0 + 2 
17c0 : 85 1d __ STA ACCU + 2 
17c2 : a5 46 __ LDA T0 + 3 
17c4 : 85 1e __ STA ACCU + 3 
17c6 : a2 47 __ LDX #$47
17c8 : 20 fb 1e JSR $1efb ; (freg + 4)
17cb : 20 42 1f JSR $1f42 ; (faddsub + 6)
17ce : a5 1c __ LDA ACCU + 1 
17d0 : 85 16 __ STA P9 ; (f + 1)
17d2 : a5 1d __ LDA ACCU + 2 
17d4 : 85 17 __ STA P10 ; (f + 2)
17d6 : a6 1b __ LDX ACCU + 0 
17d8 : a5 1e __ LDA ACCU + 3 
17da : 85 18 __ STA P11 ; (f + 3)
17dc : 10 03 __ BPL $17e1 ; (nformf.s57 + 0)
17de : 4c e8 15 JMP $15e8 ; (nformf.s18 + 0)
.s57:
17e1 : c9 41 __ CMP #$41
17e3 : d0 0d __ BNE $17f2 ; (nformf.s61 + 0)
.s58:
17e5 : a5 17 __ LDA P10 ; (f + 2)
17e7 : c9 20 __ CMP #$20
17e9 : d0 07 __ BNE $17f2 ; (nformf.s61 + 0)
.s59:
17eb : a5 16 __ LDA P9 ; (f + 1)
17ed : d0 03 __ BNE $17f2 ; (nformf.s61 + 0)
.s60:
17ef : 8a __ __ TXA
17f0 : f0 02 __ BEQ $17f4 ; (nformf.s56 + 0)
.s61:
17f2 : 90 ea __ BCC $17de ; (nformf.s55 + 42)
.s56:
17f4 : a9 00 __ LDA #$00
17f6 : 85 03 __ STA WORK + 0 
17f8 : 85 04 __ STA WORK + 1 
17fa : a9 20 __ LDA #$20
17fc : 85 05 __ STA WORK + 2 
17fe : a9 41 __ LDA #$41
1800 : 85 06 __ STA WORK + 3 
1802 : 20 0b 1f JSR $1f0b ; (freg + 20)
1805 : 20 f1 20 JSR $20f1 ; (crt_fdiv + 0)
1808 : a5 1c __ LDA ACCU + 1 
180a : 85 16 __ STA P9 ; (f + 1)
180c : a5 1d __ LDA ACCU + 2 
180e : 85 17 __ STA P10 ; (f + 2)
1810 : a5 1e __ LDA ACCU + 3 
1812 : 85 18 __ STA P11 ; (f + 3)
1814 : a6 1b __ LDX ACCU + 0 
1816 : e6 4f __ INC T4 + 0 
1818 : d0 c4 __ BNE $17de ; (nformf.s55 + 42)
.s117:
181a : e6 50 __ INC T4 + 1 
181c : 4c e8 15 JMP $15e8 ; (nformf.s18 + 0)
.s102:
181f : 85 47 __ STA T1 + 0 
1821 : 8a __ __ TXA
1822 : 18 __ __ CLC
1823 : 65 13 __ ADC P6 ; (str + 0)
1825 : 85 43 __ STA T0 + 0 
1827 : a5 14 __ LDA P7 ; (str + 1)
1829 : 69 00 __ ADC #$00
182b : 85 44 __ STA T0 + 1 
182d : a0 03 __ LDY #$03
182f : b1 11 __ LDA (P4),y ; (si + 0)
1831 : 18 __ __ CLC
1832 : 69 08 __ ADC #$08
1834 : a0 00 __ LDY #$00
1836 : 91 43 __ STA (T0 + 0),y 
1838 : 18 __ __ CLC
1839 : a0 03 __ LDY #$03
183b : b1 11 __ LDA (P4),y ; (si + 0)
183d : 69 0d __ ADC #$0d
183f : a0 01 __ LDY #$01
1841 : 91 43 __ STA (T0 + 0),y 
1843 : a0 03 __ LDY #$03
1845 : b1 11 __ LDA (P4),y ; (si + 0)
1847 : 18 __ __ CLC
1848 : 69 05 __ ADC #$05
184a : a4 47 __ LDY T1 + 0 
184c : 91 13 __ STA (P6),y ; (str + 0)
184e : 18 __ __ CLC
184f : a5 54 __ LDA T9 + 0 
1851 : 69 03 __ ADC #$03
1853 : 85 54 __ STA T9 + 0 
1855 : 4c f8 16 JMP $16f8 ; (nformf.s27 + 0)
.s104:
1858 : 20 69 18 JSR $1869 ; (isinf.s4 + 0)
185b : a2 01 __ LDX #$01
185d : 86 54 __ STX T9 + 0 
185f : a8 __ __ TAY
1860 : d0 03 __ BNE $1865 ; (nformf.s105 + 0)
1862 : 4c 6f 13 JMP $136f ; (nformf.s7 + 0)
.s105:
1865 : a9 03 __ LDA #$03
1867 : d0 b6 __ BNE $181f ; (nformf.s102 + 0)
--------------------------------------------------------------------
isinf: ; isinf(float)->bool
;  26, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/math.h"
.s4:
1869 : 06 0f __ ASL P2 ; (f + 2)
186b : a5 10 __ LDA P3 ; (f + 3)
186d : 2a __ __ ROL
186e : c9 ff __ CMP #$ff
1870 : d0 03 __ BNE $1875 ; (isinf.s6 + 0)
.s5:
1872 : a9 01 __ LDA #$01
1874 : 60 __ __ RTS
.s6:
1875 : a9 00 __ LDA #$00
.s3:
1877 : 60 __ __ RTS
--------------------------------------------------------------------
1878 : __ __ __ BYT 93 00                                           : ..
--------------------------------------------------------------------
init: ; init()->void
;  46, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64.c"
.s4:
187a : a9 39 __ LDA #$39
187c : 8d 28 24 STA $2428 ; (seed + 0)
187f : a9 30 __ LDA #$30
1881 : 8d 29 24 STA $2429 ; (seed + 1)
1884 : a9 51 __ LDA #$51
1886 : 8d 27 24 STA $2427 ; (p_sprite + 0)
1889 : a9 03 __ LDA #$03
188b : 8d 21 24 STA $2421 ; (li + 0)
188e : a9 00 __ LDA #$00
1890 : 8d 25 24 STA $2425 ; (te + 0)
1893 : 8d 26 24 STA $2426 ; (te + 1)
1896 : 8d 23 24 STA $2423 ; (pm + 0)
1899 : 8d 24 24 STA $2424 ; (pm + 1)
189c : 8d 22 24 STA $2422 ; (li + 1)
189f : 8d 1f 24 STA $241f ; (sc + 0)
18a2 : 8d 20 24 STA $2420 ; (sc + 1)
18a5 : 85 1b __ STA ACCU + 0 
.l5:
18a7 : 0a __ __ ASL
18a8 : aa __ __ TAX
18a9 : a9 00 __ LDA #$00
18ab : 85 1c __ STA ACCU + 1 
18ad : 85 1d __ STA ACCU + 2 
.l6:
18af : bd 2a 24 LDA $242a,x ; (map_data[0] + 0)
18b2 : 85 43 __ STA T4 + 0 
18b4 : bd 2b 24 LDA $242b,x ; (map_data[0] + 1)
18b7 : 85 44 __ STA T4 + 1 
18b9 : a4 1c __ LDY ACCU + 1 
18bb : b1 43 __ LDA (T4 + 0),y 
18bd : 85 1e __ STA ACCU + 3 
18bf : 18 __ __ CLC
18c0 : a9 48 __ LDA #$48
18c2 : 65 1d __ ADC ACCU + 2 
18c4 : 85 43 __ STA T4 + 0 
18c6 : a9 24 __ LDA #$24
18c8 : 69 00 __ ADC #$00
18ca : 85 44 __ STA T4 + 1 
18cc : a9 00 __ LDA #$00
18ce : a4 1b __ LDY ACCU + 0 
18d0 : 91 43 __ STA (T4 + 0),y 
18d2 : a5 1e __ LDA ACCU + 3 
18d4 : c9 23 __ CMP #$23
18d6 : d0 06 __ BNE $18de ; (init.s7 + 0)
.s20:
18d8 : a9 01 __ LDA #$01
18da : 91 43 __ STA (T4 + 0),y 
18dc : d0 52 __ BNE $1930 ; (init.s12 + 0)
.s7:
18de : c9 6f __ CMP #$6f
18e0 : d0 04 __ BNE $18e6 ; (init.s8 + 0)
.s19:
18e2 : a9 02 __ LDA #$02
18e4 : d0 68 __ BNE $194e ; (init.s18 + 0)
.s8:
18e6 : c9 78 __ CMP #$78
18e8 : d0 04 __ BNE $18ee ; (init.s9 + 0)
.s17:
18ea : a9 03 __ LDA #$03
18ec : d0 60 __ BNE $194e ; (init.s18 + 0)
.s9:
18ee : c9 5e __ CMP #$5e
18f0 : d0 13 __ BNE $1905 ; (init.s10 + 0)
.s16:
18f2 : 8c 54 25 STY $2554 ; (py + 0)
18f5 : a9 00 __ LDA #$00
18f7 : 8d 55 25 STA $2555 ; (py + 1)
18fa : 8d 53 25 STA $2553 ; (px + 1)
18fd : a5 1c __ LDA ACCU + 1 
18ff : 8d 52 25 STA $2552 ; (px + 0)
1902 : 4c 30 19 JMP $1930 ; (init.s12 + 0)
.s10:
1905 : c9 6d __ CMP #$6d
1907 : d0 13 __ BNE $191c ; (init.s11 + 0)
.s15:
1909 : 8c 5a 25 STY $255a ; (gy[0] + 0)
190c : a9 00 __ LDA #$00
190e : 8d 5b 25 STA $255b ; (gy[0] + 1)
1911 : 8d 57 25 STA $2557 ; (gx[0] + 1)
1914 : a5 1c __ LDA ACCU + 1 
1916 : 8d 56 25 STA $2556 ; (gx[0] + 0)
1919 : 4c 30 19 JMP $1930 ; (init.s12 + 0)
.s11:
191c : c9 77 __ CMP #$77
191e : d0 10 __ BNE $1930 ; (init.s12 + 0)
.s14:
1920 : 8c 5c 25 STY $255c ; (gy[0] + 2)
1923 : a9 00 __ LDA #$00
1925 : 8d 5d 25 STA $255d ; (gy[0] + 3)
1928 : 8d 59 25 STA $2559 ; (gx[0] + 3)
192b : a5 1c __ LDA ACCU + 1 
192d : 8d 58 25 STA $2558 ; (gx[0] + 2)
.s12:
1930 : 18 __ __ CLC
1931 : a5 1d __ LDA ACCU + 2 
1933 : 69 0e __ ADC #$0e
1935 : 85 1d __ STA ACCU + 2 
1937 : e6 1c __ INC ACCU + 1 
1939 : a5 1c __ LDA ACCU + 1 
193b : c9 13 __ CMP #$13
193d : b0 03 __ BCS $1942 ; (init.s13 + 0)
193f : 4c af 18 JMP $18af ; (init.l6 + 0)
.s13:
1942 : e6 1b __ INC ACCU + 0 
1944 : a5 1b __ LDA ACCU + 0 
1946 : c9 0e __ CMP #$0e
1948 : b0 03 __ BCS $194d ; (init.s3 + 0)
194a : 4c a7 18 JMP $18a7 ; (init.l5 + 0)
.s3:
194d : 60 __ __ RTS
.s18:
194e : 91 43 __ STA (T4 + 0),y 
1950 : ee 25 24 INC $2425 ; (te + 0)
1953 : d0 db __ BNE $1930 ; (init.s12 + 0)
.s21:
1955 : ee 26 24 INC $2426 ; (te + 1)
1958 : 4c 30 19 JMP $1930 ; (init.s12 + 0)
--------------------------------------------------------------------
195b : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
196b : __ __ __ BYT 23 23 23 00                                     : ###.
--------------------------------------------------------------------
196f : __ __ __ BYT 23 5e 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : #^oooooooooooooo
197f : __ __ __ BYT 6f 78 23 00                                     : ox#.
--------------------------------------------------------------------
1983 : __ __ __ BYT 23 6f 23 23 23 23 23 23 23 6f 23 23 23 23 23 23 : #o#######o######
1993 : __ __ __ BYT 23 6f 23 00                                     : #o#.
--------------------------------------------------------------------
1997 : __ __ __ BYT 23 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : #ooooooooooooooo
19a7 : __ __ __ BYT 6f 6f 23 00                                     : oo#.
--------------------------------------------------------------------
19ab : __ __ __ BYT 23 6f 23 6f 23 23 23 23 23 6f 23 23 23 23 23 6f : #o#o#####o#####o
19bb : __ __ __ BYT 23 6f 23 00                                     : #o#.
--------------------------------------------------------------------
19bf : __ __ __ BYT 23 6f 23 6f 23 23 6f 6f 6f 6f 6f 6f 6f 23 23 6f : #o#o##ooooooo##o
19cf : __ __ __ BYT 23 6f 23 00                                     : #o#.
--------------------------------------------------------------------
19d3 : __ __ __ BYT 23 6f 23 6f 23 23 6f 23 23 23 23 23 6f 23 23 6f : #o#o##o#####o##o
19e3 : __ __ __ BYT 23 6f 23 00                                     : #o#.
--------------------------------------------------------------------
19e7 : __ __ __ BYT 23 6f 23 6f 23 23 6f 23 23 23 23 23 6f 23 23 6f : #o#o##o#####o##o
19f7 : __ __ __ BYT 23 6f 23 00                                     : #o#.
--------------------------------------------------------------------
19fb : __ __ __ BYT 23 6f 23 6f 23 23 6f 6f 6f 6f 6f 6f 6f 23 23 6f : #o#o##ooooooo##o
1a0b : __ __ __ BYT 23 6f 23 00                                     : #o#.
--------------------------------------------------------------------
1a0f : __ __ __ BYT 23 6f 23 6f 23 23 23 23 23 23 23 23 23 23 23 6f : #o#o###########o
1a1f : __ __ __ BYT 23 6f 23 00                                     : #o#.
--------------------------------------------------------------------
1a23 : __ __ __ BYT 23 6d 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : #moooooooooooooo
1a33 : __ __ __ BYT 6f 6f 23 00                                     : oo#.
--------------------------------------------------------------------
1a37 : __ __ __ BYT 23 6f 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : #o##############
1a47 : __ __ __ BYT 23 6f 23 00                                     : #o#.
--------------------------------------------------------------------
1a4b : __ __ __ BYT 23 77 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : #woooooooooooooo
1a5b : __ __ __ BYT 6f 78 23 00                                     : ox#.
--------------------------------------------------------------------
1a5f : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
1a6f : __ __ __ BYT 23 23 23 00                                     : ###.
--------------------------------------------------------------------
draw_map: ; draw_map()->void
;  66, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64.c"
.s4:
1a73 : a9 00 __ LDA #$00
1a75 : 85 43 __ STA T1 + 0 
1a77 : 85 44 __ STA T2 + 0 
1a79 : 85 0e __ STA P1 
1a7b : 85 10 __ STA P3 
1a7d : a9 04 __ LDA #$04
1a7f : 85 45 __ STA T2 + 1 
1a81 : a9 00 __ LDA #$00
.l5:
1a83 : 85 0f __ STA P2 
1a85 : a9 00 __ LDA #$00
1a87 : 85 46 __ STA T3 + 0 
.l7:
1a89 : a5 46 __ LDA T3 + 0 
1a8b : 85 0d __ STA P0 
1a8d : 20 ae 1a JSR $1aae ; (get_v.s4 + 0)
1a90 : a4 0d __ LDY P0 
1a92 : 91 44 __ STA (T2 + 0),y 
1a94 : c8 __ __ INY
1a95 : 84 46 __ STY T3 + 0 
1a97 : c0 13 __ CPY #$13
1a99 : 90 ee __ BCC $1a89 ; (draw_map.l7 + 0)
.s6:
1a9b : a5 44 __ LDA T2 + 0 
1a9d : 69 27 __ ADC #$27
1a9f : 85 44 __ STA T2 + 0 
1aa1 : 90 02 __ BCC $1aa5 ; (draw_map.s9 + 0)
.s8:
1aa3 : e6 45 __ INC T2 + 1 
.s9:
1aa5 : e6 43 __ INC T1 + 0 
1aa7 : a5 43 __ LDA T1 + 0 
1aa9 : c9 0e __ CMP #$0e
1aab : 90 d6 __ BCC $1a83 ; (draw_map.l5 + 0)
.s3:
1aad : 60 __ __ RTS
--------------------------------------------------------------------
get_v: ; get_v(i16,i16)->u8
;  35, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64.c"
.s4:
1aae : a5 0d __ LDA P0 ; (x + 0)
1ab0 : 0a __ __ ASL
1ab1 : 0a __ __ ASL
1ab2 : 0a __ __ ASL
1ab3 : 38 __ __ SEC
1ab4 : e5 0d __ SBC P0 ; (x + 0)
1ab6 : 0a __ __ ASL
1ab7 : 18 __ __ CLC
1ab8 : 69 48 __ ADC #$48
1aba : 85 1b __ STA ACCU + 0 
1abc : a9 24 __ LDA #$24
1abe : 69 00 __ ADC #$00
1ac0 : 85 1c __ STA ACCU + 1 
1ac2 : a4 0f __ LDY P2 ; (y + 0)
1ac4 : b1 1b __ LDA (ACCU + 0),y 
1ac6 : c9 01 __ CMP #$01
1ac8 : d0 03 __ BNE $1acd ; (get_v.s5 + 0)
.s10:
1aca : a9 a0 __ LDA #$a0
.s3:
1acc : 60 __ __ RTS
.s5:
1acd : c9 02 __ CMP #$02
1acf : d0 03 __ BNE $1ad4 ; (get_v.s6 + 0)
.s9:
1ad1 : a9 2e __ LDA #$2e
1ad3 : 60 __ __ RTS
.s6:
1ad4 : c9 03 __ CMP #$03
1ad6 : d0 03 __ BNE $1adb ; (get_v.s7 + 0)
.s8:
1ad8 : a9 57 __ LDA #$57
1ada : 60 __ __ RTS
.s7:
1adb : a9 20 __ LDA #$20
1add : 60 __ __ RTS
--------------------------------------------------------------------
draw_hud: ; draw_hud()->void
;  74, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64.c"
.s1:
1ade : a5 53 __ LDA T1 + 0 
1ae0 : 8d 98 9f STA $9f98 ; (draw_hud@stack + 0)
.s4:
1ae3 : a9 3c __ LDA #$3c
1ae5 : 8d f8 9f STA $9ff8 ; (sstack + 8)
1ae8 : a9 1b __ LDA #$1b
1aea : 8d f9 9f STA $9ff9 ; (sstack + 9)
1aed : 20 bc 0b JSR $0bbc ; (printf.s4 + 0)
1af0 : a9 12 __ LDA #$12
1af2 : 85 53 __ STA T1 + 0 
.l5:
1af4 : a9 3e __ LDA #$3e
1af6 : 8d f8 9f STA $9ff8 ; (sstack + 8)
1af9 : a9 1b __ LDA #$1b
1afb : 8d f9 9f STA $9ff9 ; (sstack + 9)
1afe : 20 bc 0b JSR $0bbc ; (printf.s4 + 0)
1b01 : c6 53 __ DEC T1 + 0 
1b03 : d0 ef __ BNE $1af4 ; (draw_hud.l5 + 0)
.s6:
1b05 : a9 40 __ LDA #$40
1b07 : 8d f8 9f STA $9ff8 ; (sstack + 8)
1b0a : a9 1b __ LDA #$1b
1b0c : 8d f9 9f STA $9ff9 ; (sstack + 9)
1b0f : ad 1f 24 LDA $241f ; (sc + 0)
1b12 : 8d fa 9f STA $9ffa ; (sstack + 10)
1b15 : ad 20 24 LDA $2420 ; (sc + 1)
1b18 : 8d fb 9f STA $9ffb ; (sstack + 11)
1b1b : ad 21 24 LDA $2421 ; (li + 0)
1b1e : 8d fc 9f STA $9ffc ; (sstack + 12)
1b21 : ad 22 24 LDA $2422 ; (li + 1)
1b24 : 8d fd 9f STA $9ffd ; (sstack + 13)
1b27 : ad 23 24 LDA $2423 ; (pm + 0)
1b2a : 8d fe 9f STA $9ffe ; (sstack + 14)
1b2d : ad 24 24 LDA $2424 ; (pm + 1)
1b30 : 8d ff 9f STA $9fff ; (sstack + 15)
1b33 : 20 bc 0b JSR $0bbc ; (printf.s4 + 0)
.s3:
1b36 : ad 98 9f LDA $9f98 ; (draw_hud@stack + 0)
1b39 : 85 53 __ STA T1 + 0 
1b3b : 60 __ __ RTS
--------------------------------------------------------------------
1b3c : __ __ __ BYT 13 00                                           : ..
--------------------------------------------------------------------
1b3e : __ __ __ BYT 0a 00                                           : ..
--------------------------------------------------------------------
1b40 : __ __ __ BYT 53 43 4f 52 45 3a 20 25 2d 35 64 20 4c 49 56 45 : SCORE: %-5d LIVE
1b50 : __ __ __ BYT 53 3a 20 25 64 20 20 20 50 4f 57 45 52 3a 20 25 : S: %d   POWER: %
1b60 : __ __ __ BYT 2d 32 64 20 20 20 0a 00                         : -2d   ..
--------------------------------------------------------------------
1b68 : __ __ __ BYT 0a 59 4f 55 20 57 49 4e 21 0a 00                : .YOU WIN!..
--------------------------------------------------------------------
1b73 : __ __ __ BYT 0a 47 41 4d 45 20 4f 56 45 52 21 0a 00          : .GAME OVER!..
--------------------------------------------------------------------
getch: ; getch()->u8
;  83, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.l4:
1b80 : 20 e4 ff JSR $ffe4 
1b83 : 85 1b __ STA ACCU + 0 
1b85 : a5 1b __ LDA ACCU + 0 
1b87 : f0 f7 __ BEQ $1b80 ; (getch.l4 + 0)
.s5:
1b89 : 4c 8c 1b JMP $1b8c ; (convch.s4 + 0)
--------------------------------------------------------------------
convch: ; convch(u8)->u8
; 242, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.c"
.s4:
1b8c : a8 __ __ TAY
1b8d : ad 02 24 LDA $2402 ; (giocharmap + 0)
1b90 : f0 27 __ BEQ $1bb9 ; (convch.s5 + 0)
.s6:
1b92 : c0 0d __ CPY #$0d
1b94 : d0 03 __ BNE $1b99 ; (convch.s7 + 0)
.s16:
1b96 : a9 0a __ LDA #$0a
.s3:
1b98 : 60 __ __ RTS
.s7:
1b99 : c9 02 __ CMP #$02
1b9b : 90 1c __ BCC $1bb9 ; (convch.s5 + 0)
.s8:
1b9d : 98 __ __ TYA
1b9e : c0 41 __ CPY #$41
1ba0 : 90 17 __ BCC $1bb9 ; (convch.s5 + 0)
.s9:
1ba2 : c9 db __ CMP #$db
1ba4 : b0 13 __ BCS $1bb9 ; (convch.s5 + 0)
.s10:
1ba6 : c9 c1 __ CMP #$c1
1ba8 : 90 03 __ BCC $1bad ; (convch.s11 + 0)
.s15:
1baa : 49 a0 __ EOR #$a0
1bac : a8 __ __ TAY
.s11:
1bad : c9 7b __ CMP #$7b
1baf : b0 08 __ BCS $1bb9 ; (convch.s5 + 0)
.s12:
1bb1 : c9 61 __ CMP #$61
1bb3 : b0 06 __ BCS $1bbb ; (convch.s14 + 0)
.s13:
1bb5 : c9 5b __ CMP #$5b
1bb7 : 90 02 __ BCC $1bbb ; (convch.s14 + 0)
.s5:
1bb9 : 98 __ __ TYA
1bba : 60 __ __ RTS
.s14:
1bbb : 49 20 __ EOR #$20
1bbd : 60 __ __ RTS
--------------------------------------------------------------------
check_collisions: ; check_collisions()->void
;  81, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64.c"
.s4:
1bbe : a9 00 __ LDA #$00
1bc0 : 85 45 __ STA T2 + 0 
.l5:
1bc2 : 0a __ __ ASL
1bc3 : 85 43 __ STA T0 + 0 
1bc5 : a8 __ __ TAY
1bc6 : ad 53 25 LDA $2553 ; (px + 1)
1bc9 : d9 57 25 CMP $2557,y ; (gx[0] + 1)
1bcc : d0 45 __ BNE $1c13 ; (check_collisions.s6 + 0)
.s13:
1bce : ad 52 25 LDA $2552 ; (px + 0)
1bd1 : d9 56 25 CMP $2556,y ; (gx[0] + 0)
1bd4 : d0 3d __ BNE $1c13 ; (check_collisions.s6 + 0)
.s7:
1bd6 : ad 55 25 LDA $2555 ; (py + 1)
1bd9 : d9 5b 25 CMP $255b,y ; (gy[0] + 1)
1bdc : d0 35 __ BNE $1c13 ; (check_collisions.s6 + 0)
.s12:
1bde : ad 54 25 LDA $2554 ; (py + 0)
1be1 : d9 5a 25 CMP $255a,y ; (gy[0] + 0)
1be4 : d0 2d __ BNE $1c13 ; (check_collisions.s6 + 0)
.s8:
1be6 : ad 24 24 LDA $2424 ; (pm + 1)
1be9 : 30 05 __ BMI $1bf0 ; (check_collisions.s9 + 0)
.s11:
1beb : 0d 23 24 ORA $2423 ; (pm + 0)
1bee : d0 2c __ BNE $1c1c ; (check_collisions.s10 + 0)
.s9:
1bf0 : a9 01 __ LDA #$01
1bf2 : 8d 54 25 STA $2554 ; (py + 0)
1bf5 : 8d 52 25 STA $2552 ; (px + 0)
1bf8 : a9 51 __ LDA #$51
1bfa : 8d 27 24 STA $2427 ; (p_sprite + 0)
1bfd : a9 00 __ LDA #$00
1bff : 8d 55 25 STA $2555 ; (py + 1)
1c02 : 8d 53 25 STA $2553 ; (px + 1)
1c05 : ad 21 24 LDA $2421 ; (li + 0)
1c08 : 18 __ __ CLC
1c09 : 69 ff __ ADC #$ff
1c0b : 8d 21 24 STA $2421 ; (li + 0)
1c0e : b0 03 __ BCS $1c13 ; (check_collisions.s6 + 0)
.s15:
1c10 : ce 22 24 DEC $2422 ; (li + 1)
.s6:
1c13 : e6 45 __ INC T2 + 0 
1c15 : a5 45 __ LDA T2 + 0 
1c17 : c9 02 __ CMP #$02
1c19 : 90 a7 __ BCC $1bc2 ; (check_collisions.l5 + 0)
.s3:
1c1b : 60 __ __ RTS
.s10:
1c1c : b9 56 25 LDA $2556,y ; (gx[0] + 0)
1c1f : 85 0d __ STA P0 
1c21 : b9 57 25 LDA $2557,y ; (gx[0] + 1)
1c24 : 85 0e __ STA P1 
1c26 : b9 5a 25 LDA $255a,y ; (gy[0] + 0)
1c29 : 85 0f __ STA P2 
1c2b : b9 5b 25 LDA $255b,y ; (gy[0] + 1)
1c2e : 85 10 __ STA P3 
1c30 : 20 ae 1a JSR $1aae ; (get_v.s4 + 0)
1c33 : aa __ __ TAX
1c34 : a9 0a __ LDA #$0a
1c36 : a4 43 __ LDY T0 + 0 
1c38 : 99 5a 25 STA $255a,y ; (gy[0] + 0)
1c3b : a9 00 __ LDA #$00
1c3d : 99 5b 25 STA $255b,y ; (gy[0] + 1)
1c40 : 99 57 25 STA $2557,y ; (gx[0] + 1)
1c43 : a9 01 __ LDA #$01
1c45 : 99 56 25 STA $2556,y ; (gx[0] + 0)
1c48 : a5 0f __ LDA P2 
1c4a : 0a __ __ ASL
1c4b : 85 1b __ STA ACCU + 0 
1c4d : a5 10 __ LDA P3 
1c4f : 2a __ __ ROL
1c50 : 06 1b __ ASL ACCU + 0 
1c52 : 2a __ __ ROL
1c53 : a8 __ __ TAY
1c54 : 18 __ __ CLC
1c55 : a5 1b __ LDA ACCU + 0 
1c57 : 65 0f __ ADC P2 
1c59 : 85 43 __ STA T0 + 0 
1c5b : 98 __ __ TYA
1c5c : 65 10 __ ADC P3 
1c5e : 06 43 __ ASL T0 + 0 
1c60 : 2a __ __ ROL
1c61 : 06 43 __ ASL T0 + 0 
1c63 : 2a __ __ ROL
1c64 : 06 43 __ ASL T0 + 0 
1c66 : 2a __ __ ROL
1c67 : a8 __ __ TAY
1c68 : 18 __ __ CLC
1c69 : a5 43 __ LDA T0 + 0 
1c6b : 65 0d __ ADC P0 
1c6d : 85 43 __ STA T0 + 0 
1c6f : 98 __ __ TYA
1c70 : 65 0e __ ADC P1 
1c72 : 18 __ __ CLC
1c73 : 69 04 __ ADC #$04
1c75 : 85 44 __ STA T0 + 1 
1c77 : 8a __ __ TXA
1c78 : a0 00 __ LDY #$00
1c7a : 91 43 __ STA (T0 + 0),y 
1c7c : ad 1f 24 LDA $241f ; (sc + 0)
1c7f : 18 __ __ CLC
1c80 : 69 c8 __ ADC #$c8
1c82 : 8d 1f 24 STA $241f ; (sc + 0)
1c85 : 90 8c __ BCC $1c13 ; (check_collisions.s6 + 0)
.s14:
1c87 : ee 20 24 INC $2420 ; (sc + 1)
1c8a : b0 87 __ BCS $1c13 ; (check_collisions.s6 + 0)
--------------------------------------------------------------------
update_ghosts: ; update_ghosts()->void
;  99, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64.c"
.s1:
1c8c : a5 53 __ LDA T11 + 0 
1c8e : 8d e6 9f STA $9fe6 ; (update_ghosts@stack + 0)
1c91 : a5 54 __ LDA T11 + 1 
1c93 : 8d e7 9f STA $9fe7 ; (update_ghosts@stack + 1)
1c96 : a5 55 __ LDA T13 + 0 
1c98 : 8d e8 9f STA $9fe8 ; (update_ghosts@stack + 2)
.s4:
1c9b : ad 24 24 LDA $2424 ; (pm + 1)
1c9e : 10 1f __ BPL $1cbf ; (update_ghosts.s6 + 0)
.s5:
1ca0 : a9 00 __ LDA #$00
.s7:
1ca2 : 85 52 __ STA T12 + 0 
1ca4 : 8d 46 24 STA $2446 ; (skip_turn + 0)
1ca7 : 8d 47 24 STA $2447 ; (skip_turn + 1)
.s8:
1caa : ad 23 24 LDA $2423 ; (pm + 0)
1cad : 0d 24 24 ORA $2424 ; (pm + 1)
1cb0 : c9 01 __ CMP #$01
1cb2 : a9 00 __ LDA #$00
1cb4 : 85 47 __ STA T3 + 0 
1cb6 : 69 ff __ ADC #$ff
1cb8 : 29 01 __ AND #$01
1cba : 85 55 __ STA T13 + 0 
1cbc : 4c ee 1c JMP $1cee ; (update_ghosts.l9 + 0)
.s6:
1cbf : 0d 23 24 ORA $2423 ; (pm + 0)
1cc2 : f0 de __ BEQ $1ca2 ; (update_ghosts.s7 + 0)
.s47:
1cc4 : ad 46 24 LDA $2446 ; (skip_turn + 0)
1cc7 : 0d 47 24 ORA $2447 ; (skip_turn + 1)
1cca : c9 01 __ CMP #$01
1ccc : a9 01 __ LDA #$01
1cce : 85 52 __ STA T12 + 0 
1cd0 : a9 00 __ LDA #$00
1cd2 : 8d 47 24 STA $2447 ; (skip_turn + 1)
1cd5 : 69 ff __ ADC #$ff
1cd7 : 29 01 __ AND #$01
1cd9 : 8d 46 24 STA $2446 ; (skip_turn + 0)
1cdc : f0 cc __ BEQ $1caa ; (update_ghosts.s8 + 0)
.s3:
1cde : ad e6 9f LDA $9fe6 ; (update_ghosts@stack + 0)
1ce1 : 85 53 __ STA T11 + 0 
1ce3 : ad e7 9f LDA $9fe7 ; (update_ghosts@stack + 1)
1ce6 : 85 54 __ STA T11 + 1 
1ce8 : ad e8 9f LDA $9fe8 ; (update_ghosts@stack + 2)
1ceb : 85 55 __ STA T13 + 0 
1ced : 60 __ __ RTS
.l9:
1cee : a9 ff __ LDA #$ff
1cf0 : 85 48 __ STA T4 + 0 
1cf2 : 85 49 __ STA T4 + 1 
1cf4 : a5 55 __ LDA T13 + 0 
1cf6 : f0 0d __ BEQ $1d05 ; (update_ghosts.s10 + 0)
.s44:
1cf8 : a6 47 __ LDX T3 + 0 
1cfa : ca __ __ DEX
1cfb : d0 08 __ BNE $1d05 ; (update_ghosts.s10 + 0)
.s45:
1cfd : a9 e7 __ LDA #$e7
1cff : 85 48 __ STA T4 + 0 
1d01 : a9 03 __ LDA #$03
1d03 : 85 49 __ STA T4 + 1 
.s10:
1d05 : a9 00 __ LDA #$00
1d07 : 85 4a __ STA T5 + 0 
1d09 : 85 4b __ STA T5 + 1 
1d0b : 85 1b __ STA ACCU + 0 
1d0d : 85 1c __ STA ACCU + 1 
1d0f : a9 ff __ LDA #$ff
1d11 : 85 43 __ STA T1 + 0 
1d13 : 85 44 __ STA T1 + 1 
1d15 : a9 01 __ LDA #$01
1d17 : 85 4c __ STA T6 + 0 
1d19 : a5 47 __ LDA T3 + 0 
1d1b : 0a __ __ ASL
1d1c : 85 4f __ STA T9 + 0 
1d1e : aa __ __ TAX
1d1f : bd 56 25 LDA $2556,x ; (gx[0] + 0)
1d22 : 85 50 __ STA T10 + 0 
1d24 : bd 57 25 LDA $2557,x ; (gx[0] + 1)
1d27 : 85 51 __ STA T10 + 1 
1d29 : bd 5a 25 LDA $255a,x ; (gy[0] + 0)
1d2c : 85 4d __ STA T8 + 0 
1d2e : bd 5b 25 LDA $255b,x ; (gy[0] + 1)
1d31 : 85 4e __ STA T8 + 1 
.l12:
1d33 : a6 4f __ LDX T9 + 0 
1d35 : bd 56 25 LDA $2556,x ; (gx[0] + 0)
1d38 : 18 __ __ CLC
1d39 : 65 1b __ ADC ACCU + 0 
1d3b : 85 45 __ STA T2 + 0 
1d3d : bd 57 25 LDA $2557,x ; (gx[0] + 1)
1d40 : 65 1c __ ADC ACCU + 1 
1d42 : 10 03 __ BPL $1d47 ; (update_ghosts.s13 + 0)
1d44 : 4c 31 1e JMP $1e31 ; (update_ghosts.s20 + 0)
.s13:
1d47 : 85 46 __ STA T2 + 1 
1d49 : d0 f9 __ BNE $1d44 ; (update_ghosts.l12 + 17)
.s42:
1d4b : a5 45 __ LDA T2 + 0 
1d4d : c9 13 __ CMP #$13
1d4f : b0 f3 __ BCS $1d44 ; (update_ghosts.l12 + 17)
.s14:
1d51 : bd 5a 25 LDA $255a,x ; (gy[0] + 0)
1d54 : 65 43 __ ADC T1 + 0 
1d56 : 85 43 __ STA T1 + 0 
1d58 : bd 5b 25 LDA $255b,x ; (gy[0] + 1)
1d5b : 65 44 __ ADC T1 + 1 
1d5d : 30 e5 __ BMI $1d44 ; (update_ghosts.l12 + 17)
.s15:
1d5f : 85 44 __ STA T1 + 1 
1d61 : d0 e1 __ BNE $1d44 ; (update_ghosts.l12 + 17)
.s41:
1d63 : a4 43 __ LDY T1 + 0 
1d65 : c0 0e __ CPY #$0e
1d67 : b0 db __ BCS $1d44 ; (update_ghosts.l12 + 17)
.s16:
1d69 : a5 45 __ LDA T2 + 0 
1d6b : 0a __ __ ASL
1d6c : 0a __ __ ASL
1d6d : 0a __ __ ASL
1d6e : 38 __ __ SEC
1d6f : e5 45 __ SBC T2 + 0 
1d71 : 0a __ __ ASL
1d72 : 18 __ __ CLC
1d73 : 69 48 __ ADC #$48
1d75 : 85 1b __ STA ACCU + 0 
1d77 : a9 24 __ LDA #$24
1d79 : 69 00 __ ADC #$00
1d7b : 85 1c __ STA ACCU + 1 
1d7d : b1 1b __ LDA (ACCU + 0),y 
1d7f : c9 01 __ CMP #$01
1d81 : f0 c1 __ BEQ $1d44 ; (update_ghosts.l12 + 17)
.s17:
1d83 : 38 __ __ SEC
1d84 : a5 45 __ LDA T2 + 0 
1d86 : ed 52 25 SBC $2552 ; (px + 0)
1d89 : 85 0d __ STA P0 
1d8b : a5 46 __ LDA T2 + 1 
1d8d : ed 53 25 SBC $2553 ; (px + 1)
1d90 : 85 0e __ STA P1 
1d92 : 20 b6 1e JSR $1eb6 ; (abs.s4 + 0)
1d95 : a5 1b __ LDA ACCU + 0 
1d97 : 85 53 __ STA T11 + 0 
1d99 : a5 1c __ LDA ACCU + 1 
1d9b : 85 54 __ STA T11 + 1 
1d9d : 38 __ __ SEC
1d9e : a5 43 __ LDA T1 + 0 
1da0 : ed 54 25 SBC $2554 ; (py + 0)
1da3 : 85 0d __ STA P0 
1da5 : a5 44 __ LDA T1 + 1 
1da7 : ed 55 25 SBC $2555 ; (py + 1)
1daa : 85 0e __ STA P1 
1dac : 20 b6 1e JSR $1eb6 ; (abs.s4 + 0)
1daf : 18 __ __ CLC
1db0 : a5 1b __ LDA ACCU + 0 
1db2 : 65 53 __ ADC T11 + 0 
1db4 : 85 1b __ STA ACCU + 0 
1db6 : a5 1c __ LDA ACCU + 1 
1db8 : 65 54 __ ADC T11 + 1 
1dba : 85 1c __ STA ACCU + 1 
1dbc : a5 52 __ LDA T12 + 0 
1dbe : f0 2c __ BEQ $1dec ; (update_ghosts.s18 + 0)
.s35:
1dc0 : a5 49 __ LDA T4 + 1 
1dc2 : c5 1c __ CMP ACCU + 1 
1dc4 : d0 08 __ BNE $1dce ; (update_ghosts.s40 + 0)
.s37:
1dc6 : a5 48 __ LDA T4 + 0 
1dc8 : c5 1b __ CMP ACCU + 0 
.s38:
1dca : 90 08 __ BCC $1dd4 ; (update_ghosts.s36 + 0)
1dcc : b0 1e __ BCS $1dec ; (update_ghosts.s18 + 0)
.s40:
1dce : 45 1c __ EOR ACCU + 1 
1dd0 : 10 f8 __ BPL $1dca ; (update_ghosts.s38 + 0)
.s39:
1dd2 : 90 18 __ BCC $1dec ; (update_ghosts.s18 + 0)
.s36:
1dd4 : a5 43 __ LDA T1 + 0 
1dd6 : 85 4d __ STA T8 + 0 
1dd8 : a5 44 __ LDA T1 + 1 
1dda : 85 4e __ STA T8 + 1 
1ddc : a5 45 __ LDA T2 + 0 
1dde : 85 50 __ STA T10 + 0 
1de0 : a5 46 __ LDA T2 + 1 
1de2 : 85 51 __ STA T10 + 1 
1de4 : a5 1b __ LDA ACCU + 0 
1de6 : 85 48 __ STA T4 + 0 
1de8 : a5 1c __ LDA ACCU + 1 
1dea : 85 49 __ STA T4 + 1 
.s18:
1dec : a5 55 __ LDA T13 + 0 
1dee : f0 08 __ BEQ $1df8 ; (update_ghosts.s19 + 0)
.s28:
1df0 : a6 47 __ LDX T3 + 0 
1df2 : ca __ __ DEX
1df3 : d0 03 __ BNE $1df8 ; (update_ghosts.s19 + 0)
1df5 : 4c 93 1e JMP $1e93 ; (update_ghosts.s29 + 0)
.s19:
1df8 : a5 47 __ LDA T3 + 0 
1dfa : d0 35 __ BNE $1e31 ; (update_ghosts.s20 + 0)
.s26:
1dfc : 18 __ __ CLC
1dfd : a5 4a __ LDA T5 + 0 
1dff : 69 01 __ ADC #$01
1e01 : 85 53 __ STA T11 + 0 
1e03 : a5 4b __ LDA T5 + 1 
1e05 : 69 00 __ ADC #$00
1e07 : 85 54 __ STA T11 + 1 
1e09 : 20 d0 1e JSR $1ed0 ; (rand.s4 + 0)
1e0c : a5 53 __ LDA T11 + 0 
1e0e : 85 03 __ STA WORK + 0 
1e10 : e6 4a __ INC T5 + 0 
1e12 : a5 54 __ LDA T11 + 1 
1e14 : 85 04 __ STA WORK + 1 
1e16 : 85 4b __ STA T5 + 1 
1e18 : 20 d9 21 JSR $21d9 ; (divmod + 0)
1e1b : a5 05 __ LDA WORK + 2 
1e1d : 05 06 __ ORA WORK + 3 
1e1f : d0 10 __ BNE $1e31 ; (update_ghosts.s20 + 0)
.s27:
1e21 : a5 45 __ LDA T2 + 0 
1e23 : 85 50 __ STA T10 + 0 
1e25 : a5 46 __ LDA T2 + 1 
1e27 : 85 51 __ STA T10 + 1 
1e29 : a5 43 __ LDA T1 + 0 
1e2b : 85 4d __ STA T8 + 0 
1e2d : a5 44 __ LDA T1 + 1 
1e2f : 85 4e __ STA T8 + 1 
.s20:
1e31 : e6 4c __ INC T6 + 0 
1e33 : a5 4c __ LDA T6 + 0 
1e35 : c9 05 __ CMP #$05
1e37 : 90 24 __ BCC $1e5d ; (update_ghosts.s22 + 0)
.s21:
1e39 : a5 4d __ LDA T8 + 0 
1e3b : a6 4f __ LDX T9 + 0 
1e3d : 9d 5a 25 STA $255a,x ; (gy[0] + 0)
1e40 : a5 4e __ LDA T8 + 1 
1e42 : 9d 5b 25 STA $255b,x ; (gy[0] + 1)
1e45 : a5 50 __ LDA T10 + 0 
1e47 : 9d 56 25 STA $2556,x ; (gx[0] + 0)
1e4a : a5 51 __ LDA T10 + 1 
1e4c : 9d 57 25 STA $2557,x ; (gx[0] + 1)
1e4f : e6 47 __ INC T3 + 0 
1e51 : a5 47 __ LDA T3 + 0 
1e53 : c9 02 __ CMP #$02
1e55 : b0 03 __ BCS $1e5a ; (update_ghosts.s21 + 33)
1e57 : 4c ee 1c JMP $1cee ; (update_ghosts.l9 + 0)
1e5a : 4c de 1c JMP $1cde ; (update_ghosts.s3 + 0)
.s22:
1e5d : a9 00 __ LDA #$00
1e5f : 85 1b __ STA ACCU + 0 
1e61 : 85 1c __ STA ACCU + 1 
1e63 : a5 4c __ LDA T6 + 0 
1e65 : c9 02 __ CMP #$02
1e67 : d0 0b __ BNE $1e74 ; (update_ghosts.s23 + 0)
.s25:
1e69 : a9 01 __ LDA #$01
1e6b : 85 43 __ STA T1 + 0 
1e6d : a9 00 __ LDA #$00
1e6f : 85 44 __ STA T1 + 1 
1e71 : 4c 33 1d JMP $1d33 ; (update_ghosts.l12 + 0)
.s23:
1e74 : a9 00 __ LDA #$00
1e76 : 85 43 __ STA T1 + 0 
1e78 : 85 44 __ STA T1 + 1 
1e7a : a5 4c __ LDA T6 + 0 
1e7c : c9 03 __ CMP #$03
1e7e : f0 0d __ BEQ $1e8d ; (update_ghosts.s24 + 0)
.s11:
1e80 : c9 04 __ CMP #$04
1e82 : d0 ed __ BNE $1e71 ; (update_ghosts.s25 + 8)
.s43:
1e84 : e6 1b __ INC ACCU + 0 
1e86 : a9 00 __ LDA #$00
.s46:
1e88 : 85 1c __ STA ACCU + 1 
1e8a : 4c 33 1d JMP $1d33 ; (update_ghosts.l12 + 0)
.s24:
1e8d : a9 ff __ LDA #$ff
1e8f : c6 1b __ DEC ACCU + 0 
1e91 : d0 f5 __ BNE $1e88 ; (update_ghosts.s46 + 0)
.s29:
1e93 : a5 1c __ LDA ACCU + 1 
1e95 : c5 49 __ CMP T4 + 1 
1e97 : d0 07 __ BNE $1ea0 ; (update_ghosts.s34 + 0)
.s31:
1e99 : a5 1b __ LDA ACCU + 0 
1e9b : c5 48 __ CMP T4 + 0 
1e9d : 4c a4 1e JMP $1ea4 ; (update_ghosts.s32 + 0)
.s34:
1ea0 : 45 49 __ EOR T4 + 1 
1ea2 : 30 0d __ BMI $1eb1 ; (update_ghosts.s33 + 0)
.s32:
1ea4 : b0 8b __ BCS $1e31 ; (update_ghosts.s20 + 0)
.s30:
1ea6 : a5 1b __ LDA ACCU + 0 
1ea8 : 85 48 __ STA T4 + 0 
1eaa : a5 1c __ LDA ACCU + 1 
1eac : 85 49 __ STA T4 + 1 
1eae : 4c 21 1e JMP $1e21 ; (update_ghosts.s27 + 0)
.s33:
1eb1 : b0 f3 __ BCS $1ea6 ; (update_ghosts.s30 + 0)
1eb3 : 4c 31 1e JMP $1e31 ; (update_ghosts.s20 + 0)
--------------------------------------------------------------------
abs: ; abs(i16)->i16
;  46, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdlib.h"
.s4:
1eb6 : 24 0e __ BIT P1 ; (n + 1)
1eb8 : 10 0d __ BPL $1ec7 ; (abs.s5 + 0)
.s6:
1eba : 38 __ __ SEC
1ebb : a9 00 __ LDA #$00
1ebd : e5 0d __ SBC P0 ; (n + 0)
1ebf : 85 0d __ STA P0 ; (n + 0)
1ec1 : a9 00 __ LDA #$00
1ec3 : e5 0e __ SBC P1 ; (n + 1)
1ec5 : 85 0e __ STA P1 ; (n + 1)
.s5:
1ec7 : a5 0d __ LDA P0 ; (n + 0)
1ec9 : 85 1b __ STA ACCU + 0 
1ecb : a5 0e __ LDA P1 ; (n + 1)
1ecd : 85 1c __ STA ACCU + 1 
.s3:
1ecf : 60 __ __ RTS
--------------------------------------------------------------------
rand: ; rand()->u16
;  68, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdlib.h"
.s4:
1ed0 : ad 29 24 LDA $2429 ; (seed + 1)
1ed3 : 4a __ __ LSR
1ed4 : ad 28 24 LDA $2428 ; (seed + 0)
1ed7 : 6a __ __ ROR
1ed8 : aa __ __ TAX
1ed9 : a9 00 __ LDA #$00
1edb : 6a __ __ ROR
1edc : 4d 28 24 EOR $2428 ; (seed + 0)
1edf : 85 1b __ STA ACCU + 0 
1ee1 : 8a __ __ TXA
1ee2 : 4d 29 24 EOR $2429 ; (seed + 1)
1ee5 : 85 1c __ STA ACCU + 1 
1ee7 : 4a __ __ LSR
1ee8 : 45 1b __ EOR ACCU + 0 
1eea : 8d 28 24 STA $2428 ; (seed + 0)
1eed : 85 1b __ STA ACCU + 0 
1eef : 45 1c __ EOR ACCU + 1 
1ef1 : 8d 29 24 STA $2429 ; (seed + 1)
1ef4 : 85 1c __ STA ACCU + 1 
.s3:
1ef6 : 60 __ __ RTS
--------------------------------------------------------------------
freg: ; freg
1ef7 : b1 19 __ LDA (IP + 0),y 
1ef9 : c8 __ __ INY
1efa : aa __ __ TAX
1efb : b5 00 __ LDA $00,x 
1efd : 85 03 __ STA WORK + 0 
1eff : b5 01 __ LDA $01,x 
1f01 : 85 04 __ STA WORK + 1 
1f03 : b5 02 __ LDA $02,x 
1f05 : 85 05 __ STA WORK + 2 
1f07 : b5 03 __ LDA WORK + 0,x 
1f09 : 85 06 __ STA WORK + 3 
1f0b : a5 05 __ LDA WORK + 2 
1f0d : 0a __ __ ASL
1f0e : a5 06 __ LDA WORK + 3 
1f10 : 2a __ __ ROL
1f11 : 85 08 __ STA WORK + 5 
1f13 : f0 06 __ BEQ $1f1b ; (freg + 36)
1f15 : a5 05 __ LDA WORK + 2 
1f17 : 09 80 __ ORA #$80
1f19 : 85 05 __ STA WORK + 2 
1f1b : a5 1d __ LDA ACCU + 2 
1f1d : 0a __ __ ASL
1f1e : a5 1e __ LDA ACCU + 3 
1f20 : 2a __ __ ROL
1f21 : 85 07 __ STA WORK + 4 
1f23 : f0 06 __ BEQ $1f2b ; (freg + 52)
1f25 : a5 1d __ LDA ACCU + 2 
1f27 : 09 80 __ ORA #$80
1f29 : 85 1d __ STA ACCU + 2 
1f2b : 60 __ __ RTS
1f2c : 06 1e __ ASL ACCU + 3 
1f2e : a5 07 __ LDA WORK + 4 
1f30 : 6a __ __ ROR
1f31 : 85 1e __ STA ACCU + 3 
1f33 : b0 06 __ BCS $1f3b ; (freg + 68)
1f35 : a5 1d __ LDA ACCU + 2 
1f37 : 29 7f __ AND #$7f
1f39 : 85 1d __ STA ACCU + 2 
1f3b : 60 __ __ RTS
--------------------------------------------------------------------
faddsub: ; faddsub
1f3c : a5 06 __ LDA WORK + 3 
1f3e : 49 80 __ EOR #$80
1f40 : 85 06 __ STA WORK + 3 
1f42 : a9 ff __ LDA #$ff
1f44 : c5 07 __ CMP WORK + 4 
1f46 : f0 04 __ BEQ $1f4c ; (faddsub + 16)
1f48 : c5 08 __ CMP WORK + 5 
1f4a : d0 11 __ BNE $1f5d ; (faddsub + 33)
1f4c : a5 1e __ LDA ACCU + 3 
1f4e : 09 7f __ ORA #$7f
1f50 : 85 1e __ STA ACCU + 3 
1f52 : a9 80 __ LDA #$80
1f54 : 85 1d __ STA ACCU + 2 
1f56 : a9 00 __ LDA #$00
1f58 : 85 1b __ STA ACCU + 0 
1f5a : 85 1c __ STA ACCU + 1 
1f5c : 60 __ __ RTS
1f5d : 38 __ __ SEC
1f5e : a5 07 __ LDA WORK + 4 
1f60 : e5 08 __ SBC WORK + 5 
1f62 : f0 38 __ BEQ $1f9c ; (faddsub + 96)
1f64 : aa __ __ TAX
1f65 : b0 25 __ BCS $1f8c ; (faddsub + 80)
1f67 : e0 e9 __ CPX #$e9
1f69 : b0 0e __ BCS $1f79 ; (faddsub + 61)
1f6b : a5 08 __ LDA WORK + 5 
1f6d : 85 07 __ STA WORK + 4 
1f6f : a9 00 __ LDA #$00
1f71 : 85 1b __ STA ACCU + 0 
1f73 : 85 1c __ STA ACCU + 1 
1f75 : 85 1d __ STA ACCU + 2 
1f77 : f0 23 __ BEQ $1f9c ; (faddsub + 96)
1f79 : a5 1d __ LDA ACCU + 2 
1f7b : 4a __ __ LSR
1f7c : 66 1c __ ROR ACCU + 1 
1f7e : 66 1b __ ROR ACCU + 0 
1f80 : e8 __ __ INX
1f81 : d0 f8 __ BNE $1f7b ; (faddsub + 63)
1f83 : 85 1d __ STA ACCU + 2 
1f85 : a5 08 __ LDA WORK + 5 
1f87 : 85 07 __ STA WORK + 4 
1f89 : 4c 9c 1f JMP $1f9c ; (faddsub + 96)
1f8c : e0 18 __ CPX #$18
1f8e : b0 33 __ BCS $1fc3 ; (faddsub + 135)
1f90 : a5 05 __ LDA WORK + 2 
1f92 : 4a __ __ LSR
1f93 : 66 04 __ ROR WORK + 1 
1f95 : 66 03 __ ROR WORK + 0 
1f97 : ca __ __ DEX
1f98 : d0 f8 __ BNE $1f92 ; (faddsub + 86)
1f9a : 85 05 __ STA WORK + 2 
1f9c : a5 1e __ LDA ACCU + 3 
1f9e : 29 80 __ AND #$80
1fa0 : 85 1e __ STA ACCU + 3 
1fa2 : 45 06 __ EOR WORK + 3 
1fa4 : 30 31 __ BMI $1fd7 ; (faddsub + 155)
1fa6 : 18 __ __ CLC
1fa7 : a5 1b __ LDA ACCU + 0 
1fa9 : 65 03 __ ADC WORK + 0 
1fab : 85 1b __ STA ACCU + 0 
1fad : a5 1c __ LDA ACCU + 1 
1faf : 65 04 __ ADC WORK + 1 
1fb1 : 85 1c __ STA ACCU + 1 
1fb3 : a5 1d __ LDA ACCU + 2 
1fb5 : 65 05 __ ADC WORK + 2 
1fb7 : 85 1d __ STA ACCU + 2 
1fb9 : 90 08 __ BCC $1fc3 ; (faddsub + 135)
1fbb : 66 1d __ ROR ACCU + 2 
1fbd : 66 1c __ ROR ACCU + 1 
1fbf : 66 1b __ ROR ACCU + 0 
1fc1 : e6 07 __ INC WORK + 4 
1fc3 : a5 07 __ LDA WORK + 4 
1fc5 : c9 ff __ CMP #$ff
1fc7 : f0 83 __ BEQ $1f4c ; (faddsub + 16)
1fc9 : 4a __ __ LSR
1fca : 05 1e __ ORA ACCU + 3 
1fcc : 85 1e __ STA ACCU + 3 
1fce : b0 06 __ BCS $1fd6 ; (faddsub + 154)
1fd0 : a5 1d __ LDA ACCU + 2 
1fd2 : 29 7f __ AND #$7f
1fd4 : 85 1d __ STA ACCU + 2 
1fd6 : 60 __ __ RTS
1fd7 : 38 __ __ SEC
1fd8 : a5 1b __ LDA ACCU + 0 
1fda : e5 03 __ SBC WORK + 0 
1fdc : 85 1b __ STA ACCU + 0 
1fde : a5 1c __ LDA ACCU + 1 
1fe0 : e5 04 __ SBC WORK + 1 
1fe2 : 85 1c __ STA ACCU + 1 
1fe4 : a5 1d __ LDA ACCU + 2 
1fe6 : e5 05 __ SBC WORK + 2 
1fe8 : 85 1d __ STA ACCU + 2 
1fea : b0 19 __ BCS $2005 ; (faddsub + 201)
1fec : 38 __ __ SEC
1fed : a9 00 __ LDA #$00
1fef : e5 1b __ SBC ACCU + 0 
1ff1 : 85 1b __ STA ACCU + 0 
1ff3 : a9 00 __ LDA #$00
1ff5 : e5 1c __ SBC ACCU + 1 
1ff7 : 85 1c __ STA ACCU + 1 
1ff9 : a9 00 __ LDA #$00
1ffb : e5 1d __ SBC ACCU + 2 
1ffd : 85 1d __ STA ACCU + 2 
1fff : a5 1e __ LDA ACCU + 3 
2001 : 49 80 __ EOR #$80
2003 : 85 1e __ STA ACCU + 3 
2005 : a5 1d __ LDA ACCU + 2 
2007 : 30 ba __ BMI $1fc3 ; (faddsub + 135)
2009 : 05 1c __ ORA ACCU + 1 
200b : 05 1b __ ORA ACCU + 0 
200d : f0 0f __ BEQ $201e ; (faddsub + 226)
200f : c6 07 __ DEC WORK + 4 
2011 : f0 0b __ BEQ $201e ; (faddsub + 226)
2013 : 06 1b __ ASL ACCU + 0 
2015 : 26 1c __ ROL ACCU + 1 
2017 : 26 1d __ ROL ACCU + 2 
2019 : 10 f4 __ BPL $200f ; (faddsub + 211)
201b : 4c c3 1f JMP $1fc3 ; (faddsub + 135)
201e : a9 00 __ LDA #$00
2020 : 85 1b __ STA ACCU + 0 
2022 : 85 1c __ STA ACCU + 1 
2024 : 85 1d __ STA ACCU + 2 
2026 : 85 1e __ STA ACCU + 3 
2028 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul: ; crt_fmul
2029 : a5 1b __ LDA ACCU + 0 
202b : 05 1c __ ORA ACCU + 1 
202d : 05 1d __ ORA ACCU + 2 
202f : f0 0e __ BEQ $203f ; (crt_fmul + 22)
2031 : a5 03 __ LDA WORK + 0 
2033 : 05 04 __ ORA WORK + 1 
2035 : 05 05 __ ORA WORK + 2 
2037 : d0 09 __ BNE $2042 ; (crt_fmul + 25)
2039 : 85 1b __ STA ACCU + 0 
203b : 85 1c __ STA ACCU + 1 
203d : 85 1d __ STA ACCU + 2 
203f : 85 1e __ STA ACCU + 3 
2041 : 60 __ __ RTS
2042 : a5 1e __ LDA ACCU + 3 
2044 : 45 06 __ EOR WORK + 3 
2046 : 29 80 __ AND #$80
2048 : 85 1e __ STA ACCU + 3 
204a : a9 ff __ LDA #$ff
204c : c5 07 __ CMP WORK + 4 
204e : f0 42 __ BEQ $2092 ; (crt_fmul + 105)
2050 : c5 08 __ CMP WORK + 5 
2052 : f0 3e __ BEQ $2092 ; (crt_fmul + 105)
2054 : a9 00 __ LDA #$00
2056 : 85 09 __ STA WORK + 6 
2058 : 85 0a __ STA WORK + 7 
205a : 85 0b __ STA WORK + 8 
205c : a4 1b __ LDY ACCU + 0 
205e : a5 03 __ LDA WORK + 0 
2060 : d0 06 __ BNE $2068 ; (crt_fmul + 63)
2062 : a5 04 __ LDA WORK + 1 
2064 : f0 0a __ BEQ $2070 ; (crt_fmul + 71)
2066 : d0 05 __ BNE $206d ; (crt_fmul + 68)
2068 : 20 c3 20 JSR $20c3 ; (crt_fmul8 + 0)
206b : a5 04 __ LDA WORK + 1 
206d : 20 c3 20 JSR $20c3 ; (crt_fmul8 + 0)
2070 : a5 05 __ LDA WORK + 2 
2072 : 20 c3 20 JSR $20c3 ; (crt_fmul8 + 0)
2075 : 38 __ __ SEC
2076 : a5 0b __ LDA WORK + 8 
2078 : 30 06 __ BMI $2080 ; (crt_fmul + 87)
207a : 06 09 __ ASL WORK + 6 
207c : 26 0a __ ROL WORK + 7 
207e : 2a __ __ ROL
207f : 18 __ __ CLC
2080 : 29 7f __ AND #$7f
2082 : 85 0b __ STA WORK + 8 
2084 : a5 07 __ LDA WORK + 4 
2086 : 65 08 __ ADC WORK + 5 
2088 : 90 19 __ BCC $20a3 ; (crt_fmul + 122)
208a : e9 7f __ SBC #$7f
208c : b0 04 __ BCS $2092 ; (crt_fmul + 105)
208e : c9 ff __ CMP #$ff
2090 : d0 15 __ BNE $20a7 ; (crt_fmul + 126)
2092 : a5 1e __ LDA ACCU + 3 
2094 : 09 7f __ ORA #$7f
2096 : 85 1e __ STA ACCU + 3 
2098 : a9 80 __ LDA #$80
209a : 85 1d __ STA ACCU + 2 
209c : a9 00 __ LDA #$00
209e : 85 1b __ STA ACCU + 0 
20a0 : 85 1c __ STA ACCU + 1 
20a2 : 60 __ __ RTS
20a3 : e9 7e __ SBC #$7e
20a5 : 90 15 __ BCC $20bc ; (crt_fmul + 147)
20a7 : 4a __ __ LSR
20a8 : 05 1e __ ORA ACCU + 3 
20aa : 85 1e __ STA ACCU + 3 
20ac : a9 00 __ LDA #$00
20ae : 6a __ __ ROR
20af : 05 0b __ ORA WORK + 8 
20b1 : 85 1d __ STA ACCU + 2 
20b3 : a5 0a __ LDA WORK + 7 
20b5 : 85 1c __ STA ACCU + 1 
20b7 : a5 09 __ LDA WORK + 6 
20b9 : 85 1b __ STA ACCU + 0 
20bb : 60 __ __ RTS
20bc : a9 00 __ LDA #$00
20be : 85 1e __ STA ACCU + 3 
20c0 : f0 d8 __ BEQ $209a ; (crt_fmul + 113)
20c2 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul8: ; crt_fmul8
20c3 : 38 __ __ SEC
20c4 : 6a __ __ ROR
20c5 : 90 1e __ BCC $20e5 ; (crt_fmul8 + 34)
20c7 : aa __ __ TAX
20c8 : 18 __ __ CLC
20c9 : 98 __ __ TYA
20ca : 65 09 __ ADC WORK + 6 
20cc : 85 09 __ STA WORK + 6 
20ce : a5 0a __ LDA WORK + 7 
20d0 : 65 1c __ ADC ACCU + 1 
20d2 : 85 0a __ STA WORK + 7 
20d4 : a5 0b __ LDA WORK + 8 
20d6 : 65 1d __ ADC ACCU + 2 
20d8 : 6a __ __ ROR
20d9 : 85 0b __ STA WORK + 8 
20db : 8a __ __ TXA
20dc : 66 0a __ ROR WORK + 7 
20de : 66 09 __ ROR WORK + 6 
20e0 : 4a __ __ LSR
20e1 : f0 0d __ BEQ $20f0 ; (crt_fmul8 + 45)
20e3 : b0 e2 __ BCS $20c7 ; (crt_fmul8 + 4)
20e5 : 66 0b __ ROR WORK + 8 
20e7 : 66 0a __ ROR WORK + 7 
20e9 : 66 09 __ ROR WORK + 6 
20eb : 4a __ __ LSR
20ec : 90 f7 __ BCC $20e5 ; (crt_fmul8 + 34)
20ee : d0 d7 __ BNE $20c7 ; (crt_fmul8 + 4)
20f0 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fdiv: ; crt_fdiv
20f1 : a5 1b __ LDA ACCU + 0 
20f3 : 05 1c __ ORA ACCU + 1 
20f5 : 05 1d __ ORA ACCU + 2 
20f7 : d0 03 __ BNE $20fc ; (crt_fdiv + 11)
20f9 : 85 1e __ STA ACCU + 3 
20fb : 60 __ __ RTS
20fc : a5 1e __ LDA ACCU + 3 
20fe : 45 06 __ EOR WORK + 3 
2100 : 29 80 __ AND #$80
2102 : 85 1e __ STA ACCU + 3 
2104 : a5 08 __ LDA WORK + 5 
2106 : f0 62 __ BEQ $216a ; (crt_fdiv + 121)
2108 : a5 07 __ LDA WORK + 4 
210a : c9 ff __ CMP #$ff
210c : f0 5c __ BEQ $216a ; (crt_fdiv + 121)
210e : a9 00 __ LDA #$00
2110 : 85 09 __ STA WORK + 6 
2112 : 85 0a __ STA WORK + 7 
2114 : 85 0b __ STA WORK + 8 
2116 : a2 18 __ LDX #$18
2118 : a5 1b __ LDA ACCU + 0 
211a : c5 03 __ CMP WORK + 0 
211c : a5 1c __ LDA ACCU + 1 
211e : e5 04 __ SBC WORK + 1 
2120 : a5 1d __ LDA ACCU + 2 
2122 : e5 05 __ SBC WORK + 2 
2124 : 90 13 __ BCC $2139 ; (crt_fdiv + 72)
2126 : a5 1b __ LDA ACCU + 0 
2128 : e5 03 __ SBC WORK + 0 
212a : 85 1b __ STA ACCU + 0 
212c : a5 1c __ LDA ACCU + 1 
212e : e5 04 __ SBC WORK + 1 
2130 : 85 1c __ STA ACCU + 1 
2132 : a5 1d __ LDA ACCU + 2 
2134 : e5 05 __ SBC WORK + 2 
2136 : 85 1d __ STA ACCU + 2 
2138 : 38 __ __ SEC
2139 : 26 09 __ ROL WORK + 6 
213b : 26 0a __ ROL WORK + 7 
213d : 26 0b __ ROL WORK + 8 
213f : ca __ __ DEX
2140 : f0 0a __ BEQ $214c ; (crt_fdiv + 91)
2142 : 06 1b __ ASL ACCU + 0 
2144 : 26 1c __ ROL ACCU + 1 
2146 : 26 1d __ ROL ACCU + 2 
2148 : b0 dc __ BCS $2126 ; (crt_fdiv + 53)
214a : 90 cc __ BCC $2118 ; (crt_fdiv + 39)
214c : 38 __ __ SEC
214d : a5 0b __ LDA WORK + 8 
214f : 30 06 __ BMI $2157 ; (crt_fdiv + 102)
2151 : 06 09 __ ASL WORK + 6 
2153 : 26 0a __ ROL WORK + 7 
2155 : 2a __ __ ROL
2156 : 18 __ __ CLC
2157 : 29 7f __ AND #$7f
2159 : 85 0b __ STA WORK + 8 
215b : a5 07 __ LDA WORK + 4 
215d : e5 08 __ SBC WORK + 5 
215f : 90 1a __ BCC $217b ; (crt_fdiv + 138)
2161 : 18 __ __ CLC
2162 : 69 7f __ ADC #$7f
2164 : b0 04 __ BCS $216a ; (crt_fdiv + 121)
2166 : c9 ff __ CMP #$ff
2168 : d0 15 __ BNE $217f ; (crt_fdiv + 142)
216a : a5 1e __ LDA ACCU + 3 
216c : 09 7f __ ORA #$7f
216e : 85 1e __ STA ACCU + 3 
2170 : a9 80 __ LDA #$80
2172 : 85 1d __ STA ACCU + 2 
2174 : a9 00 __ LDA #$00
2176 : 85 1c __ STA ACCU + 1 
2178 : 85 1b __ STA ACCU + 0 
217a : 60 __ __ RTS
217b : 69 7f __ ADC #$7f
217d : 90 15 __ BCC $2194 ; (crt_fdiv + 163)
217f : 4a __ __ LSR
2180 : 05 1e __ ORA ACCU + 3 
2182 : 85 1e __ STA ACCU + 3 
2184 : a9 00 __ LDA #$00
2186 : 6a __ __ ROR
2187 : 05 0b __ ORA WORK + 8 
2189 : 85 1d __ STA ACCU + 2 
218b : a5 0a __ LDA WORK + 7 
218d : 85 1c __ STA ACCU + 1 
218f : a5 09 __ LDA WORK + 6 
2191 : 85 1b __ STA ACCU + 0 
2193 : 60 __ __ RTS
2194 : a9 00 __ LDA #$00
2196 : 85 1e __ STA ACCU + 3 
2198 : 85 1d __ STA ACCU + 2 
219a : 85 1c __ STA ACCU + 1 
219c : 85 1b __ STA ACCU + 0 
219e : 60 __ __ RTS
--------------------------------------------------------------------
divs16: ; divs16
219f : 24 1c __ BIT ACCU + 1 
21a1 : 10 0d __ BPL $21b0 ; (divs16 + 17)
21a3 : 20 bd 21 JSR $21bd ; (negaccu + 0)
21a6 : 24 04 __ BIT WORK + 1 
21a8 : 10 0d __ BPL $21b7 ; (divs16 + 24)
21aa : 20 cb 21 JSR $21cb ; (negtmp + 0)
21ad : 4c d9 21 JMP $21d9 ; (divmod + 0)
21b0 : 24 04 __ BIT WORK + 1 
21b2 : 10 f9 __ BPL $21ad ; (divs16 + 14)
21b4 : 20 cb 21 JSR $21cb ; (negtmp + 0)
21b7 : 20 d9 21 JSR $21d9 ; (divmod + 0)
21ba : 4c bd 21 JMP $21bd ; (negaccu + 0)
--------------------------------------------------------------------
negaccu: ; negaccu
21bd : 38 __ __ SEC
21be : a9 00 __ LDA #$00
21c0 : e5 1b __ SBC ACCU + 0 
21c2 : 85 1b __ STA ACCU + 0 
21c4 : a9 00 __ LDA #$00
21c6 : e5 1c __ SBC ACCU + 1 
21c8 : 85 1c __ STA ACCU + 1 
21ca : 60 __ __ RTS
--------------------------------------------------------------------
negtmp: ; negtmp
21cb : 38 __ __ SEC
21cc : a9 00 __ LDA #$00
21ce : e5 03 __ SBC WORK + 0 
21d0 : 85 03 __ STA WORK + 0 
21d2 : a9 00 __ LDA #$00
21d4 : e5 04 __ SBC WORK + 1 
21d6 : 85 04 __ STA WORK + 1 
21d8 : 60 __ __ RTS
--------------------------------------------------------------------
divmod: ; divmod
21d9 : a5 1c __ LDA ACCU + 1 
21db : d0 31 __ BNE $220e ; (divmod + 53)
21dd : a5 04 __ LDA WORK + 1 
21df : d0 1e __ BNE $21ff ; (divmod + 38)
21e1 : 85 06 __ STA WORK + 3 
21e3 : a2 04 __ LDX #$04
21e5 : 06 1b __ ASL ACCU + 0 
21e7 : 2a __ __ ROL
21e8 : c5 03 __ CMP WORK + 0 
21ea : 90 02 __ BCC $21ee ; (divmod + 21)
21ec : e5 03 __ SBC WORK + 0 
21ee : 26 1b __ ROL ACCU + 0 
21f0 : 2a __ __ ROL
21f1 : c5 03 __ CMP WORK + 0 
21f3 : 90 02 __ BCC $21f7 ; (divmod + 30)
21f5 : e5 03 __ SBC WORK + 0 
21f7 : 26 1b __ ROL ACCU + 0 
21f9 : ca __ __ DEX
21fa : d0 eb __ BNE $21e7 ; (divmod + 14)
21fc : 85 05 __ STA WORK + 2 
21fe : 60 __ __ RTS
21ff : a5 1b __ LDA ACCU + 0 
2201 : 85 05 __ STA WORK + 2 
2203 : a5 1c __ LDA ACCU + 1 
2205 : 85 06 __ STA WORK + 3 
2207 : a9 00 __ LDA #$00
2209 : 85 1b __ STA ACCU + 0 
220b : 85 1c __ STA ACCU + 1 
220d : 60 __ __ RTS
220e : a5 04 __ LDA WORK + 1 
2210 : d0 1f __ BNE $2231 ; (divmod + 88)
2212 : a5 03 __ LDA WORK + 0 
2214 : 30 1b __ BMI $2231 ; (divmod + 88)
2216 : a9 00 __ LDA #$00
2218 : 85 06 __ STA WORK + 3 
221a : a2 10 __ LDX #$10
221c : 06 1b __ ASL ACCU + 0 
221e : 26 1c __ ROL ACCU + 1 
2220 : 2a __ __ ROL
2221 : c5 03 __ CMP WORK + 0 
2223 : 90 02 __ BCC $2227 ; (divmod + 78)
2225 : e5 03 __ SBC WORK + 0 
2227 : 26 1b __ ROL ACCU + 0 
2229 : 26 1c __ ROL ACCU + 1 
222b : ca __ __ DEX
222c : d0 f2 __ BNE $2220 ; (divmod + 71)
222e : 85 05 __ STA WORK + 2 
2230 : 60 __ __ RTS
2231 : a9 00 __ LDA #$00
2233 : 85 05 __ STA WORK + 2 
2235 : 85 06 __ STA WORK + 3 
2237 : a0 10 __ LDY #$10
2239 : 18 __ __ CLC
223a : 26 1b __ ROL ACCU + 0 
223c : 26 1c __ ROL ACCU + 1 
223e : 26 05 __ ROL WORK + 2 
2240 : 26 06 __ ROL WORK + 3 
2242 : 38 __ __ SEC
2243 : a5 05 __ LDA WORK + 2 
2245 : e5 03 __ SBC WORK + 0 
2247 : aa __ __ TAX
2248 : a5 06 __ LDA WORK + 3 
224a : e5 04 __ SBC WORK + 1 
224c : 90 04 __ BCC $2252 ; (divmod + 121)
224e : 86 05 __ STX WORK + 2 
2250 : 85 06 __ STA WORK + 3 
2252 : 88 __ __ DEY
2253 : d0 e5 __ BNE $223a ; (divmod + 97)
2255 : 26 1b __ ROL ACCU + 0 
2257 : 26 1c __ ROL ACCU + 1 
2259 : 60 __ __ RTS
--------------------------------------------------------------------
mods16: ; mods16
225a : 24 1c __ BIT ACCU + 1 
225c : 10 10 __ BPL $226e ; (mods16 + 20)
225e : 20 bd 21 JSR $21bd ; (negaccu + 0)
2261 : 24 04 __ BIT WORK + 1 
2263 : 10 03 __ BPL $2268 ; (mods16 + 14)
2265 : 20 cb 21 JSR $21cb ; (negtmp + 0)
2268 : 20 d9 21 JSR $21d9 ; (divmod + 0)
226b : 4c 79 22 JMP $2279 ; (negtmpb + 0)
226e : 24 04 __ BIT WORK + 1 
2270 : 10 03 __ BPL $2275 ; (mods16 + 27)
2272 : 20 cb 21 JSR $21cb ; (negtmp + 0)
2275 : 4c d9 21 JMP $21d9 ; (divmod + 0)
2278 : 60 __ __ RTS
--------------------------------------------------------------------
negtmpb: ; negtmpb
2279 : 38 __ __ SEC
227a : a9 00 __ LDA #$00
227c : e5 05 __ SBC WORK + 2 
227e : 85 05 __ STA WORK + 2 
2280 : a9 00 __ LDA #$00
2282 : e5 06 __ SBC WORK + 3 
2284 : 85 06 __ STA WORK + 3 
2286 : 60 __ __ RTS
--------------------------------------------------------------------
f32_to_i16: ; f32_to_i16
2287 : 20 1b 1f JSR $1f1b ; (freg + 36)
228a : a5 07 __ LDA WORK + 4 
228c : c9 7f __ CMP #$7f
228e : b0 07 __ BCS $2297 ; (f32_to_i16 + 16)
2290 : a9 00 __ LDA #$00
2292 : 85 1b __ STA ACCU + 0 
2294 : 85 1c __ STA ACCU + 1 
2296 : 60 __ __ RTS
2297 : e9 8e __ SBC #$8e
2299 : 90 16 __ BCC $22b1 ; (f32_to_i16 + 42)
229b : 24 1e __ BIT ACCU + 3 
229d : 30 09 __ BMI $22a8 ; (f32_to_i16 + 33)
229f : a9 ff __ LDA #$ff
22a1 : 85 1b __ STA ACCU + 0 
22a3 : a9 7f __ LDA #$7f
22a5 : 85 1c __ STA ACCU + 1 
22a7 : 60 __ __ RTS
22a8 : a9 00 __ LDA #$00
22aa : 85 1b __ STA ACCU + 0 
22ac : a9 80 __ LDA #$80
22ae : 85 1c __ STA ACCU + 1 
22b0 : 60 __ __ RTS
22b1 : aa __ __ TAX
22b2 : a5 1c __ LDA ACCU + 1 
22b4 : 46 1d __ LSR ACCU + 2 
22b6 : 6a __ __ ROR
22b7 : e8 __ __ INX
22b8 : d0 fa __ BNE $22b4 ; (f32_to_i16 + 45)
22ba : 24 1e __ BIT ACCU + 3 
22bc : 10 0e __ BPL $22cc ; (f32_to_i16 + 69)
22be : 38 __ __ SEC
22bf : 49 ff __ EOR #$ff
22c1 : 69 00 __ ADC #$00
22c3 : 85 1b __ STA ACCU + 0 
22c5 : a9 00 __ LDA #$00
22c7 : e5 1d __ SBC ACCU + 2 
22c9 : 85 1c __ STA ACCU + 1 
22cb : 60 __ __ RTS
22cc : 85 1b __ STA ACCU + 0 
22ce : a5 1d __ LDA ACCU + 2 
22d0 : 85 1c __ STA ACCU + 1 
22d2 : 60 __ __ RTS
--------------------------------------------------------------------
sint16_to_float: ; sint16_to_float
22d3 : 24 1c __ BIT ACCU + 1 
22d5 : 30 03 __ BMI $22da ; (sint16_to_float + 7)
22d7 : 4c f1 22 JMP $22f1 ; (uint16_to_float + 0)
22da : 38 __ __ SEC
22db : a9 00 __ LDA #$00
22dd : e5 1b __ SBC ACCU + 0 
22df : 85 1b __ STA ACCU + 0 
22e1 : a9 00 __ LDA #$00
22e3 : e5 1c __ SBC ACCU + 1 
22e5 : 85 1c __ STA ACCU + 1 
22e7 : 20 f1 22 JSR $22f1 ; (uint16_to_float + 0)
22ea : a5 1e __ LDA ACCU + 3 
22ec : 09 80 __ ORA #$80
22ee : 85 1e __ STA ACCU + 3 
22f0 : 60 __ __ RTS
--------------------------------------------------------------------
uint16_to_float: ; uint16_to_float
22f1 : a5 1b __ LDA ACCU + 0 
22f3 : 05 1c __ ORA ACCU + 1 
22f5 : d0 05 __ BNE $22fc ; (uint16_to_float + 11)
22f7 : 85 1d __ STA ACCU + 2 
22f9 : 85 1e __ STA ACCU + 3 
22fb : 60 __ __ RTS
22fc : a2 8e __ LDX #$8e
22fe : a5 1c __ LDA ACCU + 1 
2300 : 30 06 __ BMI $2308 ; (uint16_to_float + 23)
2302 : ca __ __ DEX
2303 : 06 1b __ ASL ACCU + 0 
2305 : 2a __ __ ROL
2306 : 10 fa __ BPL $2302 ; (uint16_to_float + 17)
2308 : 0a __ __ ASL
2309 : 85 1d __ STA ACCU + 2 
230b : a5 1b __ LDA ACCU + 0 
230d : 85 1c __ STA ACCU + 1 
230f : 8a __ __ TXA
2310 : 4a __ __ LSR
2311 : 85 1e __ STA ACCU + 3 
2313 : a9 00 __ LDA #$00
2315 : 85 1b __ STA ACCU + 0 
2317 : 66 1d __ ROR ACCU + 2 
2319 : 60 __ __ RTS
--------------------------------------------------------------------
divmod32: ; divmod32
231a : a9 00 __ LDA #$00
231c : 85 07 __ STA WORK + 4 
231e : 85 08 __ STA WORK + 5 
2320 : 85 09 __ STA WORK + 6 
2322 : 85 0a __ STA WORK + 7 
2324 : a5 05 __ LDA WORK + 2 
2326 : 05 06 __ ORA WORK + 3 
2328 : f0 4b __ BEQ $2375 ; (divmod32 + 91)
232a : a0 10 __ LDY #$10
232c : a5 1e __ LDA ACCU + 3 
232e : 85 08 __ STA WORK + 5 
2330 : a5 1d __ LDA ACCU + 2 
2332 : 85 07 __ STA WORK + 4 
2334 : a9 00 __ LDA #$00
2336 : 85 1d __ STA ACCU + 2 
2338 : 85 1e __ STA ACCU + 3 
233a : 18 __ __ CLC
233b : 26 1b __ ROL ACCU + 0 
233d : 26 1c __ ROL ACCU + 1 
233f : 26 07 __ ROL WORK + 4 
2341 : 26 08 __ ROL WORK + 5 
2343 : 26 09 __ ROL WORK + 6 
2345 : 26 0a __ ROL WORK + 7 
2347 : a5 07 __ LDA WORK + 4 
2349 : c5 03 __ CMP WORK + 0 
234b : a5 08 __ LDA WORK + 5 
234d : e5 04 __ SBC WORK + 1 
234f : a5 09 __ LDA WORK + 6 
2351 : e5 05 __ SBC WORK + 2 
2353 : aa __ __ TAX
2354 : a5 0a __ LDA WORK + 7 
2356 : e5 06 __ SBC WORK + 3 
2358 : 90 11 __ BCC $236b ; (divmod32 + 81)
235a : 86 09 __ STX WORK + 6 
235c : 85 0a __ STA WORK + 7 
235e : a5 07 __ LDA WORK + 4 
2360 : e5 03 __ SBC WORK + 0 
2362 : 85 07 __ STA WORK + 4 
2364 : a5 08 __ LDA WORK + 5 
2366 : e5 04 __ SBC WORK + 1 
2368 : 85 08 __ STA WORK + 5 
236a : 38 __ __ SEC
236b : 88 __ __ DEY
236c : d0 cd __ BNE $233b ; (divmod32 + 33)
236e : 26 1b __ ROL ACCU + 0 
2370 : 26 1c __ ROL ACCU + 1 
2372 : a4 02 __ LDY $02 
2374 : 60 __ __ RTS
2375 : a5 1d __ LDA ACCU + 2 
2377 : 05 1e __ ORA ACCU + 3 
2379 : d0 0c __ BNE $2387 ; (divmod32 + 109)
237b : 20 d9 21 JSR $21d9 ; (divmod + 0)
237e : a5 05 __ LDA WORK + 2 
2380 : 85 07 __ STA WORK + 4 
2382 : a5 06 __ LDA WORK + 3 
2384 : 85 08 __ STA WORK + 5 
2386 : 60 __ __ RTS
2387 : a0 20 __ LDY #$20
2389 : a5 04 __ LDA WORK + 1 
238b : d0 27 __ BNE $23b4 ; (divmod32 + 154)
238d : 18 __ __ CLC
238e : 26 1b __ ROL ACCU + 0 
2390 : 26 1c __ ROL ACCU + 1 
2392 : 26 1d __ ROL ACCU + 2 
2394 : 26 1e __ ROL ACCU + 3 
2396 : 2a __ __ ROL
2397 : 90 05 __ BCC $239e ; (divmod32 + 132)
2399 : e5 03 __ SBC WORK + 0 
239b : 38 __ __ SEC
239c : b0 06 __ BCS $23a4 ; (divmod32 + 138)
239e : c5 03 __ CMP WORK + 0 
23a0 : 90 02 __ BCC $23a4 ; (divmod32 + 138)
23a2 : e5 03 __ SBC WORK + 0 
23a4 : 88 __ __ DEY
23a5 : d0 e7 __ BNE $238e ; (divmod32 + 116)
23a7 : 85 07 __ STA WORK + 4 
23a9 : 26 1b __ ROL ACCU + 0 
23ab : 26 1c __ ROL ACCU + 1 
23ad : 26 1d __ ROL ACCU + 2 
23af : 26 1e __ ROL ACCU + 3 
23b1 : a4 02 __ LDY $02 
23b3 : 60 __ __ RTS
23b4 : a5 1e __ LDA ACCU + 3 
23b6 : d0 10 __ BNE $23c8 ; (divmod32 + 174)
23b8 : a6 1d __ LDX ACCU + 2 
23ba : 86 1e __ STX ACCU + 3 
23bc : a6 1c __ LDX ACCU + 1 
23be : 86 1d __ STX ACCU + 2 
23c0 : a6 1b __ LDX ACCU + 0 
23c2 : 86 1c __ STX ACCU + 1 
23c4 : 85 1b __ STA ACCU + 0 
23c6 : a0 18 __ LDY #$18
23c8 : 18 __ __ CLC
23c9 : 26 1b __ ROL ACCU + 0 
23cb : 26 1c __ ROL ACCU + 1 
23cd : 26 1d __ ROL ACCU + 2 
23cf : 26 1e __ ROL ACCU + 3 
23d1 : 26 07 __ ROL WORK + 4 
23d3 : 26 08 __ ROL WORK + 5 
23d5 : 90 0c __ BCC $23e3 ; (divmod32 + 201)
23d7 : a5 07 __ LDA WORK + 4 
23d9 : e5 03 __ SBC WORK + 0 
23db : aa __ __ TAX
23dc : a5 08 __ LDA WORK + 5 
23de : e5 04 __ SBC WORK + 1 
23e0 : 38 __ __ SEC
23e1 : b0 0c __ BCS $23ef ; (divmod32 + 213)
23e3 : 38 __ __ SEC
23e4 : a5 07 __ LDA WORK + 4 
23e6 : e5 03 __ SBC WORK + 0 
23e8 : aa __ __ TAX
23e9 : a5 08 __ LDA WORK + 5 
23eb : e5 04 __ SBC WORK + 1 
23ed : 90 04 __ BCC $23f3 ; (divmod32 + 217)
23ef : 86 07 __ STX WORK + 4 
23f1 : 85 08 __ STA WORK + 5 
23f3 : 88 __ __ DEY
23f4 : d0 d3 __ BNE $23c9 ; (divmod32 + 175)
23f6 : 26 1b __ ROL ACCU + 0 
23f8 : 26 1c __ ROL ACCU + 1 
23fa : 26 1d __ ROL ACCU + 2 
23fc : 26 1e __ ROL ACCU + 3 
23fe : a4 02 __ LDY $02 
2400 : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
2401 : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
giocharmap:
2402 : __ __ __ BYT 01                                              : .
--------------------------------------------------------------------
fround5:
2403 : __ __ __ BYT 00 00 00 3f cd cc 4c 3d 0a d7 a3 3b 6f 12 03 3a : ...?..L=...;o..:
2413 : __ __ __ BYT 17 b7 51 38 ac c5 a7 36 bd 37 06 35             : ..Q8...6.7.5
--------------------------------------------------------------------
sc:
241f : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
li:
2421 : __ __ __ BYT 03 00                                           : ..
--------------------------------------------------------------------
pm:
2423 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
te:
2425 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
p_sprite:
2427 : __ __ __ BYT 51                                              : Q
--------------------------------------------------------------------
seed:
2428 : __ __ __ BYT 00 7a                                           : .z
--------------------------------------------------------------------
map_data:
242a : __ __ __ BYT 5b 19 6f 19 83 19 97 19 ab 19 bf 19 d3 19 e7 19 : [.o.............
243a : __ __ __ BYT fb 19 0f 1a 23 1a 37 1a 4b 1a 5f 1a             : ....#.7.K._.
--------------------------------------------------------------------
skip_turn:
2446 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
b:
2448 : __ __ __ BSS	266
--------------------------------------------------------------------
px:
2552 : __ __ __ BSS	2
--------------------------------------------------------------------
py:
2554 : __ __ __ BSS	2
--------------------------------------------------------------------
gx:
2556 : __ __ __ BSS	4
--------------------------------------------------------------------
gy:
255a : __ __ __ BSS	4
