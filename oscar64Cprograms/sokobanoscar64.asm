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
080e : 8e ff 17 STX $17ff ; (spentry + 0)
0811 : a2 2b __ LDX #$2b
0813 : a0 8c __ LDY #$8c
0815 : a9 00 __ LDA #$00
0817 : 85 19 __ STA IP + 0 
0819 : 86 1a __ STX IP + 1 
081b : e0 36 __ CPX #$36
081d : f0 0b __ BEQ $082a ; (startup + 41)
081f : 91 19 __ STA (IP + 0),y 
0821 : c8 __ __ INY
0822 : d0 fb __ BNE $081f ; (startup + 30)
0824 : e8 __ __ INX
0825 : d0 f2 __ BNE $0819 ; (startup + 24)
0827 : 91 19 __ STA (IP + 0),y 
0829 : c8 __ __ INY
082a : c0 46 __ CPY #$46
082c : d0 f9 __ BNE $0827 ; (startup + 38)
082e : a9 00 __ LDA #$00
0830 : a2 f7 __ LDX #$f7
0832 : d0 03 __ BNE $0837 ; (startup + 54)
0834 : 95 00 __ STA $00,x 
0836 : e8 __ __ INX
0837 : e0 f7 __ CPX #$f7
0839 : d0 f9 __ BNE $0834 ; (startup + 51)
083b : a9 5b __ LDA #$5b
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
; 256, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/sokobanoscar64.c"
.s1:
0880 : a5 53 __ LDA T1 + 0 
0882 : 8d 5d 9f STA $9f5d ; (main@stack + 0)
0885 : a5 54 __ LDA T2 + 0 
0887 : 8d 5e 9f STA $9f5e ; (main@stack + 1)
.s4:
088a : a9 0e __ LDA #$0e
088c : 20 f1 09 JSR $09f1 ; (putpch.s4 + 0)
088f : a9 01 __ LDA #$01
0891 : 85 53 __ STA T1 + 0 
0893 : a9 00 __ LDA #$00
0895 : 85 54 __ STA T2 + 0 
.l5:
0897 : a5 54 __ LDA T2 + 0 
0899 : 85 0f __ STA P2 
089b : a9 00 __ LDA #$00
089d : 85 10 __ STA P3 
089f : 20 54 0a JSR $0a54 ; (load_level.s4 + 0)
08a2 : a9 00 __ LDA #$00
08a4 : 85 0d __ STA P0 
08a6 : 85 0e __ STA P1 
08a8 : 20 84 0b JSR $0b84 ; (clrscr.s4 + 0)
08ab : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
08ae : a9 00 __ LDA #$00
08b0 : 8d f1 9f STA $9ff1 ; (sstack + 8)
08b3 : a9 18 __ LDA #$18
08b5 : 8d f2 9f STA $9ff2 ; (sstack + 9)
08b8 : 20 97 0b JSR $0b97 ; (printf.s4 + 0)
08bb : a5 54 __ LDA T2 + 0 
08bd : 8d fb 9f STA $9ffb ; (sstack + 18)
08c0 : a9 00 __ LDA #$00
08c2 : 8d fc 9f STA $9ffc ; (sstack + 19)
08c5 : 20 1a 18 JSR $181a ; (update_ui.s4 + 0)
08c8 : 20 f4 18 JSR $18f4 ; (draw_full_board.s1 + 0)
08cb : a9 00 __ LDA #$00
08cd : 85 0d __ STA P0 
08cf : a9 14 __ LDA #$14
08d1 : 85 0e __ STA P1 
08d3 : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
08d6 : a9 41 __ LDA #$41
08d8 : 8d f1 9f STA $9ff1 ; (sstack + 8)
08db : a9 1a __ LDA #$1a
08dd : 8d f2 9f STA $9ff2 ; (sstack + 9)
08e0 : 20 97 0b JSR $0b97 ; (printf.s4 + 0)
08e3 : a5 53 __ LDA T1 + 0 
08e5 : f0 4b __ BEQ $0932 ; (main.s6 + 0)
.l13:
08e7 : 20 61 1a JSR $1a61 ; (check_win.s4 + 0)
08ea : a5 1b __ LDA ACCU + 0 
08ec : 05 1c __ ORA ACCU + 1 
08ee : f0 1e __ BEQ $090e ; (main.s14 + 0)
.s18:
08f0 : a9 00 __ LDA #$00
08f2 : 85 0d __ STA P0 
08f4 : a9 14 __ LDA #$14
08f6 : 85 0e __ STA P1 
08f8 : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
08fb : a9 00 __ LDA #$00
08fd : 8d f1 9f STA $9ff1 ; (sstack + 8)
0900 : a9 1b __ LDA #$1b
0902 : 8d f2 9f STA $9ff2 ; (sstack + 9)
0905 : 20 97 0b JSR $0b97 ; (printf.s4 + 0)
0908 : 20 29 1b JSR $1b29 ; (get_input.l4 + 0)
090b : 4c 32 09 JMP $0932 ; (main.s6 + 0)
.s14:
090e : 20 29 1b JSR $1b29 ; (get_input.l4 + 0)
0911 : a5 1b __ LDA ACCU + 0 
0913 : c9 51 __ CMP #$51
0915 : d0 03 __ BNE $091a ; (main.s15 + 0)
0917 : 4c ea 09 JMP $09ea ; (main.s17 + 0)
.s15:
091a : c9 71 __ CMP #$71
091c : f0 f9 __ BEQ $0917 ; (main.s14 + 9)
.s16:
091e : 8d fd 9f STA $9ffd ; (sstack + 20)
0921 : a5 54 __ LDA T2 + 0 
0923 : 8d fe 9f STA $9ffe ; (sstack + 21)
0926 : a9 00 __ LDA #$00
0928 : 8d ff 9f STA $9fff ; (sstack + 22)
092b : 20 a3 1b JSR $1ba3 ; (execute_input.s1 + 0)
092e : a5 53 __ LDA T1 + 0 
0930 : d0 b5 __ BNE $08e7 ; (main.l13 + 0)
.s6:
0932 : e6 54 __ INC T2 + 0 
0934 : a5 54 __ LDA T2 + 0 
0936 : c9 03 __ CMP #$03
0938 : b0 07 __ BCS $0941 ; (main.s7 + 0)
.s12:
093a : a5 53 __ LDA T1 + 0 
093c : f0 03 __ BEQ $0941 ; (main.s7 + 0)
093e : 4c 97 08 JMP $0897 ; (main.l5 + 0)
.s7:
0941 : a9 00 __ LDA #$00
0943 : 85 0d __ STA P0 
0945 : a9 02 __ LDA #$02
0947 : 85 0e __ STA P1 
0949 : 20 84 0b JSR $0b84 ; (clrscr.s4 + 0)
094c : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
094f : a9 c5 __ LDA #$c5
0951 : 8d f1 9f STA $9ff1 ; (sstack + 8)
0954 : a9 1d __ LDA #$1d
0956 : 8d f2 9f STA $9ff2 ; (sstack + 9)
0959 : 20 97 0b JSR $0b97 ; (printf.s4 + 0)
095c : a9 00 __ LDA #$00
095e : 85 0d __ STA P0 
0960 : a9 04 __ LDA #$04
0962 : 85 0e __ STA P1 
0964 : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
0967 : a9 00 __ LDA #$00
0969 : 8d f1 9f STA $9ff1 ; (sstack + 8)
096c : a9 1e __ LDA #$1e
096e : 8d f2 9f STA $9ff2 ; (sstack + 9)
0971 : 20 97 0b JSR $0b97 ; (printf.s4 + 0)
0974 : a9 00 __ LDA #$00
0976 : 85 0d __ STA P0 
0978 : a9 06 __ LDA #$06
097a : 85 0e __ STA P1 
097c : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
097f : a5 54 __ LDA T2 + 0 
0981 : c9 03 __ CMP #$03
0983 : d0 04 __ BNE $0989 ; (main.s8 + 0)
.s10:
0985 : a5 53 __ LDA T1 + 0 
0987 : d0 07 __ BNE $0990 ; (main.s11 + 0)
.s8:
0989 : a9 1e __ LDA #$1e
098b : a0 52 __ LDY #$52
098d : 4c 94 09 JMP $0994 ; (main.s9 + 0)
.s11:
0990 : a9 1e __ LDA #$1e
0992 : a0 29 __ LDY #$29
.s9:
0994 : 8c f1 9f STY $9ff1 ; (sstack + 8)
0997 : 8d f2 9f STA $9ff2 ; (sstack + 9)
099a : 20 97 0b JSR $0b97 ; (printf.s4 + 0)
099d : a9 00 __ LDA #$00
099f : 85 0d __ STA P0 
09a1 : a9 08 __ LDA #$08
09a3 : 85 0e __ STA P1 
09a5 : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
09a8 : a9 7b __ LDA #$7b
09aa : 8d f1 9f STA $9ff1 ; (sstack + 8)
09ad : a9 1e __ LDA #$1e
09af : 8d f2 9f STA $9ff2 ; (sstack + 9)
09b2 : ad 8a 2b LDA $2b8a ; (total_moves + 0)
09b5 : 8d f3 9f STA $9ff3 ; (sstack + 10)
09b8 : ad 8b 2b LDA $2b8b ; (total_moves + 1)
09bb : 8d f4 9f STA $9ff4 ; (sstack + 11)
09be : 20 97 0b JSR $0b97 ; (printf.s4 + 0)
09c1 : a9 00 __ LDA #$00
09c3 : 85 0d __ STA P0 
09c5 : a9 0a __ LDA #$0a
09c7 : 85 0e __ STA P1 
09c9 : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
09cc : a9 c5 __ LDA #$c5
09ce : 8d f1 9f STA $9ff1 ; (sstack + 8)
09d1 : a9 1d __ LDA #$1d
09d3 : 8d f2 9f STA $9ff2 ; (sstack + 9)
09d6 : 20 97 0b JSR $0b97 ; (printf.s4 + 0)
09d9 : a9 00 __ LDA #$00
09db : 85 1b __ STA ACCU + 0 
09dd : 85 1c __ STA ACCU + 1 
.s3:
09df : ad 5d 9f LDA $9f5d ; (main@stack + 0)
09e2 : 85 53 __ STA T1 + 0 
09e4 : ad 5e 9f LDA $9f5e ; (main@stack + 1)
09e7 : 85 54 __ STA T2 + 0 
09e9 : 60 __ __ RTS
.s17:
09ea : a9 00 __ LDA #$00
09ec : 85 53 __ STA T1 + 0 
09ee : 4c 32 09 JMP $0932 ; (main.s6 + 0)
--------------------------------------------------------------------
putpch: ; putpch(u8)->void
;  69, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.s4:
09f1 : 85 0d __ STA P0 ; (c + 0)
09f3 : ad fe 1a LDA $1afe ; (giocharmap + 0)
09f6 : f0 32 __ BEQ $0a2a ; (putpch.s5 + 0)
.s6:
09f8 : a5 0d __ LDA P0 ; (c + 0)
09fa : c9 0a __ CMP #$0a
09fc : d0 04 __ BNE $0a02 ; (putpch.s7 + 0)
.s18:
09fe : a9 0d __ LDA #$0d
0a00 : d0 32 __ BNE $0a34 ; (putpch.s15 + 0)
.s7:
0a02 : c9 09 __ CMP #$09
0a04 : f0 36 __ BEQ $0a3c ; (putpch.s16 + 0)
.s8:
0a06 : ad fe 1a LDA $1afe ; (giocharmap + 0)
0a09 : c9 02 __ CMP #$02
0a0b : 90 1d __ BCC $0a2a ; (putpch.s5 + 0)
.s9:
0a0d : a5 0d __ LDA P0 ; (c + 0)
0a0f : c9 41 __ CMP #$41
0a11 : 90 17 __ BCC $0a2a ; (putpch.s5 + 0)
.s10:
0a13 : c9 7b __ CMP #$7b
0a15 : b0 13 __ BCS $0a2a ; (putpch.s5 + 0)
.s11:
0a17 : c9 61 __ CMP #$61
0a19 : b0 04 __ BCS $0a1f ; (putpch.s13 + 0)
.s12:
0a1b : c9 5b __ CMP #$5b
0a1d : b0 0b __ BCS $0a2a ; (putpch.s5 + 0)
.s13:
0a1f : 49 20 __ EOR #$20
0a21 : 85 0d __ STA P0 ; (c + 0)
0a23 : ad fe 1a LDA $1afe ; (giocharmap + 0)
0a26 : c9 02 __ CMP #$02
0a28 : f0 06 __ BEQ $0a30 ; (putpch.s14 + 0)
.s5:
0a2a : a5 0d __ LDA P0 ; (c + 0)
0a2c : 20 d2 ff JSR $ffd2 
.s3:
0a2f : 60 __ __ RTS
.s14:
0a30 : a5 0d __ LDA P0 ; (c + 0)
0a32 : 29 5f __ AND #$5f
.s15:
0a34 : 85 43 __ STA T0 + 0 
0a36 : a5 43 __ LDA T0 + 0 
0a38 : 20 d2 ff JSR $ffd2 
0a3b : 60 __ __ RTS
.s16:
0a3c : a5 d3 __ LDA $d3 
0a3e : 29 03 __ AND #$03
0a40 : 85 43 __ STA T0 + 0 
0a42 : a9 20 __ LDA #$20
0a44 : 85 44 __ STA T1 + 0 
.l17:
0a46 : a5 44 __ LDA T1 + 0 
0a48 : 20 d2 ff JSR $ffd2 
0a4b : e6 43 __ INC T0 + 0 
0a4d : a5 43 __ LDA T0 + 0 
0a4f : c9 04 __ CMP #$04
0a51 : 90 f3 __ BCC $0a46 ; (putpch.l17 + 0)
0a53 : 60 __ __ RTS
--------------------------------------------------------------------
load_level: ; load_level(i16)->void
;  84, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/sokobanoscar64.c"
.s4:
0a54 : a9 00 __ LDA #$00
0a56 : 8d b8 23 STA $23b8 ; (level_moves + 0)
0a59 : 8d b9 23 STA $23b9 ; (level_moves + 1)
0a5c : 8d b6 23 STA $23b6 ; (num_boxes + 0)
0a5f : 8d b7 23 STA $23b7 ; (num_boxes + 1)
0a62 : a4 0f __ LDY P2 ; (level_idx + 0)
0a64 : be fc 1d LDX $1dfc,y ; (__multab656L + 0)
0a67 : 86 43 __ STX T5 + 0 
0a69 : be 92 23 LDX $2392,y ; (__multab656H + 0)
0a6c : 86 44 __ STX T5 + 1 
0a6e : 85 45 __ STA T6 + 0 
0a70 : 85 4a __ STA T9 + 0 
0a72 : 85 4b __ STA T9 + 1 
0a74 : a9 8c __ LDA #$8c
0a76 : 85 46 __ STA T7 + 0 
0a78 : a9 30 __ LDA #$30
0a7a : 85 47 __ STA T7 + 1 
0a7c : a9 8c __ LDA #$8c
0a7e : 85 48 __ STA T8 + 0 
0a80 : a9 2b __ LDA #$2b
0a82 : 85 49 __ STA T8 + 1 
0a84 : 18 __ __ CLC
.l5:
0a85 : a5 43 __ LDA T5 + 0 
0a87 : 65 4a __ ADC T9 + 0 
0a89 : a8 __ __ TAY
0a8a : a5 44 __ LDA T5 + 1 
0a8c : 65 4b __ ADC T9 + 1 
0a8e : aa __ __ TAX
0a8f : 98 __ __ TYA
0a90 : 18 __ __ CLC
0a91 : 69 ba __ ADC #$ba
0a93 : 85 4c __ STA T10 + 0 
0a95 : 85 0d __ STA P0 
0a97 : 8a __ __ TXA
0a98 : 69 23 __ ADC #$23
0a9a : 85 4d __ STA T10 + 1 
0a9c : 85 0e __ STA P1 
0a9e : 20 68 0b JSR $0b68 ; (strlen.s4 + 0)
0aa1 : a9 00 __ LDA #$00
0aa3 : 85 1d __ STA ACCU + 2 
.l6:
0aa5 : 0a __ __ ASL
0aa6 : 85 1e __ STA ACCU + 3 
0aa8 : a8 __ __ TAY
0aa9 : a9 00 __ LDA #$00
0aab : 91 46 __ STA (T7 + 0),y 
0aad : c8 __ __ INY
0aae : 91 46 __ STA (T7 + 0),y 
0ab0 : 88 __ __ DEY
0ab1 : 91 48 __ STA (T8 + 0),y 
0ab3 : c8 __ __ INY
0ab4 : 91 48 __ STA (T8 + 0),y 
0ab6 : a5 1c __ LDA ACCU + 1 
0ab8 : 30 4b __ BMI $0b05 ; (load_level.s7 + 0)
.s21:
0aba : f0 05 __ BEQ $0ac1 ; (load_level.s20 + 0)
.s22:
0abc : a4 1d __ LDY ACCU + 2 
0abe : 4c c7 0a JMP $0ac7 ; (load_level.s9 + 0)
.s20:
0ac1 : a4 1d __ LDY ACCU + 2 
0ac3 : c4 1b __ CPY ACCU + 0 
0ac5 : b0 3e __ BCS $0b05 ; (load_level.s7 + 0)
.s9:
0ac7 : b1 4c __ LDA (T10 + 0),y 
0ac9 : c9 23 __ CMP #$23
0acb : d0 0e __ BNE $0adb ; (load_level.s10 + 0)
.s19:
0acd : a9 01 __ LDA #$01
0acf : a4 1e __ LDY ACCU + 3 
0ad1 : 91 48 __ STA (T8 + 0),y 
0ad3 : a9 00 __ LDA #$00
0ad5 : c8 __ __ INY
0ad6 : 91 48 __ STA (T8 + 0),y 
0ad8 : 4c 05 0b JMP $0b05 ; (load_level.s7 + 0)
.s10:
0adb : c9 47 __ CMP #$47
0add : d0 0e __ BNE $0aed ; (load_level.s11 + 0)
.s18:
0adf : a9 01 __ LDA #$01
0ae1 : a4 1e __ LDY ACCU + 3 
0ae3 : 91 46 __ STA (T7 + 0),y 
0ae5 : a9 00 __ LDA #$00
0ae7 : c8 __ __ INY
0ae8 : 91 46 __ STA (T7 + 0),y 
0aea : 4c 05 0b JMP $0b05 ; (load_level.s7 + 0)
.s11:
0aed : c9 31 __ CMP #$31
0aef : f0 48 __ BEQ $0b39 ; (load_level.s14 + 0)
.s12:
0af1 : c9 5e __ CMP #$5e
0af3 : d0 10 __ BNE $0b05 ; (load_level.s7 + 0)
.s13:
0af5 : 8c 6a 2b STY $2b6a ; (px + 0)
0af8 : a5 45 __ LDA T6 + 0 
0afa : 8d 6c 2b STA $2b6c ; (py + 0)
0afd : a9 00 __ LDA #$00
0aff : 8d 6d 2b STA $2b6d ; (py + 1)
0b02 : 8d 6b 2b STA $2b6b ; (px + 1)
.s7:
0b05 : e6 1d __ INC ACCU + 2 
0b07 : a5 1d __ LDA ACCU + 2 
0b09 : c9 28 __ CMP #$28
0b0b : 90 98 __ BCC $0aa5 ; (load_level.l6 + 0)
.s8:
0b0d : a5 4a __ LDA T9 + 0 
0b0f : 69 28 __ ADC #$28
0b11 : 85 4a __ STA T9 + 0 
0b13 : 90 03 __ BCC $0b18 ; (load_level.s24 + 0)
.s23:
0b15 : e6 4b __ INC T9 + 1 
0b17 : 18 __ __ CLC
.s24:
0b18 : a5 48 __ LDA T8 + 0 
0b1a : 69 50 __ ADC #$50
0b1c : 85 48 __ STA T8 + 0 
0b1e : 90 03 __ BCC $0b23 ; (load_level.s26 + 0)
.s25:
0b20 : e6 49 __ INC T8 + 1 
0b22 : 18 __ __ CLC
.s26:
0b23 : a5 46 __ LDA T7 + 0 
0b25 : 69 50 __ ADC #$50
0b27 : 85 46 __ STA T7 + 0 
0b29 : 90 02 __ BCC $0b2d ; (load_level.s28 + 0)
.s27:
0b2b : e6 47 __ INC T7 + 1 
.s28:
0b2d : e6 45 __ INC T6 + 0 
0b2f : a5 45 __ LDA T6 + 0 
0b31 : c9 10 __ CMP #$10
0b33 : b0 03 __ BCS $0b38 ; (load_level.s3 + 0)
0b35 : 4c 85 0a JMP $0a85 ; (load_level.l5 + 0)
.s3:
0b38 : 60 __ __ RTS
.s14:
0b39 : ad b7 23 LDA $23b7 ; (num_boxes + 1)
0b3c : 30 09 __ BMI $0b47 ; (load_level.s15 + 0)
.s17:
0b3e : d0 c5 __ BNE $0b05 ; (load_level.s7 + 0)
.s16:
0b40 : ad b6 23 LDA $23b6 ; (num_boxes + 0)
0b43 : c9 23 __ CMP #$23
0b45 : b0 be __ BCS $0b05 ; (load_level.s7 + 0)
.s15:
0b47 : ad b6 23 LDA $23b6 ; (num_boxes + 0)
0b4a : 0a __ __ ASL
0b4b : aa __ __ TAX
0b4c : 98 __ __ TYA
0b4d : 9d 8c 35 STA $358c,x ; (box_x[0] + 0)
0b50 : a9 00 __ LDA #$00
0b52 : 9d 8d 35 STA $358d,x ; (box_x[0] + 1)
0b55 : 9d 01 36 STA $3601,x ; (box_y[0] + 1)
0b58 : a5 45 __ LDA T6 + 0 
0b5a : 9d 00 36 STA $3600,x ; (box_y[0] + 0)
0b5d : a9 00 __ LDA #$00
0b5f : ee b6 23 INC $23b6 ; (num_boxes + 0)
0b62 : 8d b7 23 STA $23b7 ; (num_boxes + 1)
0b65 : 4c 05 0b JMP $0b05 ; (load_level.s7 + 0)
--------------------------------------------------------------------
strlen: ; strlen(const u8*)->i16
;  12, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/string.h"
.s4:
0b68 : a9 00 __ LDA #$00
0b6a : 85 1b __ STA ACCU + 0 
0b6c : 85 1c __ STA ACCU + 1 
0b6e : a8 __ __ TAY
0b6f : b1 0d __ LDA (P0),y ; (str + 0)
0b71 : f0 10 __ BEQ $0b83 ; (strlen.s3 + 0)
.s6:
0b73 : a2 00 __ LDX #$00
.l7:
0b75 : c8 __ __ INY
0b76 : d0 03 __ BNE $0b7b ; (strlen.s9 + 0)
.s8:
0b78 : e6 0e __ INC P1 ; (str + 1)
0b7a : e8 __ __ INX
.s9:
0b7b : b1 0d __ LDA (P0),y ; (str + 0)
0b7d : d0 f6 __ BNE $0b75 ; (strlen.l7 + 0)
.s5:
0b7f : 86 1c __ STX ACCU + 1 
0b81 : 84 1b __ STY ACCU + 0 
.s3:
0b83 : 60 __ __ RTS
--------------------------------------------------------------------
clrscr: ; clrscr()->void
;  91, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.s4:
0b84 : a9 93 __ LDA #$93
0b86 : 85 43 __ STA T0 + 0 
0b88 : a5 43 __ LDA T0 + 0 
0b8a : 20 d2 ff JSR $ffd2 
.s3:
0b8d : 60 __ __ RTS
--------------------------------------------------------------------
gotoxy: ; gotoxy(u8,u8)->void
;  93, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.s4:
0b8e : a6 0e __ LDX P1 
0b90 : a4 0d __ LDY P0 
0b92 : 18 __ __ CLC
0b93 : 20 f0 ff JSR $fff0 
.s3:
0b96 : 60 __ __ RTS
--------------------------------------------------------------------
printf: ; printf(const u8*)->void
;  18, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.s4:
0b97 : a9 01 __ LDA #$01
0b99 : 8d f0 9f STA $9ff0 ; (sstack + 7)
0b9c : a9 95 __ LDA #$95
0b9e : 8d ea 9f STA $9fea ; (sstack + 1)
0ba1 : a9 9f __ LDA #$9f
0ba3 : 8d eb 9f STA $9feb ; (sstack + 2)
0ba6 : ad f1 9f LDA $9ff1 ; (sstack + 8)
0ba9 : 8d ec 9f STA $9fec ; (sstack + 3)
0bac : ad f2 9f LDA $9ff2 ; (sstack + 9)
0baf : 8d ed 9f STA $9fed ; (sstack + 4)
0bb2 : a9 f3 __ LDA #$f3
0bb4 : 8d ee 9f STA $9fee ; (sstack + 5)
0bb7 : a9 9f __ LDA #$9f
0bb9 : 8d ef 9f STA $9fef ; (sstack + 6)
0bbc : 4c bf 0b JMP $0bbf ; (sformat.s1 + 0)
--------------------------------------------------------------------
sformat: ; sformat(u8*,const u8*,i16*,bool)->u8*
; 351, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s1:
0bbf : a2 09 __ LDX #$09
0bc1 : b5 53 __ LDA T1 + 0,x 
0bc3 : 9d c7 9f STA $9fc7,x ; (sformat@stack + 0)
0bc6 : ca __ __ DEX
0bc7 : 10 f8 __ BPL $0bc1 ; (sformat.s1 + 2)
.s4:
0bc9 : ad ec 9f LDA $9fec ; (sstack + 3)
0bcc : 85 55 __ STA T3 + 0 
0bce : a9 00 __ LDA #$00
0bd0 : 85 5b __ STA T6 + 0 
0bd2 : ad ed 9f LDA $9fed ; (sstack + 4)
0bd5 : 85 56 __ STA T3 + 1 
0bd7 : ad ea 9f LDA $9fea ; (sstack + 1)
0bda : 85 57 __ STA T4 + 0 
0bdc : ad eb 9f LDA $9feb ; (sstack + 2)
0bdf : 85 58 __ STA T4 + 1 
.l5:
0be1 : a0 00 __ LDY #$00
0be3 : b1 55 __ LDA (T3 + 0),y 
0be5 : d0 36 __ BNE $0c1d ; (sformat.s10 + 0)
.s6:
0be7 : a4 5b __ LDY T6 + 0 
0be9 : 91 57 __ STA (T4 + 0),y 
0beb : 98 __ __ TYA
0bec : f0 28 __ BEQ $0c16 ; (sformat.s95 + 0)
.s7:
0bee : ad f0 9f LDA $9ff0 ; (sstack + 7)
0bf1 : d0 18 __ BNE $0c0b ; (sformat.s9 + 0)
.s8:
0bf3 : 98 __ __ TYA
0bf4 : 18 __ __ CLC
0bf5 : 65 57 __ ADC T4 + 0 
0bf7 : aa __ __ TAX
0bf8 : a5 58 __ LDA T4 + 1 
0bfa : 69 00 __ ADC #$00
.s3:
0bfc : 86 1b __ STX ACCU + 0 ; (buff + 1)
0bfe : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0c00 : a2 09 __ LDX #$09
0c02 : bd c7 9f LDA $9fc7,x ; (sformat@stack + 0)
0c05 : 95 53 __ STA T1 + 0,x 
0c07 : ca __ __ DEX
0c08 : 10 f8 __ BPL $0c02 ; (sformat.s3 + 6)
0c0a : 60 __ __ RTS
.s9:
0c0b : a5 57 __ LDA T4 + 0 
0c0d : 85 0e __ STA P1 
0c0f : a5 58 __ LDA T4 + 1 
0c11 : 85 0f __ STA P2 
0c13 : 20 02 10 JSR $1002 ; (puts.l4 + 0)
.s95:
0c16 : a5 58 __ LDA T4 + 1 
0c18 : a6 57 __ LDX T4 + 0 
0c1a : 4c fc 0b JMP $0bfc ; (sformat.s3 + 0)
.s10:
0c1d : c9 25 __ CMP #$25
0c1f : f0 3e __ BEQ $0c5f ; (sformat.s15 + 0)
.s11:
0c21 : a4 5b __ LDY T6 + 0 
0c23 : 91 57 __ STA (T4 + 0),y 
0c25 : e6 55 __ INC T3 + 0 
0c27 : d0 02 __ BNE $0c2b ; (sformat.s117 + 0)
.s116:
0c29 : e6 56 __ INC T3 + 1 
.s117:
0c2b : c8 __ __ INY
0c2c : 84 5b __ STY T6 + 0 
0c2e : 98 __ __ TYA
0c2f : c0 28 __ CPY #$28
0c31 : 90 ae __ BCC $0be1 ; (sformat.l5 + 0)
.s12:
0c33 : 85 43 __ STA T0 + 0 
0c35 : a9 00 __ LDA #$00
0c37 : 85 5b __ STA T6 + 0 
0c39 : ad f0 9f LDA $9ff0 ; (sstack + 7)
0c3c : f0 14 __ BEQ $0c52 ; (sformat.s13 + 0)
.s14:
0c3e : a5 57 __ LDA T4 + 0 
0c40 : 85 0e __ STA P1 
0c42 : a5 58 __ LDA T4 + 1 
0c44 : 85 0f __ STA P2 
0c46 : a9 00 __ LDA #$00
0c48 : a4 43 __ LDY T0 + 0 
0c4a : 91 0e __ STA (P1),y 
0c4c : 20 02 10 JSR $1002 ; (puts.l4 + 0)
0c4f : 4c e1 0b JMP $0be1 ; (sformat.l5 + 0)
.s13:
0c52 : 18 __ __ CLC
0c53 : a5 57 __ LDA T4 + 0 
0c55 : 65 43 __ ADC T0 + 0 
0c57 : 85 57 __ STA T4 + 0 
0c59 : 90 86 __ BCC $0be1 ; (sformat.l5 + 0)
.s118:
0c5b : e6 58 __ INC T4 + 1 
0c5d : b0 82 __ BCS $0be1 ; (sformat.l5 + 0)
.s15:
0c5f : a5 5b __ LDA T6 + 0 
0c61 : f0 27 __ BEQ $0c8a ; (sformat.s16 + 0)
.s89:
0c63 : 84 5b __ STY T6 + 0 
0c65 : 85 43 __ STA T0 + 0 
0c67 : ad f0 9f LDA $9ff0 ; (sstack + 7)
0c6a : f0 13 __ BEQ $0c7f ; (sformat.s90 + 0)
.s91:
0c6c : a5 57 __ LDA T4 + 0 
0c6e : 85 0e __ STA P1 
0c70 : a5 58 __ LDA T4 + 1 
0c72 : 85 0f __ STA P2 
0c74 : 98 __ __ TYA
0c75 : a4 43 __ LDY T0 + 0 
0c77 : 91 0e __ STA (P1),y 
0c79 : 20 02 10 JSR $1002 ; (puts.l4 + 0)
0c7c : 4c 8a 0c JMP $0c8a ; (sformat.s16 + 0)
.s90:
0c7f : 18 __ __ CLC
0c80 : a5 57 __ LDA T4 + 0 
0c82 : 65 43 __ ADC T0 + 0 
0c84 : 85 57 __ STA T4 + 0 
0c86 : 90 02 __ BCC $0c8a ; (sformat.s16 + 0)
.s115:
0c88 : e6 58 __ INC T4 + 1 
.s16:
0c8a : a9 00 __ LDA #$00
0c8c : 8d d6 9f STA $9fd6 ; (si.sign + 0)
0c8f : 8d d7 9f STA $9fd7 ; (si.left + 0)
0c92 : 8d d8 9f STA $9fd8 ; (si.prefix + 0)
0c95 : a0 01 __ LDY #$01
0c97 : b1 55 __ LDA (T3 + 0),y 
0c99 : a2 20 __ LDX #$20
0c9b : 8e d1 9f STX $9fd1 ; (si.fill + 0)
0c9e : a2 00 __ LDX #$00
0ca0 : 8e d2 9f STX $9fd2 ; (si.width + 0)
0ca3 : ca __ __ DEX
0ca4 : 8e d3 9f STX $9fd3 ; (si.precision + 0)
0ca7 : a2 0a __ LDX #$0a
0ca9 : 8e d5 9f STX $9fd5 ; (si.base + 0)
0cac : aa __ __ TAX
0cad : a9 02 __ LDA #$02
0caf : d0 07 __ BNE $0cb8 ; (sformat.l17 + 0)
.s85:
0cb1 : a0 00 __ LDY #$00
0cb3 : b1 55 __ LDA (T3 + 0),y 
0cb5 : aa __ __ TAX
0cb6 : a9 01 __ LDA #$01
.l17:
0cb8 : 18 __ __ CLC
0cb9 : 65 55 __ ADC T3 + 0 
0cbb : 85 55 __ STA T3 + 0 
0cbd : 90 02 __ BCC $0cc1 ; (sformat.s106 + 0)
.s105:
0cbf : e6 56 __ INC T3 + 1 
.s106:
0cc1 : 8a __ __ TXA
0cc2 : e0 2b __ CPX #$2b
0cc4 : d0 07 __ BNE $0ccd ; (sformat.s18 + 0)
.s88:
0cc6 : a9 01 __ LDA #$01
0cc8 : 8d d6 9f STA $9fd6 ; (si.sign + 0)
0ccb : d0 e4 __ BNE $0cb1 ; (sformat.s85 + 0)
.s18:
0ccd : c9 30 __ CMP #$30
0ccf : d0 06 __ BNE $0cd7 ; (sformat.s19 + 0)
.s87:
0cd1 : 8d d1 9f STA $9fd1 ; (si.fill + 0)
0cd4 : 4c b1 0c JMP $0cb1 ; (sformat.s85 + 0)
.s19:
0cd7 : c9 23 __ CMP #$23
0cd9 : d0 07 __ BNE $0ce2 ; (sformat.s20 + 0)
.s86:
0cdb : a9 01 __ LDA #$01
0cdd : 8d d8 9f STA $9fd8 ; (si.prefix + 0)
0ce0 : d0 cf __ BNE $0cb1 ; (sformat.s85 + 0)
.s20:
0ce2 : c9 2d __ CMP #$2d
0ce4 : d0 07 __ BNE $0ced ; (sformat.s21 + 0)
.s84:
0ce6 : a9 01 __ LDA #$01
0ce8 : 8d d7 9f STA $9fd7 ; (si.left + 0)
0ceb : d0 c4 __ BNE $0cb1 ; (sformat.s85 + 0)
.s21:
0ced : 85 47 __ STA T2 + 0 
0cef : c9 30 __ CMP #$30
0cf1 : 90 40 __ BCC $0d33 ; (sformat.s22 + 0)
.s80:
0cf3 : c9 3a __ CMP #$3a
0cf5 : b0 7b __ BCS $0d72 ; (sformat.s23 + 0)
.s81:
0cf7 : a0 00 __ LDY #$00
0cf9 : 84 43 __ STY T0 + 0 
0cfb : c9 3a __ CMP #$3a
0cfd : a6 1c __ LDX ACCU + 1 ; (fmt + 0)
0cff : b0 2b __ BCS $0d2c ; (sformat.s104 + 0)
.l83:
0d01 : a5 43 __ LDA T0 + 0 
0d03 : 0a __ __ ASL
0d04 : 85 1b __ STA ACCU + 0 ; (buff + 1)
0d06 : 98 __ __ TYA
0d07 : 2a __ __ ROL
0d08 : 06 1b __ ASL ACCU + 0 ; (buff + 1)
0d0a : 2a __ __ ROL
0d0b : aa __ __ TAX
0d0c : 18 __ __ CLC
0d0d : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0d0f : 65 43 __ ADC T0 + 0 
0d11 : 0a __ __ ASL
0d12 : 18 __ __ CLC
0d13 : 65 47 __ ADC T2 + 0 
0d15 : 38 __ __ SEC
0d16 : e9 30 __ SBC #$30
0d18 : 85 43 __ STA T0 + 0 
0d1a : b1 55 __ LDA (T3 + 0),y 
0d1c : 85 47 __ STA T2 + 0 
0d1e : e6 55 __ INC T3 + 0 
0d20 : d0 02 __ BNE $0d24 ; (sformat.s114 + 0)
.s113:
0d22 : e6 56 __ INC T3 + 1 
.s114:
0d24 : c9 30 __ CMP #$30
0d26 : 90 04 __ BCC $0d2c ; (sformat.s104 + 0)
.s82:
0d28 : c9 3a __ CMP #$3a
0d2a : 90 d5 __ BCC $0d01 ; (sformat.l83 + 0)
.s104:
0d2c : 86 1c __ STX ACCU + 1 ; (fmt + 0)
0d2e : a6 43 __ LDX T0 + 0 
0d30 : 8e d2 9f STX $9fd2 ; (si.width + 0)
.s22:
0d33 : c9 2e __ CMP #$2e
0d35 : d0 3b __ BNE $0d72 ; (sformat.s23 + 0)
.s76:
0d37 : a9 00 __ LDA #$00
0d39 : a6 1c __ LDX ACCU + 1 ; (fmt + 0)
0d3b : 4c 55 0d JMP $0d55 ; (sformat.l77 + 0)
.s79:
0d3e : a5 43 __ LDA T0 + 0 
0d40 : 0a __ __ ASL
0d41 : 85 1b __ STA ACCU + 0 ; (buff + 1)
0d43 : 98 __ __ TYA
0d44 : 2a __ __ ROL
0d45 : 06 1b __ ASL ACCU + 0 ; (buff + 1)
0d47 : 2a __ __ ROL
0d48 : aa __ __ TAX
0d49 : 18 __ __ CLC
0d4a : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0d4c : 65 43 __ ADC T0 + 0 
0d4e : 0a __ __ ASL
0d4f : 18 __ __ CLC
0d50 : 65 47 __ ADC T2 + 0 
0d52 : 38 __ __ SEC
0d53 : e9 30 __ SBC #$30
.l77:
0d55 : 85 43 __ STA T0 + 0 
0d57 : a0 00 __ LDY #$00
0d59 : b1 55 __ LDA (T3 + 0),y 
0d5b : 85 47 __ STA T2 + 0 
0d5d : e6 55 __ INC T3 + 0 
0d5f : d0 02 __ BNE $0d63 ; (sformat.s108 + 0)
.s107:
0d61 : e6 56 __ INC T3 + 1 
.s108:
0d63 : c9 30 __ CMP #$30
0d65 : 90 04 __ BCC $0d6b ; (sformat.s103 + 0)
.s78:
0d67 : c9 3a __ CMP #$3a
0d69 : 90 d3 __ BCC $0d3e ; (sformat.s79 + 0)
.s103:
0d6b : 86 1c __ STX ACCU + 1 ; (fmt + 0)
0d6d : a6 43 __ LDX T0 + 0 
0d6f : 8e d3 9f STX $9fd3 ; (si.precision + 0)
.s23:
0d72 : c9 64 __ CMP #$64
0d74 : f0 0c __ BEQ $0d82 ; (sformat.s75 + 0)
.s24:
0d76 : c9 44 __ CMP #$44
0d78 : f0 08 __ BEQ $0d82 ; (sformat.s75 + 0)
.s25:
0d7a : c9 69 __ CMP #$69
0d7c : f0 04 __ BEQ $0d82 ; (sformat.s75 + 0)
.s26:
0d7e : c9 49 __ CMP #$49
0d80 : d0 07 __ BNE $0d89 ; (sformat.s27 + 0)
.s75:
0d82 : a9 01 __ LDA #$01
.s93:
0d84 : 85 13 __ STA P6 
0d86 : 4c c8 0f JMP $0fc8 ; (sformat.s73 + 0)
.s27:
0d89 : c9 75 __ CMP #$75
0d8b : f0 04 __ BEQ $0d91 ; (sformat.s74 + 0)
.s28:
0d8d : c9 55 __ CMP #$55
0d8f : d0 04 __ BNE $0d95 ; (sformat.s29 + 0)
.s74:
0d91 : a9 00 __ LDA #$00
0d93 : f0 ef __ BEQ $0d84 ; (sformat.s93 + 0)
.s29:
0d95 : c9 78 __ CMP #$78
0d97 : f0 04 __ BEQ $0d9d ; (sformat.s72 + 0)
.s30:
0d99 : c9 58 __ CMP #$58
0d9b : d0 13 __ BNE $0db0 ; (sformat.s31 + 0)
.s72:
0d9d : 29 e0 __ AND #$e0
0d9f : 09 01 __ ORA #$01
0da1 : 8d d4 9f STA $9fd4 ; (si.cha + 0)
0da4 : a9 00 __ LDA #$00
0da6 : 85 13 __ STA P6 
0da8 : a9 10 __ LDA #$10
0daa : 8d d5 9f STA $9fd5 ; (si.base + 0)
0dad : 4c c8 0f JMP $0fc8 ; (sformat.s73 + 0)
.s31:
0db0 : c9 6c __ CMP #$6c
0db2 : d0 03 __ BNE $0db7 ; (sformat.s32 + 0)
0db4 : 4c 39 0f JMP $0f39 ; (sformat.s60 + 0)
.s32:
0db7 : c9 4c __ CMP #$4c
0db9 : f0 f9 __ BEQ $0db4 ; (sformat.s31 + 4)
.s33:
0dbb : c9 66 __ CMP #$66
0dbd : f0 14 __ BEQ $0dd3 ; (sformat.s59 + 0)
.s34:
0dbf : c9 67 __ CMP #$67
0dc1 : f0 10 __ BEQ $0dd3 ; (sformat.s59 + 0)
.s35:
0dc3 : c9 65 __ CMP #$65
0dc5 : f0 0c __ BEQ $0dd3 ; (sformat.s59 + 0)
.s36:
0dc7 : c9 46 __ CMP #$46
0dc9 : f0 08 __ BEQ $0dd3 ; (sformat.s59 + 0)
.s37:
0dcb : c9 47 __ CMP #$47
0dcd : f0 04 __ BEQ $0dd3 ; (sformat.s59 + 0)
.s38:
0dcf : c9 45 __ CMP #$45
0dd1 : d0 5c __ BNE $0e2f ; (sformat.s39 + 0)
.s59:
0dd3 : a5 57 __ LDA T4 + 0 
0dd5 : 85 13 __ STA P6 
0dd7 : a5 58 __ LDA T4 + 1 
0dd9 : 85 14 __ STA P7 
0ddb : a5 47 __ LDA T2 + 0 
0ddd : 29 e0 __ AND #$e0
0ddf : 09 01 __ ORA #$01
0de1 : 8d d4 9f STA $9fd4 ; (si.cha + 0)
0de4 : ad ee 9f LDA $9fee ; (sstack + 5)
0de7 : 85 59 __ STA T5 + 0 
0de9 : a9 d1 __ LDA #$d1
0deb : 85 11 __ STA P4 
0ded : a9 9f __ LDA #$9f
0def : 85 12 __ STA P5 
0df1 : ad ef 9f LDA $9fef ; (sstack + 6)
0df4 : 85 5a __ STA T5 + 1 
0df6 : a0 00 __ LDY #$00
0df8 : b1 59 __ LDA (T5 + 0),y 
0dfa : 85 15 __ STA P8 
0dfc : c8 __ __ INY
0dfd : b1 59 __ LDA (T5 + 0),y 
0dff : 85 16 __ STA P9 
0e01 : c8 __ __ INY
0e02 : b1 59 __ LDA (T5 + 0),y 
0e04 : 85 17 __ STA P10 
0e06 : c8 __ __ INY
0e07 : b1 59 __ LDA (T5 + 0),y 
0e09 : 85 18 __ STA P11 
0e0b : a5 47 __ LDA T2 + 0 
0e0d : ed d4 9f SBC $9fd4 ; (si.cha + 0)
0e10 : 18 __ __ CLC
0e11 : 69 61 __ ADC #$61
0e13 : 8d e9 9f STA $9fe9 ; (sstack + 0)
0e16 : 20 7a 12 JSR $127a ; (nformf.s1 + 0)
0e19 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0e1b : 85 5b __ STA T6 + 0 
0e1d : 18 __ __ CLC
0e1e : a5 59 __ LDA T5 + 0 
0e20 : 69 04 __ ADC #$04
0e22 : 8d ee 9f STA $9fee ; (sstack + 5)
0e25 : a5 5a __ LDA T5 + 1 
0e27 : 69 00 __ ADC #$00
0e29 : 8d ef 9f STA $9fef ; (sstack + 6)
0e2c : 4c e1 0b JMP $0be1 ; (sformat.l5 + 0)
.s39:
0e2f : c9 73 __ CMP #$73
0e31 : f0 3b __ BEQ $0e6e ; (sformat.s47 + 0)
.s40:
0e33 : c9 53 __ CMP #$53
0e35 : f0 37 __ BEQ $0e6e ; (sformat.s47 + 0)
.s41:
0e37 : c9 63 __ CMP #$63
0e39 : f0 12 __ BEQ $0e4d ; (sformat.s46 + 0)
.s42:
0e3b : c9 43 __ CMP #$43
0e3d : f0 0e __ BEQ $0e4d ; (sformat.s46 + 0)
.s43:
0e3f : aa __ __ TAX
0e40 : f0 ea __ BEQ $0e2c ; (sformat.s59 + 89)
.s44:
0e42 : a0 00 __ LDY #$00
0e44 : 91 57 __ STA (T4 + 0),y 
.s45:
0e46 : a9 01 __ LDA #$01
.s96:
0e48 : 85 5b __ STA T6 + 0 
0e4a : 4c e1 0b JMP $0be1 ; (sformat.l5 + 0)
.s46:
0e4d : ad ee 9f LDA $9fee ; (sstack + 5)
0e50 : 85 43 __ STA T0 + 0 
0e52 : ad ef 9f LDA $9fef ; (sstack + 6)
0e55 : 85 44 __ STA T0 + 1 
0e57 : a0 00 __ LDY #$00
0e59 : b1 43 __ LDA (T0 + 0),y 
0e5b : 91 57 __ STA (T4 + 0),y 
0e5d : a5 43 __ LDA T0 + 0 
0e5f : 69 01 __ ADC #$01
0e61 : 8d ee 9f STA $9fee ; (sstack + 5)
0e64 : a5 44 __ LDA T0 + 1 
0e66 : 69 00 __ ADC #$00
0e68 : 8d ef 9f STA $9fef ; (sstack + 6)
0e6b : 4c 46 0e JMP $0e46 ; (sformat.s45 + 0)
.s47:
0e6e : ad ee 9f LDA $9fee ; (sstack + 5)
0e71 : 85 43 __ STA T0 + 0 
0e73 : 69 01 __ ADC #$01
0e75 : 8d ee 9f STA $9fee ; (sstack + 5)
0e78 : ad ef 9f LDA $9fef ; (sstack + 6)
0e7b : 85 44 __ STA T0 + 1 
0e7d : 69 00 __ ADC #$00
0e7f : 8d ef 9f STA $9fef ; (sstack + 6)
0e82 : a0 00 __ LDY #$00
0e84 : 84 5c __ STY T7 + 0 
0e86 : b1 43 __ LDA (T0 + 0),y 
0e88 : 85 1b __ STA ACCU + 0 ; (buff + 1)
0e8a : 85 53 __ STA T1 + 0 
0e8c : c8 __ __ INY
0e8d : b1 43 __ LDA (T0 + 0),y 
0e8f : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0e91 : 85 54 __ STA T1 + 1 
0e93 : ad d2 9f LDA $9fd2 ; (si.width + 0)
0e96 : f0 0c __ BEQ $0ea4 ; (sformat.s48 + 0)
.s100:
0e98 : 88 __ __ DEY
0e99 : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
0e9b : f0 05 __ BEQ $0ea2 ; (sformat.s101 + 0)
.l58:
0e9d : c8 __ __ INY
0e9e : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
0ea0 : d0 fb __ BNE $0e9d ; (sformat.l58 + 0)
.s101:
0ea2 : 84 5c __ STY T7 + 0 
.s48:
0ea4 : ad d7 9f LDA $9fd7 ; (si.left + 0)
0ea7 : 85 59 __ STA T5 + 0 
0ea9 : d0 19 __ BNE $0ec4 ; (sformat.s49 + 0)
.s98:
0eab : a6 5c __ LDX T7 + 0 
0ead : ec d2 9f CPX $9fd2 ; (si.width + 0)
0eb0 : a0 00 __ LDY #$00
0eb2 : b0 0c __ BCS $0ec0 ; (sformat.s99 + 0)
.l57:
0eb4 : ad d1 9f LDA $9fd1 ; (si.fill + 0)
0eb7 : 91 57 __ STA (T4 + 0),y 
0eb9 : c8 __ __ INY
0eba : e8 __ __ INX
0ebb : ec d2 9f CPX $9fd2 ; (si.width + 0)
0ebe : 90 f4 __ BCC $0eb4 ; (sformat.l57 + 0)
.s99:
0ec0 : 86 5c __ STX T7 + 0 
0ec2 : 84 5b __ STY T6 + 0 
.s49:
0ec4 : ac f0 9f LDY $9ff0 ; (sstack + 7)
0ec7 : d0 48 __ BNE $0f11 ; (sformat.s54 + 0)
.s50:
0ec9 : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
0ecb : f0 23 __ BEQ $0ef0 ; (sformat.s51 + 0)
.s53:
0ecd : 18 __ __ CLC
0ece : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0ed0 : 69 01 __ ADC #$01
0ed2 : 85 43 __ STA T0 + 0 
0ed4 : a5 1c __ LDA ACCU + 1 ; (fmt + 0)
0ed6 : 69 00 __ ADC #$00
0ed8 : 85 44 __ STA T0 + 1 
0eda : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
.l92:
0edc : a4 5b __ LDY T6 + 0 
0ede : 91 57 __ STA (T4 + 0),y 
0ee0 : e6 5b __ INC T6 + 0 
0ee2 : a0 00 __ LDY #$00
0ee4 : b1 43 __ LDA (T0 + 0),y 
0ee6 : a8 __ __ TAY
0ee7 : e6 43 __ INC T0 + 0 
0ee9 : d0 02 __ BNE $0eed ; (sformat.s112 + 0)
.s111:
0eeb : e6 44 __ INC T0 + 1 
.s112:
0eed : 98 __ __ TYA
0eee : d0 ec __ BNE $0edc ; (sformat.l92 + 0)
.s51:
0ef0 : a5 59 __ LDA T5 + 0 
0ef2 : d0 03 __ BNE $0ef7 ; (sformat.s97 + 0)
0ef4 : 4c e1 0b JMP $0be1 ; (sformat.l5 + 0)
.s97:
0ef7 : a6 5c __ LDX T7 + 0 
0ef9 : ec d2 9f CPX $9fd2 ; (si.width + 0)
0efc : a4 5b __ LDY T6 + 0 
0efe : b0 0c __ BCS $0f0c ; (sformat.s102 + 0)
.l52:
0f00 : ad d1 9f LDA $9fd1 ; (si.fill + 0)
0f03 : 91 57 __ STA (T4 + 0),y 
0f05 : c8 __ __ INY
0f06 : e8 __ __ INX
0f07 : ec d2 9f CPX $9fd2 ; (si.width + 0)
0f0a : 90 f4 __ BCC $0f00 ; (sformat.l52 + 0)
.s102:
0f0c : 84 5b __ STY T6 + 0 
0f0e : 4c e1 0b JMP $0be1 ; (sformat.l5 + 0)
.s54:
0f11 : a4 5b __ LDY T6 + 0 
0f13 : f0 11 __ BEQ $0f26 ; (sformat.s55 + 0)
.s56:
0f15 : a5 57 __ LDA T4 + 0 
0f17 : 85 0e __ STA P1 
0f19 : a5 58 __ LDA T4 + 1 
0f1b : 85 0f __ STA P2 
0f1d : a9 00 __ LDA #$00
0f1f : 85 5b __ STA T6 + 0 
0f21 : 91 0e __ STA (P1),y 
0f23 : 20 02 10 JSR $1002 ; (puts.l4 + 0)
.s55:
0f26 : a5 53 __ LDA T1 + 0 
0f28 : 85 0e __ STA P1 
0f2a : a5 54 __ LDA T1 + 1 
0f2c : 85 0f __ STA P2 
0f2e : 20 02 10 JSR $1002 ; (puts.l4 + 0)
0f31 : ad d7 9f LDA $9fd7 ; (si.left + 0)
0f34 : d0 c1 __ BNE $0ef7 ; (sformat.s97 + 0)
0f36 : 4c e1 0b JMP $0be1 ; (sformat.l5 + 0)
.s60:
0f39 : ad ee 9f LDA $9fee ; (sstack + 5)
0f3c : 85 43 __ STA T0 + 0 
0f3e : 69 03 __ ADC #$03
0f40 : 8d ee 9f STA $9fee ; (sstack + 5)
0f43 : ad ef 9f LDA $9fef ; (sstack + 6)
0f46 : 85 44 __ STA T0 + 1 
0f48 : 69 00 __ ADC #$00
0f4a : 8d ef 9f STA $9fef ; (sstack + 6)
0f4d : a0 00 __ LDY #$00
0f4f : b1 55 __ LDA (T3 + 0),y 
0f51 : aa __ __ TAX
0f52 : e6 55 __ INC T3 + 0 
0f54 : d0 02 __ BNE $0f58 ; (sformat.s110 + 0)
.s109:
0f56 : e6 56 __ INC T3 + 1 
.s110:
0f58 : b1 43 __ LDA (T0 + 0),y 
0f5a : 85 1b __ STA ACCU + 0 ; (buff + 1)
0f5c : 85 11 __ STA P4 
0f5e : a0 01 __ LDY #$01
0f60 : b1 43 __ LDA (T0 + 0),y 
0f62 : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0f64 : 85 12 __ STA P5 
0f66 : c8 __ __ INY
0f67 : b1 43 __ LDA (T0 + 0),y 
0f69 : 85 1d __ STA ACCU + 2 ; (fmt + 1)
0f6b : 85 13 __ STA P6 
0f6d : c8 __ __ INY
0f6e : b1 43 __ LDA (T0 + 0),y 
0f70 : 85 14 __ STA P7 
0f72 : e0 64 __ CPX #$64
0f74 : f0 0c __ BEQ $0f82 ; (sformat.s71 + 0)
.s61:
0f76 : e0 44 __ CPX #$44
0f78 : f0 08 __ BEQ $0f82 ; (sformat.s71 + 0)
.s62:
0f7a : e0 69 __ CPX #$69
0f7c : f0 04 __ BEQ $0f82 ; (sformat.s71 + 0)
.s63:
0f7e : e0 49 __ CPX #$49
0f80 : d0 1c __ BNE $0f9e ; (sformat.s64 + 0)
.s71:
0f82 : a9 01 __ LDA #$01
.s94:
0f84 : 85 15 __ STA P8 
.s69:
0f86 : a5 57 __ LDA T4 + 0 
0f88 : 85 0f __ STA P2 
0f8a : a5 58 __ LDA T4 + 1 
0f8c : 85 10 __ STA P3 
0f8e : a9 d1 __ LDA #$d1
0f90 : 85 0d __ STA P0 
0f92 : a9 9f __ LDA #$9f
0f94 : 85 0e __ STA P1 
0f96 : 20 30 11 JSR $1130 ; (nforml.s4 + 0)
0f99 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0f9b : 4c 48 0e JMP $0e48 ; (sformat.s96 + 0)
.s64:
0f9e : e0 75 __ CPX #$75
0fa0 : f0 04 __ BEQ $0fa6 ; (sformat.s70 + 0)
.s65:
0fa2 : e0 55 __ CPX #$55
0fa4 : d0 04 __ BNE $0faa ; (sformat.s66 + 0)
.s70:
0fa6 : a9 00 __ LDA #$00
0fa8 : f0 da __ BEQ $0f84 ; (sformat.s94 + 0)
.s66:
0faa : e0 78 __ CPX #$78
0fac : f0 06 __ BEQ $0fb4 ; (sformat.s68 + 0)
.s67:
0fae : 85 1e __ STA ACCU + 3 ; (fps + 0)
0fb0 : e0 58 __ CPX #$58
0fb2 : d0 82 __ BNE $0f36 ; (sformat.s55 + 16)
.s68:
0fb4 : a9 00 __ LDA #$00
0fb6 : 85 15 __ STA P8 
0fb8 : a9 10 __ LDA #$10
0fba : 8d d5 9f STA $9fd5 ; (si.base + 0)
0fbd : 8a __ __ TXA
0fbe : 29 e0 __ AND #$e0
0fc0 : 09 01 __ ORA #$01
0fc2 : 8d d4 9f STA $9fd4 ; (si.cha + 0)
0fc5 : 4c 86 0f JMP $0f86 ; (sformat.s69 + 0)
.s73:
0fc8 : a5 57 __ LDA T4 + 0 
0fca : 85 0f __ STA P2 
0fcc : a5 58 __ LDA T4 + 1 
0fce : 85 10 __ STA P3 
0fd0 : ad ee 9f LDA $9fee ; (sstack + 5)
0fd3 : 85 43 __ STA T0 + 0 
0fd5 : ad ef 9f LDA $9fef ; (sstack + 6)
0fd8 : 85 44 __ STA T0 + 1 
0fda : a0 00 __ LDY #$00
0fdc : b1 43 __ LDA (T0 + 0),y 
0fde : 85 11 __ STA P4 
0fe0 : c8 __ __ INY
0fe1 : b1 43 __ LDA (T0 + 0),y 
0fe3 : 85 12 __ STA P5 
0fe5 : 18 __ __ CLC
0fe6 : a5 43 __ LDA T0 + 0 
0fe8 : 69 02 __ ADC #$02
0fea : 8d ee 9f STA $9fee ; (sstack + 5)
0fed : a5 44 __ LDA T0 + 1 
0fef : 69 00 __ ADC #$00
0ff1 : 8d ef 9f STA $9fef ; (sstack + 6)
0ff4 : a9 d1 __ LDA #$d1
0ff6 : 85 0d __ STA P0 
0ff8 : a9 9f __ LDA #$9f
0ffa : 85 0e __ STA P1 
0ffc : 20 15 10 JSR $1015 ; (nformi.s4 + 0)
0fff : 4c 48 0e JMP $0e48 ; (sformat.s96 + 0)
--------------------------------------------------------------------
puts: ; puts(const u8*)->void
;  12, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.l4:
1002 : a0 00 __ LDY #$00
1004 : b1 0e __ LDA (P1),y ; (str + 0)
1006 : d0 01 __ BNE $1009 ; (puts.s5 + 0)
.s3:
1008 : 60 __ __ RTS
.s5:
1009 : e6 0e __ INC P1 ; (str + 0)
100b : d0 02 __ BNE $100f ; (puts.s7 + 0)
.s6:
100d : e6 0f __ INC P2 ; (str + 1)
.s7:
100f : 20 f1 09 JSR $09f1 ; (putpch.s4 + 0)
1012 : 4c 02 10 JMP $1002 ; (puts.l4 + 0)
--------------------------------------------------------------------
nformi: ; nformi(const struct sinfo*,u8*,i16,bool)->u8
;  79, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s4:
1015 : a9 00 __ LDA #$00
1017 : 85 43 __ STA T5 + 0 
1019 : a0 04 __ LDY #$04
101b : b1 0d __ LDA (P0),y ; (si + 0)
101d : 85 44 __ STA T6 + 0 
101f : a5 13 __ LDA P6 ; (s + 0)
1021 : f0 13 __ BEQ $1036 ; (nformi.s5 + 0)
.s33:
1023 : 24 12 __ BIT P5 ; (v + 1)
1025 : 10 0f __ BPL $1036 ; (nformi.s5 + 0)
.s34:
1027 : 38 __ __ SEC
1028 : a9 00 __ LDA #$00
102a : e5 11 __ SBC P4 ; (v + 0)
102c : 85 11 __ STA P4 ; (v + 0)
102e : a9 00 __ LDA #$00
1030 : e5 12 __ SBC P5 ; (v + 1)
1032 : 85 12 __ STA P5 ; (v + 1)
1034 : e6 43 __ INC T5 + 0 
.s5:
1036 : a9 10 __ LDA #$10
1038 : 85 45 __ STA T7 + 0 
103a : a5 11 __ LDA P4 ; (v + 0)
103c : 05 12 __ ORA P5 ; (v + 1)
103e : f0 33 __ BEQ $1073 ; (nformi.s6 + 0)
.s28:
1040 : a5 11 __ LDA P4 ; (v + 0)
1042 : 85 1b __ STA ACCU + 0 
1044 : a5 12 __ LDA P5 ; (v + 1)
1046 : 85 1c __ STA ACCU + 1 
.l29:
1048 : a5 44 __ LDA T6 + 0 
104a : 85 03 __ STA WORK + 0 
104c : a9 00 __ LDA #$00
104e : 85 04 __ STA WORK + 1 
1050 : 20 6a 21 JSR $216a ; (divmod + 0)
1053 : a5 05 __ LDA WORK + 2 
1055 : c9 0a __ CMP #$0a
1057 : b0 04 __ BCS $105d ; (nformi.s32 + 0)
.s30:
1059 : a9 30 __ LDA #$30
105b : 90 06 __ BCC $1063 ; (nformi.s31 + 0)
.s32:
105d : a0 03 __ LDY #$03
105f : b1 0d __ LDA (P0),y ; (si + 0)
1061 : e9 0a __ SBC #$0a
.s31:
1063 : 18 __ __ CLC
1064 : 65 05 __ ADC WORK + 2 
1066 : a6 45 __ LDX T7 + 0 
1068 : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
106b : c6 45 __ DEC T7 + 0 
106d : a5 1b __ LDA ACCU + 0 
106f : 05 1c __ ORA ACCU + 1 
1071 : d0 d5 __ BNE $1048 ; (nformi.l29 + 0)
.s6:
1073 : a0 02 __ LDY #$02
1075 : b1 0d __ LDA (P0),y ; (si + 0)
1077 : c9 ff __ CMP #$ff
1079 : d0 04 __ BNE $107f ; (nformi.s27 + 0)
.s7:
107b : a9 0f __ LDA #$0f
107d : d0 05 __ BNE $1084 ; (nformi.s39 + 0)
.s27:
107f : 38 __ __ SEC
1080 : a9 10 __ LDA #$10
1082 : f1 0d __ SBC (P0),y ; (si + 0)
.s39:
1084 : c5 45 __ CMP T7 + 0 
1086 : b0 0e __ BCS $1096 ; (nformi.s8 + 0)
.s26:
1088 : a8 __ __ TAY
1089 : a9 30 __ LDA #$30
.l40:
108b : a6 45 __ LDX T7 + 0 
108d : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
1090 : c6 45 __ DEC T7 + 0 
1092 : c4 45 __ CPY T7 + 0 
1094 : 90 f5 __ BCC $108b ; (nformi.l40 + 0)
.s8:
1096 : a0 07 __ LDY #$07
1098 : b1 0d __ LDA (P0),y ; (si + 0)
109a : f0 1c __ BEQ $10b8 ; (nformi.s9 + 0)
.s24:
109c : a5 44 __ LDA T6 + 0 
109e : c9 10 __ CMP #$10
10a0 : d0 16 __ BNE $10b8 ; (nformi.s9 + 0)
.s25:
10a2 : a0 03 __ LDY #$03
10a4 : b1 0d __ LDA (P0),y ; (si + 0)
10a6 : a8 __ __ TAY
10a7 : a9 30 __ LDA #$30
10a9 : a6 45 __ LDX T7 + 0 
10ab : 9d d7 9f STA $9fd7,x ; (si.left + 0)
10ae : 98 __ __ TYA
10af : 69 16 __ ADC #$16
10b1 : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
10b4 : ca __ __ DEX
10b5 : ca __ __ DEX
10b6 : 86 45 __ STX T7 + 0 
.s9:
10b8 : a9 00 __ LDA #$00
10ba : 85 1b __ STA ACCU + 0 
10bc : a5 43 __ LDA T5 + 0 
10be : f0 0c __ BEQ $10cc ; (nformi.s10 + 0)
.s23:
10c0 : a9 2d __ LDA #$2d
.s22:
10c2 : a6 45 __ LDX T7 + 0 
10c4 : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
10c7 : c6 45 __ DEC T7 + 0 
10c9 : 4c d6 10 JMP $10d6 ; (nformi.s11 + 0)
.s10:
10cc : a0 05 __ LDY #$05
10ce : b1 0d __ LDA (P0),y ; (si + 0)
10d0 : f0 04 __ BEQ $10d6 ; (nformi.s11 + 0)
.s21:
10d2 : a9 2b __ LDA #$2b
10d4 : d0 ec __ BNE $10c2 ; (nformi.s22 + 0)
.s11:
10d6 : a0 06 __ LDY #$06
10d8 : a6 45 __ LDX T7 + 0 
10da : b1 0d __ LDA (P0),y ; (si + 0)
10dc : d0 2b __ BNE $1109 ; (nformi.s17 + 0)
.l12:
10de : 8a __ __ TXA
10df : 18 __ __ CLC
10e0 : a0 01 __ LDY #$01
10e2 : 71 0d __ ADC (P0),y ; (si + 0)
10e4 : b0 04 __ BCS $10ea ; (nformi.s15 + 0)
.s16:
10e6 : c9 11 __ CMP #$11
10e8 : 90 0a __ BCC $10f4 ; (nformi.s13 + 0)
.s15:
10ea : a0 00 __ LDY #$00
10ec : b1 0d __ LDA (P0),y ; (si + 0)
10ee : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
10f1 : ca __ __ DEX
10f2 : b0 ea __ BCS $10de ; (nformi.l12 + 0)
.s13:
10f4 : e0 10 __ CPX #$10
10f6 : b0 0e __ BCS $1106 ; (nformi.s41 + 0)
.s14:
10f8 : 88 __ __ DEY
.l37:
10f9 : bd d9 9f LDA $9fd9,x ; (buffer[0] + 0)
10fc : 91 0f __ STA (P2),y ; (str + 0)
10fe : c8 __ __ INY
10ff : e8 __ __ INX
1100 : e0 10 __ CPX #$10
1102 : 90 f5 __ BCC $10f9 ; (nformi.l37 + 0)
.s38:
1104 : 84 1b __ STY ACCU + 0 
.s41:
1106 : a5 1b __ LDA ACCU + 0 
.s3:
1108 : 60 __ __ RTS
.s17:
1109 : e0 10 __ CPX #$10
110b : b0 1a __ BCS $1127 ; (nformi.l18 + 0)
.s20:
110d : a0 00 __ LDY #$00
.l35:
110f : bd d9 9f LDA $9fd9,x ; (buffer[0] + 0)
1112 : 91 0f __ STA (P2),y ; (str + 0)
1114 : c8 __ __ INY
1115 : e8 __ __ INX
1116 : e0 10 __ CPX #$10
1118 : 90 f5 __ BCC $110f ; (nformi.l35 + 0)
.s36:
111a : 84 1b __ STY ACCU + 0 
111c : b0 09 __ BCS $1127 ; (nformi.l18 + 0)
.s19:
111e : 88 __ __ DEY
111f : b1 0d __ LDA (P0),y ; (si + 0)
1121 : a4 1b __ LDY ACCU + 0 
1123 : 91 0f __ STA (P2),y ; (str + 0)
1125 : e6 1b __ INC ACCU + 0 
.l18:
1127 : a5 1b __ LDA ACCU + 0 
1129 : a0 01 __ LDY #$01
112b : d1 0d __ CMP (P0),y ; (si + 0)
112d : 90 ef __ BCC $111e ; (nformi.s19 + 0)
112f : 60 __ __ RTS
--------------------------------------------------------------------
nforml: ; nforml(const struct sinfo*,u8*,i32,bool)->u8
; 137, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s4:
1130 : a9 00 __ LDA #$00
1132 : 85 43 __ STA T4 + 0 
1134 : a5 15 __ LDA P8 ; (s + 0)
1136 : f0 1f __ BEQ $1157 ; (nforml.s5 + 0)
.s35:
1138 : 24 14 __ BIT P7 ; (v + 3)
113a : 10 1b __ BPL $1157 ; (nforml.s5 + 0)
.s36:
113c : 38 __ __ SEC
113d : a9 00 __ LDA #$00
113f : e5 11 __ SBC P4 ; (v + 0)
1141 : 85 11 __ STA P4 ; (v + 0)
1143 : a9 00 __ LDA #$00
1145 : e5 12 __ SBC P5 ; (v + 1)
1147 : 85 12 __ STA P5 ; (v + 1)
1149 : a9 00 __ LDA #$00
114b : e5 13 __ SBC P6 ; (v + 2)
114d : 85 13 __ STA P6 ; (v + 2)
114f : a9 00 __ LDA #$00
1151 : e5 14 __ SBC P7 ; (v + 3)
1153 : 85 14 __ STA P7 ; (v + 3)
1155 : e6 43 __ INC T4 + 0 
.s5:
1157 : a9 10 __ LDA #$10
1159 : 85 44 __ STA T5 + 0 
115b : a5 14 __ LDA P7 ; (v + 3)
115d : f0 03 __ BEQ $1162 ; (nforml.s31 + 0)
115f : 4c 2a 12 JMP $122a ; (nforml.l28 + 0)
.s31:
1162 : a5 13 __ LDA P6 ; (v + 2)
1164 : d0 f9 __ BNE $115f ; (nforml.s5 + 8)
.s32:
1166 : a5 12 __ LDA P5 ; (v + 1)
1168 : d0 f5 __ BNE $115f ; (nforml.s5 + 8)
.s33:
116a : c5 11 __ CMP P4 ; (v + 0)
116c : 90 f1 __ BCC $115f ; (nforml.s5 + 8)
.s6:
116e : a0 02 __ LDY #$02
1170 : b1 0d __ LDA (P0),y ; (si + 0)
1172 : c9 ff __ CMP #$ff
1174 : d0 04 __ BNE $117a ; (nforml.s27 + 0)
.s7:
1176 : a9 0f __ LDA #$0f
1178 : d0 05 __ BNE $117f ; (nforml.s41 + 0)
.s27:
117a : 38 __ __ SEC
117b : a9 10 __ LDA #$10
117d : f1 0d __ SBC (P0),y ; (si + 0)
.s41:
117f : c5 44 __ CMP T5 + 0 
1181 : b0 0e __ BCS $1191 ; (nforml.s8 + 0)
.s26:
1183 : a8 __ __ TAY
1184 : a9 30 __ LDA #$30
.l42:
1186 : a6 44 __ LDX T5 + 0 
1188 : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
118b : c6 44 __ DEC T5 + 0 
118d : c4 44 __ CPY T5 + 0 
118f : 90 f5 __ BCC $1186 ; (nforml.l42 + 0)
.s8:
1191 : a0 07 __ LDY #$07
1193 : b1 0d __ LDA (P0),y ; (si + 0)
1195 : f0 1d __ BEQ $11b4 ; (nforml.s9 + 0)
.s24:
1197 : a0 04 __ LDY #$04
1199 : b1 0d __ LDA (P0),y ; (si + 0)
119b : c9 10 __ CMP #$10
119d : d0 15 __ BNE $11b4 ; (nforml.s9 + 0)
.s25:
119f : 88 __ __ DEY
11a0 : b1 0d __ LDA (P0),y ; (si + 0)
11a2 : a8 __ __ TAY
11a3 : a9 30 __ LDA #$30
11a5 : a6 44 __ LDX T5 + 0 
11a7 : 9d d7 9f STA $9fd7,x ; (si.left + 0)
11aa : 98 __ __ TYA
11ab : 69 16 __ ADC #$16
11ad : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
11b0 : ca __ __ DEX
11b1 : ca __ __ DEX
11b2 : 86 44 __ STX T5 + 0 
.s9:
11b4 : a9 00 __ LDA #$00
11b6 : 85 1b __ STA ACCU + 0 
11b8 : a5 43 __ LDA T4 + 0 
11ba : f0 0c __ BEQ $11c8 ; (nforml.s10 + 0)
.s23:
11bc : a9 2d __ LDA #$2d
.s22:
11be : a6 44 __ LDX T5 + 0 
11c0 : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
11c3 : c6 44 __ DEC T5 + 0 
11c5 : 4c d2 11 JMP $11d2 ; (nforml.s11 + 0)
.s10:
11c8 : a0 05 __ LDY #$05
11ca : b1 0d __ LDA (P0),y ; (si + 0)
11cc : f0 04 __ BEQ $11d2 ; (nforml.s11 + 0)
.s21:
11ce : a9 2b __ LDA #$2b
11d0 : d0 ec __ BNE $11be ; (nforml.s22 + 0)
.s11:
11d2 : a6 44 __ LDX T5 + 0 
11d4 : a0 06 __ LDY #$06
11d6 : b1 0d __ LDA (P0),y ; (si + 0)
11d8 : d0 29 __ BNE $1203 ; (nforml.s17 + 0)
.l12:
11da : 8a __ __ TXA
11db : 18 __ __ CLC
11dc : a0 01 __ LDY #$01
11de : 71 0d __ ADC (P0),y ; (si + 0)
11e0 : b0 04 __ BCS $11e6 ; (nforml.s15 + 0)
.s16:
11e2 : c9 11 __ CMP #$11
11e4 : 90 0a __ BCC $11f0 ; (nforml.s13 + 0)
.s15:
11e6 : a0 00 __ LDY #$00
11e8 : b1 0d __ LDA (P0),y ; (si + 0)
11ea : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
11ed : ca __ __ DEX
11ee : b0 ea __ BCS $11da ; (nforml.l12 + 0)
.s13:
11f0 : e0 10 __ CPX #$10
11f2 : b0 0e __ BCS $1202 ; (nforml.s3 + 0)
.s14:
11f4 : 88 __ __ DEY
.l39:
11f5 : bd d9 9f LDA $9fd9,x ; (buffer[0] + 0)
11f8 : 91 0f __ STA (P2),y ; (str + 0)
11fa : c8 __ __ INY
11fb : e8 __ __ INX
11fc : e0 10 __ CPX #$10
11fe : 90 f5 __ BCC $11f5 ; (nforml.l39 + 0)
.s40:
1200 : 84 1b __ STY ACCU + 0 
.s3:
1202 : 60 __ __ RTS
.s17:
1203 : e0 10 __ CPX #$10
1205 : b0 1a __ BCS $1221 ; (nforml.l18 + 0)
.s20:
1207 : a0 00 __ LDY #$00
.l37:
1209 : bd d9 9f LDA $9fd9,x ; (buffer[0] + 0)
120c : 91 0f __ STA (P2),y ; (str + 0)
120e : c8 __ __ INY
120f : e8 __ __ INX
1210 : e0 10 __ CPX #$10
1212 : 90 f5 __ BCC $1209 ; (nforml.l37 + 0)
.s38:
1214 : 84 1b __ STY ACCU + 0 
1216 : b0 09 __ BCS $1221 ; (nforml.l18 + 0)
.s19:
1218 : 88 __ __ DEY
1219 : b1 0d __ LDA (P0),y ; (si + 0)
121b : a4 1b __ LDY ACCU + 0 
121d : 91 0f __ STA (P2),y ; (str + 0)
121f : e6 1b __ INC ACCU + 0 
.l18:
1221 : a5 1b __ LDA ACCU + 0 
1223 : a0 01 __ LDY #$01
1225 : d1 0d __ CMP (P0),y ; (si + 0)
1227 : 90 ef __ BCC $1218 ; (nforml.s19 + 0)
1229 : 60 __ __ RTS
.l28:
122a : a0 04 __ LDY #$04
122c : b1 0d __ LDA (P0),y ; (si + 0)
122e : 85 03 __ STA WORK + 0 
1230 : a5 11 __ LDA P4 ; (v + 0)
1232 : 85 1b __ STA ACCU + 0 
1234 : a5 12 __ LDA P5 ; (v + 1)
1236 : 85 1c __ STA ACCU + 1 
1238 : a5 13 __ LDA P6 ; (v + 2)
123a : 85 1d __ STA ACCU + 2 
123c : a5 14 __ LDA P7 ; (v + 3)
123e : 85 1e __ STA ACCU + 3 
1240 : a9 00 __ LDA #$00
1242 : 85 04 __ STA WORK + 1 
1244 : 85 05 __ STA WORK + 2 
1246 : 85 06 __ STA WORK + 3 
1248 : 20 ab 22 JSR $22ab ; (divmod32 + 0)
124b : a5 07 __ LDA WORK + 4 
124d : c9 0a __ CMP #$0a
124f : b0 04 __ BCS $1255 ; (nforml.s34 + 0)
.s29:
1251 : a9 30 __ LDA #$30
1253 : 90 06 __ BCC $125b ; (nforml.s30 + 0)
.s34:
1255 : a0 03 __ LDY #$03
1257 : b1 0d __ LDA (P0),y ; (si + 0)
1259 : e9 0a __ SBC #$0a
.s30:
125b : 18 __ __ CLC
125c : 65 07 __ ADC WORK + 4 
125e : a6 44 __ LDX T5 + 0 
1260 : 9d d8 9f STA $9fd8,x ; (si.prefix + 0)
1263 : c6 44 __ DEC T5 + 0 
1265 : a5 1b __ LDA ACCU + 0 
1267 : 85 11 __ STA P4 ; (v + 0)
1269 : a5 1c __ LDA ACCU + 1 
126b : 85 12 __ STA P5 ; (v + 1)
126d : a5 1d __ LDA ACCU + 2 
126f : 85 13 __ STA P6 ; (v + 2)
1271 : a5 1e __ LDA ACCU + 3 
1273 : 85 14 __ STA P7 ; (v + 3)
1275 : d0 b3 __ BNE $122a ; (nforml.l28 + 0)
1277 : 4c 62 11 JMP $1162 ; (nforml.s31 + 0)
--------------------------------------------------------------------
nformf: ; nformf(const struct sinfo*,u8*,float,u8)->u8
; 199, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s1:
127a : a2 03 __ LDX #$03
127c : b5 53 __ LDA T7 + 0,x 
127e : 9d e0 9f STA $9fe0,x ; (nformf@stack + 0)
1281 : ca __ __ DEX
1282 : 10 f8 __ BPL $127c ; (nformf.s1 + 2)
.s4:
1284 : a5 16 __ LDA P9 ; (f + 1)
1286 : 85 44 __ STA T0 + 1 
1288 : a5 17 __ LDA P10 ; (f + 2)
128a : 85 45 __ STA T0 + 2 
128c : a5 18 __ LDA P11 ; (f + 3)
128e : 29 7f __ AND #$7f
1290 : 05 17 __ ORA P10 ; (f + 2)
1292 : 05 16 __ ORA P9 ; (f + 1)
1294 : 05 15 __ ORA P8 ; (f + 0)
1296 : f0 21 __ BEQ $12b9 ; (nformf.s5 + 0)
.s107:
1298 : 24 18 __ BIT P11 ; (f + 3)
129a : 10 1d __ BPL $12b9 ; (nformf.s5 + 0)
.s106:
129c : a9 2d __ LDA #$2d
129e : a0 00 __ LDY #$00
12a0 : 91 13 __ STA (P6),y ; (str + 0)
12a2 : a5 18 __ LDA P11 ; (f + 3)
12a4 : 49 80 __ EOR #$80
12a6 : 85 10 __ STA P3 
12a8 : 85 18 __ STA P11 ; (f + 3)
12aa : a5 15 __ LDA P8 ; (f + 0)
12ac : 85 0d __ STA P0 
12ae : a5 16 __ LDA P9 ; (f + 1)
12b0 : 85 0e __ STA P1 
12b2 : a5 17 __ LDA P10 ; (f + 2)
12b4 : 85 0f __ STA P2 
12b6 : 4c d0 17 JMP $17d0 ; (nformf.s104 + 0)
.s5:
12b9 : a5 15 __ LDA P8 ; (f + 0)
12bb : 85 0d __ STA P0 
12bd : a5 16 __ LDA P9 ; (f + 1)
12bf : 85 0e __ STA P1 
12c1 : a5 17 __ LDA P10 ; (f + 2)
12c3 : 85 0f __ STA P2 
12c5 : a5 18 __ LDA P11 ; (f + 3)
12c7 : 85 10 __ STA P3 
12c9 : a0 05 __ LDY #$05
12cb : b1 11 __ LDA (P4),y ; (si + 0)
12cd : f0 09 __ BEQ $12d8 ; (nformf.s6 + 0)
.s103:
12cf : a9 2b __ LDA #$2b
12d1 : a0 00 __ LDY #$00
12d3 : 91 13 __ STA (P6),y ; (str + 0)
12d5 : 4c d0 17 JMP $17d0 ; (nformf.s104 + 0)
.s6:
12d8 : 20 e1 17 JSR $17e1 ; (isinf.s4 + 0)
12db : a2 00 __ LDX #$00
12dd : 86 54 __ STX T9 + 0 
12df : a8 __ __ TAY
12e0 : f0 05 __ BEQ $12e7 ; (nformf.s7 + 0)
.s101:
12e2 : a9 02 __ LDA #$02
12e4 : 4c 97 17 JMP $1797 ; (nformf.s102 + 0)
.s7:
12e7 : a5 11 __ LDA P4 ; (si + 0)
12e9 : 85 4b __ STA T2 + 0 
12eb : a5 12 __ LDA P5 ; (si + 1)
12ed : 85 4c __ STA T2 + 1 
12ef : a0 02 __ LDY #$02
12f1 : b1 11 __ LDA (P4),y ; (si + 0)
12f3 : c9 ff __ CMP #$ff
12f5 : d0 02 __ BNE $12f9 ; (nformf.s100 + 0)
.s8:
12f7 : a9 06 __ LDA #$06
.s100:
12f9 : 85 4d __ STA T3 + 0 
12fb : 85 52 __ STA T6 + 0 
12fd : a9 00 __ LDA #$00
12ff : 85 4f __ STA T4 + 0 
1301 : 85 50 __ STA T4 + 1 
1303 : a5 18 __ LDA P11 ; (f + 3)
1305 : 85 46 __ STA T0 + 3 
1307 : 29 7f __ AND #$7f
1309 : 05 17 __ ORA P10 ; (f + 2)
130b : 05 16 __ ORA P9 ; (f + 1)
130d : a6 15 __ LDX P8 ; (f + 0)
130f : 86 43 __ STX T0 + 0 
1311 : 05 15 __ ORA P8 ; (f + 0)
1313 : d0 03 __ BNE $1318 ; (nformf.s67 + 0)
1315 : 4c 4c 14 JMP $144c ; (nformf.s9 + 0)
.s67:
1318 : a5 18 __ LDA P11 ; (f + 3)
131a : 10 03 __ BPL $131f ; (nformf.s95 + 0)
131c : 4c 9e 13 JMP $139e ; (nformf.l80 + 0)
.s95:
131f : c9 44 __ CMP #$44
1321 : d0 0d __ BNE $1330 ; (nformf.l99 + 0)
.s96:
1323 : a5 17 __ LDA P10 ; (f + 2)
1325 : c9 7a __ CMP #$7a
1327 : d0 07 __ BNE $1330 ; (nformf.l99 + 0)
.s97:
1329 : a5 16 __ LDA P9 ; (f + 1)
132b : d0 03 __ BNE $1330 ; (nformf.l99 + 0)
.s98:
132d : 8a __ __ TXA
132e : f0 02 __ BEQ $1332 ; (nformf.l90 + 0)
.l99:
1330 : 90 54 __ BCC $1386 ; (nformf.s68 + 0)
.l90:
1332 : 18 __ __ CLC
1333 : a5 4f __ LDA T4 + 0 
1335 : 69 03 __ ADC #$03
1337 : 85 4f __ STA T4 + 0 
1339 : 90 02 __ BCC $133d ; (nformf.s121 + 0)
.s120:
133b : e6 50 __ INC T4 + 1 
.s121:
133d : a5 43 __ LDA T0 + 0 
133f : 85 1b __ STA ACCU + 0 
1341 : a5 44 __ LDA T0 + 1 
1343 : 85 1c __ STA ACCU + 1 
1345 : a5 45 __ LDA T0 + 2 
1347 : 85 1d __ STA ACCU + 2 
1349 : a5 46 __ LDA T0 + 3 
134b : 85 1e __ STA ACCU + 3 
134d : a9 00 __ LDA #$00
134f : 85 03 __ STA WORK + 0 
1351 : 85 04 __ STA WORK + 1 
1353 : a9 7a __ LDA #$7a
1355 : 85 05 __ STA WORK + 2 
1357 : a9 44 __ LDA #$44
1359 : 85 06 __ STA WORK + 3 
135b : 20 b8 1e JSR $1eb8 ; (freg + 20)
135e : 20 9e 20 JSR $209e ; (crt_fdiv + 0)
1361 : a5 1b __ LDA ACCU + 0 
1363 : 85 43 __ STA T0 + 0 
1365 : a5 1c __ LDA ACCU + 1 
1367 : 85 44 __ STA T0 + 1 
1369 : a6 1d __ LDX ACCU + 2 
136b : 86 45 __ STX T0 + 2 
136d : a5 1e __ LDA ACCU + 3 
136f : 85 46 __ STA T0 + 3 
1371 : 30 13 __ BMI $1386 ; (nformf.s68 + 0)
.s91:
1373 : c9 44 __ CMP #$44
1375 : d0 b9 __ BNE $1330 ; (nformf.l99 + 0)
.s92:
1377 : e0 7a __ CPX #$7a
1379 : d0 b5 __ BNE $1330 ; (nformf.l99 + 0)
.s93:
137b : a5 1c __ LDA ACCU + 1 
137d : 38 __ __ SEC
137e : d0 b0 __ BNE $1330 ; (nformf.l99 + 0)
.s94:
1380 : a5 1b __ LDA ACCU + 0 
1382 : f0 ae __ BEQ $1332 ; (nformf.l90 + 0)
1384 : d0 aa __ BNE $1330 ; (nformf.l99 + 0)
.s68:
1386 : a5 46 __ LDA T0 + 3 
1388 : 30 14 __ BMI $139e ; (nformf.l80 + 0)
.s86:
138a : c9 3f __ CMP #$3f
138c : d0 0e __ BNE $139c ; (nformf.s85 + 0)
.s87:
138e : a5 45 __ LDA T0 + 2 
1390 : c9 80 __ CMP #$80
1392 : d0 08 __ BNE $139c ; (nformf.s85 + 0)
.s88:
1394 : a5 44 __ LDA T0 + 1 
1396 : d0 04 __ BNE $139c ; (nformf.s85 + 0)
.s89:
1398 : a5 43 __ LDA T0 + 0 
139a : f0 49 __ BEQ $13e5 ; (nformf.s69 + 0)
.s85:
139c : b0 47 __ BCS $13e5 ; (nformf.s69 + 0)
.l80:
139e : 38 __ __ SEC
139f : a5 4f __ LDA T4 + 0 
13a1 : e9 03 __ SBC #$03
13a3 : 85 4f __ STA T4 + 0 
13a5 : b0 02 __ BCS $13a9 ; (nformf.s116 + 0)
.s115:
13a7 : c6 50 __ DEC T4 + 1 
.s116:
13a9 : a9 00 __ LDA #$00
13ab : 85 1b __ STA ACCU + 0 
13ad : 85 1c __ STA ACCU + 1 
13af : a9 7a __ LDA #$7a
13b1 : 85 1d __ STA ACCU + 2 
13b3 : a9 44 __ LDA #$44
13b5 : 85 1e __ STA ACCU + 3 
13b7 : a2 43 __ LDX #$43
13b9 : 20 a8 1e JSR $1ea8 ; (freg + 4)
13bc : 20 d6 1f JSR $1fd6 ; (crt_fmul + 0)
13bf : a5 1b __ LDA ACCU + 0 
13c1 : 85 43 __ STA T0 + 0 
13c3 : a5 1c __ LDA ACCU + 1 
13c5 : 85 44 __ STA T0 + 1 
13c7 : a6 1d __ LDX ACCU + 2 
13c9 : 86 45 __ STX T0 + 2 
13cb : a5 1e __ LDA ACCU + 3 
13cd : 85 46 __ STA T0 + 3 
13cf : 30 cd __ BMI $139e ; (nformf.l80 + 0)
.s81:
13d1 : c9 3f __ CMP #$3f
13d3 : 90 c9 __ BCC $139e ; (nformf.l80 + 0)
.s122:
13d5 : d0 0e __ BNE $13e5 ; (nformf.s69 + 0)
.s82:
13d7 : e0 80 __ CPX #$80
13d9 : 90 c3 __ BCC $139e ; (nformf.l80 + 0)
.s123:
13db : d0 08 __ BNE $13e5 ; (nformf.s69 + 0)
.s83:
13dd : a5 1c __ LDA ACCU + 1 
13df : d0 bb __ BNE $139c ; (nformf.s85 + 0)
.s84:
13e1 : a5 1b __ LDA ACCU + 0 
13e3 : d0 b7 __ BNE $139c ; (nformf.s85 + 0)
.s69:
13e5 : a5 46 __ LDA T0 + 3 
13e7 : 30 63 __ BMI $144c ; (nformf.s9 + 0)
.s75:
13e9 : c9 41 __ CMP #$41
13eb : d0 0e __ BNE $13fb ; (nformf.l79 + 0)
.s76:
13ed : a5 45 __ LDA T0 + 2 
13ef : c9 20 __ CMP #$20
13f1 : d0 08 __ BNE $13fb ; (nformf.l79 + 0)
.s77:
13f3 : a5 44 __ LDA T0 + 1 
13f5 : d0 04 __ BNE $13fb ; (nformf.l79 + 0)
.s78:
13f7 : a5 43 __ LDA T0 + 0 
13f9 : f0 02 __ BEQ $13fd ; (nformf.l70 + 0)
.l79:
13fb : 90 4f __ BCC $144c ; (nformf.s9 + 0)
.l70:
13fd : e6 4f __ INC T4 + 0 
13ff : d0 02 __ BNE $1403 ; (nformf.s119 + 0)
.s118:
1401 : e6 50 __ INC T4 + 1 
.s119:
1403 : a5 43 __ LDA T0 + 0 
1405 : 85 1b __ STA ACCU + 0 
1407 : a5 44 __ LDA T0 + 1 
1409 : 85 1c __ STA ACCU + 1 
140b : a5 45 __ LDA T0 + 2 
140d : 85 1d __ STA ACCU + 2 
140f : a5 46 __ LDA T0 + 3 
1411 : 85 1e __ STA ACCU + 3 
1413 : a9 00 __ LDA #$00
1415 : 85 03 __ STA WORK + 0 
1417 : 85 04 __ STA WORK + 1 
1419 : a9 20 __ LDA #$20
141b : 85 05 __ STA WORK + 2 
141d : a9 41 __ LDA #$41
141f : 85 06 __ STA WORK + 3 
1421 : 20 b8 1e JSR $1eb8 ; (freg + 20)
1424 : 20 9e 20 JSR $209e ; (crt_fdiv + 0)
1427 : a5 1b __ LDA ACCU + 0 
1429 : 85 43 __ STA T0 + 0 
142b : a5 1c __ LDA ACCU + 1 
142d : 85 44 __ STA T0 + 1 
142f : a6 1d __ LDX ACCU + 2 
1431 : 86 45 __ STX T0 + 2 
1433 : a5 1e __ LDA ACCU + 3 
1435 : 85 46 __ STA T0 + 3 
1437 : 30 13 __ BMI $144c ; (nformf.s9 + 0)
.s71:
1439 : c9 41 __ CMP #$41
143b : d0 be __ BNE $13fb ; (nformf.l79 + 0)
.s72:
143d : e0 20 __ CPX #$20
143f : d0 ba __ BNE $13fb ; (nformf.l79 + 0)
.s73:
1441 : a5 1c __ LDA ACCU + 1 
1443 : 38 __ __ SEC
1444 : d0 b5 __ BNE $13fb ; (nformf.l79 + 0)
.s74:
1446 : a5 1b __ LDA ACCU + 0 
1448 : f0 b3 __ BEQ $13fd ; (nformf.l70 + 0)
144a : d0 af __ BNE $13fb ; (nformf.l79 + 0)
.s9:
144c : ad e9 9f LDA $9fe9 ; (sstack + 0)
144f : c9 65 __ CMP #$65
1451 : d0 04 __ BNE $1457 ; (nformf.s11 + 0)
.s10:
1453 : a9 01 __ LDA #$01
1455 : d0 02 __ BNE $1459 ; (nformf.s12 + 0)
.s11:
1457 : a9 00 __ LDA #$00
.s12:
1459 : 85 55 __ STA T10 + 0 
145b : a6 4d __ LDX T3 + 0 
145d : e8 __ __ INX
145e : 86 51 __ STX T5 + 0 
1460 : ad e9 9f LDA $9fe9 ; (sstack + 0)
1463 : c9 67 __ CMP #$67
1465 : d0 13 __ BNE $147a ; (nformf.s13 + 0)
.s63:
1467 : a5 50 __ LDA T4 + 1 
1469 : 30 08 __ BMI $1473 ; (nformf.s64 + 0)
.s66:
146b : d0 06 __ BNE $1473 ; (nformf.s64 + 0)
.s65:
146d : a5 4f __ LDA T4 + 0 
146f : c9 04 __ CMP #$04
1471 : 90 07 __ BCC $147a ; (nformf.s13 + 0)
.s64:
1473 : a9 01 __ LDA #$01
1475 : 85 55 __ STA T10 + 0 
1477 : 4c fd 16 JMP $16fd ; (nformf.s53 + 0)
.s13:
147a : a5 55 __ LDA T10 + 0 
147c : d0 f9 __ BNE $1477 ; (nformf.s64 + 4)
.s14:
147e : 24 50 __ BIT T4 + 1 
1480 : 10 43 __ BPL $14c5 ; (nformf.s15 + 0)
.s52:
1482 : a5 43 __ LDA T0 + 0 
1484 : 85 1b __ STA ACCU + 0 
1486 : a5 44 __ LDA T0 + 1 
1488 : 85 1c __ STA ACCU + 1 
148a : a5 45 __ LDA T0 + 2 
148c : 85 1d __ STA ACCU + 2 
148e : a5 46 __ LDA T0 + 3 
1490 : 85 1e __ STA ACCU + 3 
.l108:
1492 : a9 00 __ LDA #$00
1494 : 85 03 __ STA WORK + 0 
1496 : 85 04 __ STA WORK + 1 
1498 : a9 20 __ LDA #$20
149a : 85 05 __ STA WORK + 2 
149c : a9 41 __ LDA #$41
149e : 85 06 __ STA WORK + 3 
14a0 : 20 b8 1e JSR $1eb8 ; (freg + 20)
14a3 : 20 9e 20 JSR $209e ; (crt_fdiv + 0)
14a6 : 18 __ __ CLC
14a7 : a5 4f __ LDA T4 + 0 
14a9 : 69 01 __ ADC #$01
14ab : 85 4f __ STA T4 + 0 
14ad : a5 50 __ LDA T4 + 1 
14af : 69 00 __ ADC #$00
14b1 : 85 50 __ STA T4 + 1 
14b3 : 30 dd __ BMI $1492 ; (nformf.l108 + 0)
.s109:
14b5 : a5 1e __ LDA ACCU + 3 
14b7 : 85 46 __ STA T0 + 3 
14b9 : a5 1d __ LDA ACCU + 2 
14bb : 85 45 __ STA T0 + 2 
14bd : a5 1c __ LDA ACCU + 1 
14bf : 85 44 __ STA T0 + 1 
14c1 : a5 1b __ LDA ACCU + 0 
14c3 : 85 43 __ STA T0 + 0 
.s15:
14c5 : 18 __ __ CLC
14c6 : a5 4d __ LDA T3 + 0 
14c8 : 65 4f __ ADC T4 + 0 
14ca : 18 __ __ CLC
14cb : 69 01 __ ADC #$01
14cd : 85 51 __ STA T5 + 0 
14cf : c9 07 __ CMP #$07
14d1 : 90 14 __ BCC $14e7 ; (nformf.s51 + 0)
.s16:
14d3 : ad 86 2b LDA $2b86 ; (fround5[0] + 24)
14d6 : 85 47 __ STA T1 + 0 
14d8 : ad 87 2b LDA $2b87 ; (fround5[0] + 25)
14db : 85 48 __ STA T1 + 1 
14dd : ad 88 2b LDA $2b88 ; (fround5[0] + 26)
14e0 : 85 49 __ STA T1 + 2 
14e2 : ad 89 2b LDA $2b89 ; (fround5[0] + 27)
14e5 : b0 15 __ BCS $14fc ; (nformf.s17 + 0)
.s51:
14e7 : 0a __ __ ASL
14e8 : 0a __ __ ASL
14e9 : aa __ __ TAX
14ea : bd 6a 2b LDA $2b6a,x ; (px + 0)
14ed : 85 47 __ STA T1 + 0 
14ef : bd 6b 2b LDA $2b6b,x ; (px + 1)
14f2 : 85 48 __ STA T1 + 1 
14f4 : bd 6c 2b LDA $2b6c,x ; (py + 0)
14f7 : 85 49 __ STA T1 + 2 
14f9 : bd 6d 2b LDA $2b6d,x ; (py + 1)
.s17:
14fc : 85 4a __ STA T1 + 3 
14fe : a5 43 __ LDA T0 + 0 
1500 : 85 1b __ STA ACCU + 0 
1502 : a5 44 __ LDA T0 + 1 
1504 : 85 1c __ STA ACCU + 1 
1506 : a5 45 __ LDA T0 + 2 
1508 : 85 1d __ STA ACCU + 2 
150a : a5 46 __ LDA T0 + 3 
150c : 85 1e __ STA ACCU + 3 
150e : a2 47 __ LDX #$47
1510 : 20 a8 1e JSR $1ea8 ; (freg + 4)
1513 : 20 ef 1e JSR $1eef ; (faddsub + 6)
1516 : a5 1c __ LDA ACCU + 1 
1518 : 85 16 __ STA P9 ; (f + 1)
151a : a5 1d __ LDA ACCU + 2 
151c : 85 17 __ STA P10 ; (f + 2)
151e : a6 1b __ LDX ACCU + 0 
1520 : a5 1e __ LDA ACCU + 3 
1522 : 85 18 __ STA P11 ; (f + 3)
1524 : 30 3a __ BMI $1560 ; (nformf.s18 + 0)
.s46:
1526 : c9 41 __ CMP #$41
1528 : d0 0d __ BNE $1537 ; (nformf.s50 + 0)
.s47:
152a : a5 17 __ LDA P10 ; (f + 2)
152c : c9 20 __ CMP #$20
152e : d0 07 __ BNE $1537 ; (nformf.s50 + 0)
.s48:
1530 : a5 16 __ LDA P9 ; (f + 1)
1532 : d0 03 __ BNE $1537 ; (nformf.s50 + 0)
.s49:
1534 : 8a __ __ TXA
1535 : f0 02 __ BEQ $1539 ; (nformf.s45 + 0)
.s50:
1537 : 90 27 __ BCC $1560 ; (nformf.s18 + 0)
.s45:
1539 : a9 00 __ LDA #$00
153b : 85 03 __ STA WORK + 0 
153d : 85 04 __ STA WORK + 1 
153f : a9 20 __ LDA #$20
1541 : 85 05 __ STA WORK + 2 
1543 : a9 41 __ LDA #$41
1545 : 85 06 __ STA WORK + 3 
1547 : 20 b8 1e JSR $1eb8 ; (freg + 20)
154a : 20 9e 20 JSR $209e ; (crt_fdiv + 0)
154d : a5 1c __ LDA ACCU + 1 
154f : 85 16 __ STA P9 ; (f + 1)
1551 : a5 1d __ LDA ACCU + 2 
1553 : 85 17 __ STA P10 ; (f + 2)
1555 : a5 1e __ LDA ACCU + 3 
1557 : 85 18 __ STA P11 ; (f + 3)
1559 : a6 4d __ LDX T3 + 0 
155b : ca __ __ DEX
155c : 86 52 __ STX T6 + 0 
155e : a6 1b __ LDX ACCU + 0 
.s18:
1560 : 38 __ __ SEC
1561 : a5 51 __ LDA T5 + 0 
1563 : e5 52 __ SBC T6 + 0 
1565 : 85 4d __ STA T3 + 0 
1567 : a5 51 __ LDA T5 + 0 
1569 : c9 15 __ CMP #$15
156b : 90 04 __ BCC $1571 ; (nformf.s19 + 0)
.s44:
156d : a9 14 __ LDA #$14
156f : 85 51 __ STA T5 + 0 
.s19:
1571 : a5 4d __ LDA T3 + 0 
1573 : d0 08 __ BNE $157d ; (nformf.s21 + 0)
.s20:
1575 : a9 30 __ LDA #$30
1577 : a4 54 __ LDY T9 + 0 
1579 : 91 13 __ STA (P6),y ; (str + 0)
157b : e6 54 __ INC T9 + 0 
.s21:
157d : a9 00 __ LDA #$00
157f : 85 56 __ STA T11 + 0 
1581 : c5 4d __ CMP T3 + 0 
1583 : f0 6f __ BEQ $15f4 ; (nformf.l43 + 0)
.s23:
1585 : c9 07 __ CMP #$07
1587 : 90 04 __ BCC $158d ; (nformf.s24 + 0)
.l42:
1589 : a9 30 __ LDA #$30
158b : b0 55 __ BCS $15e2 ; (nformf.l25 + 0)
.s24:
158d : 86 1b __ STX ACCU + 0 
158f : 86 43 __ STX T0 + 0 
1591 : a5 16 __ LDA P9 ; (f + 1)
1593 : 85 1c __ STA ACCU + 1 
1595 : 85 44 __ STA T0 + 1 
1597 : a5 17 __ LDA P10 ; (f + 2)
1599 : 85 1d __ STA ACCU + 2 
159b : 85 45 __ STA T0 + 2 
159d : a5 18 __ LDA P11 ; (f + 3)
159f : 85 1e __ STA ACCU + 3 
15a1 : 85 46 __ STA T0 + 3 
15a3 : 20 18 22 JSR $2218 ; (f32_to_i16 + 0)
15a6 : a5 1b __ LDA ACCU + 0 
15a8 : 85 53 __ STA T7 + 0 
15aa : 20 64 22 JSR $2264 ; (sint16_to_float + 0)
15ad : a2 43 __ LDX #$43
15af : 20 a8 1e JSR $1ea8 ; (freg + 4)
15b2 : a5 1e __ LDA ACCU + 3 
15b4 : 49 80 __ EOR #$80
15b6 : 85 1e __ STA ACCU + 3 
15b8 : 20 ef 1e JSR $1eef ; (faddsub + 6)
15bb : a9 00 __ LDA #$00
15bd : 85 03 __ STA WORK + 0 
15bf : 85 04 __ STA WORK + 1 
15c1 : a9 20 __ LDA #$20
15c3 : 85 05 __ STA WORK + 2 
15c5 : a9 41 __ LDA #$41
15c7 : 85 06 __ STA WORK + 3 
15c9 : 20 b8 1e JSR $1eb8 ; (freg + 20)
15cc : 20 d6 1f JSR $1fd6 ; (crt_fmul + 0)
15cf : a5 1c __ LDA ACCU + 1 
15d1 : 85 16 __ STA P9 ; (f + 1)
15d3 : a5 1d __ LDA ACCU + 2 
15d5 : 85 17 __ STA P10 ; (f + 2)
15d7 : a5 1e __ LDA ACCU + 3 
15d9 : 85 18 __ STA P11 ; (f + 3)
15db : 18 __ __ CLC
15dc : a5 53 __ LDA T7 + 0 
15de : 69 30 __ ADC #$30
15e0 : a6 1b __ LDX ACCU + 0 
.l25:
15e2 : a4 54 __ LDY T9 + 0 
15e4 : 91 13 __ STA (P6),y ; (str + 0)
15e6 : e6 54 __ INC T9 + 0 
15e8 : e6 56 __ INC T11 + 0 
15ea : a5 56 __ LDA T11 + 0 
15ec : c5 51 __ CMP T5 + 0 
15ee : b0 14 __ BCS $1604 ; (nformf.s26 + 0)
.s22:
15f0 : c5 4d __ CMP T3 + 0 
15f2 : d0 91 __ BNE $1585 ; (nformf.s23 + 0)
.l43:
15f4 : a9 2e __ LDA #$2e
15f6 : a4 54 __ LDY T9 + 0 
15f8 : 91 13 __ STA (P6),y ; (str + 0)
15fa : e6 54 __ INC T9 + 0 
15fc : a5 56 __ LDA T11 + 0 
15fe : c9 07 __ CMP #$07
1600 : 90 8b __ BCC $158d ; (nformf.s24 + 0)
1602 : b0 85 __ BCS $1589 ; (nformf.l42 + 0)
.s26:
1604 : a5 55 __ LDA T10 + 0 
1606 : f0 66 __ BEQ $166e ; (nformf.s124 + 0)
.s38:
1608 : a0 03 __ LDY #$03
160a : b1 4b __ LDA (T2 + 0),y 
160c : 69 03 __ ADC #$03
160e : a4 54 __ LDY T9 + 0 
1610 : 91 13 __ STA (P6),y ; (str + 0)
1612 : c8 __ __ INY
1613 : 84 54 __ STY T9 + 0 
1615 : 24 50 __ BIT T4 + 1 
1617 : 30 06 __ BMI $161f ; (nformf.s41 + 0)
.s39:
1619 : a9 2b __ LDA #$2b
161b : 91 13 __ STA (P6),y ; (str + 0)
161d : d0 11 __ BNE $1630 ; (nformf.s40 + 0)
.s41:
161f : a9 2d __ LDA #$2d
1621 : 91 13 __ STA (P6),y ; (str + 0)
1623 : 38 __ __ SEC
1624 : a9 00 __ LDA #$00
1626 : e5 4f __ SBC T4 + 0 
1628 : 85 4f __ STA T4 + 0 
162a : a9 00 __ LDA #$00
162c : e5 50 __ SBC T4 + 1 
162e : 85 50 __ STA T4 + 1 
.s40:
1630 : e6 54 __ INC T9 + 0 
1632 : a5 4f __ LDA T4 + 0 
1634 : 85 1b __ STA ACCU + 0 
1636 : a5 50 __ LDA T4 + 1 
1638 : 85 1c __ STA ACCU + 1 
163a : a9 0a __ LDA #$0a
163c : 85 03 __ STA WORK + 0 
163e : a9 00 __ LDA #$00
1640 : 85 04 __ STA WORK + 1 
1642 : 20 4c 21 JSR $214c ; (divs16 + 0)
1645 : 18 __ __ CLC
1646 : a5 1b __ LDA ACCU + 0 
1648 : 69 30 __ ADC #$30
164a : a4 54 __ LDY T9 + 0 
164c : 91 13 __ STA (P6),y ; (str + 0)
164e : e6 54 __ INC T9 + 0 
1650 : a5 4f __ LDA T4 + 0 
1652 : 85 1b __ STA ACCU + 0 
1654 : a5 50 __ LDA T4 + 1 
1656 : 85 1c __ STA ACCU + 1 
1658 : a9 0a __ LDA #$0a
165a : 85 03 __ STA WORK + 0 
165c : a9 00 __ LDA #$00
165e : 85 04 __ STA WORK + 1 
1660 : 20 eb 21 JSR $21eb ; (mods16 + 0)
1663 : 18 __ __ CLC
1664 : a5 05 __ LDA WORK + 2 
1666 : 69 30 __ ADC #$30
1668 : a4 54 __ LDY T9 + 0 
166a : 91 13 __ STA (P6),y ; (str + 0)
166c : e6 54 __ INC T9 + 0 
.s124:
166e : a5 54 __ LDA T9 + 0 
.s27:
1670 : a0 01 __ LDY #$01
1672 : d1 11 __ CMP (P4),y ; (si + 0)
1674 : b0 6b __ BCS $16e1 ; (nformf.s3 + 0)
.s28:
1676 : a0 06 __ LDY #$06
1678 : b1 11 __ LDA (P4),y ; (si + 0)
167a : f0 04 __ BEQ $1680 ; (nformf.s29 + 0)
.s110:
167c : a6 54 __ LDX T9 + 0 
167e : 90 6e __ BCC $16ee ; (nformf.l36 + 0)
.s29:
1680 : a5 54 __ LDA T9 + 0 
1682 : f0 3e __ BEQ $16c2 ; (nformf.s30 + 0)
.s35:
1684 : e9 00 __ SBC #$00
1686 : a8 __ __ TAY
1687 : a9 00 __ LDA #$00
1689 : e9 00 __ SBC #$00
168b : aa __ __ TAX
168c : 98 __ __ TYA
168d : 18 __ __ CLC
168e : 65 13 __ ADC P6 ; (str + 0)
1690 : 85 47 __ STA T1 + 0 
1692 : 8a __ __ TXA
1693 : 65 14 __ ADC P7 ; (str + 1)
1695 : 85 48 __ STA T1 + 1 
1697 : a9 01 __ LDA #$01
1699 : 85 4b __ STA T2 + 0 
169b : a6 14 __ LDX P7 ; (str + 1)
169d : 38 __ __ SEC
.l111:
169e : a0 01 __ LDY #$01
16a0 : b1 11 __ LDA (P4),y ; (si + 0)
16a2 : e5 4b __ SBC T2 + 0 
16a4 : 85 4d __ STA T3 + 0 
16a6 : 8a __ __ TXA
16a7 : 69 ff __ ADC #$ff
16a9 : 85 4e __ STA T3 + 1 
16ab : 88 __ __ DEY
16ac : b1 47 __ LDA (T1 + 0),y 
16ae : a4 13 __ LDY P6 ; (str + 0)
16b0 : 91 4d __ STA (T3 + 0),y 
16b2 : a5 47 __ LDA T1 + 0 
16b4 : d0 02 __ BNE $16b8 ; (nformf.s114 + 0)
.s113:
16b6 : c6 48 __ DEC T1 + 1 
.s114:
16b8 : c6 47 __ DEC T1 + 0 
16ba : e6 4b __ INC T2 + 0 
16bc : a5 54 __ LDA T9 + 0 
16be : c5 4b __ CMP T2 + 0 
16c0 : b0 dc __ BCS $169e ; (nformf.l111 + 0)
.s30:
16c2 : a9 00 __ LDA #$00
16c4 : 85 4d __ STA T3 + 0 
16c6 : 90 08 __ BCC $16d0 ; (nformf.l31 + 0)
.s33:
16c8 : a9 20 __ LDA #$20
16ca : a4 4d __ LDY T3 + 0 
16cc : 91 13 __ STA (P6),y ; (str + 0)
16ce : e6 4d __ INC T3 + 0 
.l31:
16d0 : a0 01 __ LDY #$01
16d2 : b1 11 __ LDA (P4),y ; (si + 0)
16d4 : 38 __ __ SEC
16d5 : e5 54 __ SBC T9 + 0 
16d7 : 90 ef __ BCC $16c8 ; (nformf.s33 + 0)
.s34:
16d9 : c5 4d __ CMP T3 + 0 
16db : 90 02 __ BCC $16df ; (nformf.s32 + 0)
.s112:
16dd : d0 e9 __ BNE $16c8 ; (nformf.s33 + 0)
.s32:
16df : b1 11 __ LDA (P4),y ; (si + 0)
.s3:
16e1 : 85 1b __ STA ACCU + 0 
16e3 : a2 03 __ LDX #$03
16e5 : bd e0 9f LDA $9fe0,x ; (nformf@stack + 0)
16e8 : 95 53 __ STA T7 + 0,x 
16ea : ca __ __ DEX
16eb : 10 f8 __ BPL $16e5 ; (nformf.s3 + 4)
16ed : 60 __ __ RTS
.l36:
16ee : 8a __ __ TXA
16ef : a0 01 __ LDY #$01
16f1 : d1 11 __ CMP (P4),y ; (si + 0)
16f3 : b0 ea __ BCS $16df ; (nformf.s32 + 0)
.s37:
16f5 : a8 __ __ TAY
16f6 : a9 20 __ LDA #$20
16f8 : 91 13 __ STA (P6),y ; (str + 0)
16fa : e8 __ __ INX
16fb : 90 f1 __ BCC $16ee ; (nformf.l36 + 0)
.s53:
16fd : a5 51 __ LDA T5 + 0 
16ff : c9 07 __ CMP #$07
1701 : 90 14 __ BCC $1717 ; (nformf.s62 + 0)
.s54:
1703 : ad 86 2b LDA $2b86 ; (fround5[0] + 24)
1706 : 85 47 __ STA T1 + 0 
1708 : ad 87 2b LDA $2b87 ; (fround5[0] + 25)
170b : 85 48 __ STA T1 + 1 
170d : ad 88 2b LDA $2b88 ; (fround5[0] + 26)
1710 : 85 49 __ STA T1 + 2 
1712 : ad 89 2b LDA $2b89 ; (fround5[0] + 27)
1715 : b0 15 __ BCS $172c ; (nformf.s55 + 0)
.s62:
1717 : 0a __ __ ASL
1718 : 0a __ __ ASL
1719 : aa __ __ TAX
171a : bd 6a 2b LDA $2b6a,x ; (px + 0)
171d : 85 47 __ STA T1 + 0 
171f : bd 6b 2b LDA $2b6b,x ; (px + 1)
1722 : 85 48 __ STA T1 + 1 
1724 : bd 6c 2b LDA $2b6c,x ; (py + 0)
1727 : 85 49 __ STA T1 + 2 
1729 : bd 6d 2b LDA $2b6d,x ; (py + 1)
.s55:
172c : 85 4a __ STA T1 + 3 
172e : a5 43 __ LDA T0 + 0 
1730 : 85 1b __ STA ACCU + 0 
1732 : a5 44 __ LDA T0 + 1 
1734 : 85 1c __ STA ACCU + 1 
1736 : a5 45 __ LDA T0 + 2 
1738 : 85 1d __ STA ACCU + 2 
173a : a5 46 __ LDA T0 + 3 
173c : 85 1e __ STA ACCU + 3 
173e : a2 47 __ LDX #$47
1740 : 20 a8 1e JSR $1ea8 ; (freg + 4)
1743 : 20 ef 1e JSR $1eef ; (faddsub + 6)
1746 : a5 1c __ LDA ACCU + 1 
1748 : 85 16 __ STA P9 ; (f + 1)
174a : a5 1d __ LDA ACCU + 2 
174c : 85 17 __ STA P10 ; (f + 2)
174e : a6 1b __ LDX ACCU + 0 
1750 : a5 1e __ LDA ACCU + 3 
1752 : 85 18 __ STA P11 ; (f + 3)
1754 : 10 03 __ BPL $1759 ; (nformf.s57 + 0)
1756 : 4c 60 15 JMP $1560 ; (nformf.s18 + 0)
.s57:
1759 : c9 41 __ CMP #$41
175b : d0 0d __ BNE $176a ; (nformf.s61 + 0)
.s58:
175d : a5 17 __ LDA P10 ; (f + 2)
175f : c9 20 __ CMP #$20
1761 : d0 07 __ BNE $176a ; (nformf.s61 + 0)
.s59:
1763 : a5 16 __ LDA P9 ; (f + 1)
1765 : d0 03 __ BNE $176a ; (nformf.s61 + 0)
.s60:
1767 : 8a __ __ TXA
1768 : f0 02 __ BEQ $176c ; (nformf.s56 + 0)
.s61:
176a : 90 ea __ BCC $1756 ; (nformf.s55 + 42)
.s56:
176c : a9 00 __ LDA #$00
176e : 85 03 __ STA WORK + 0 
1770 : 85 04 __ STA WORK + 1 
1772 : a9 20 __ LDA #$20
1774 : 85 05 __ STA WORK + 2 
1776 : a9 41 __ LDA #$41
1778 : 85 06 __ STA WORK + 3 
177a : 20 b8 1e JSR $1eb8 ; (freg + 20)
177d : 20 9e 20 JSR $209e ; (crt_fdiv + 0)
1780 : a5 1c __ LDA ACCU + 1 
1782 : 85 16 __ STA P9 ; (f + 1)
1784 : a5 1d __ LDA ACCU + 2 
1786 : 85 17 __ STA P10 ; (f + 2)
1788 : a5 1e __ LDA ACCU + 3 
178a : 85 18 __ STA P11 ; (f + 3)
178c : a6 1b __ LDX ACCU + 0 
178e : e6 4f __ INC T4 + 0 
1790 : d0 c4 __ BNE $1756 ; (nformf.s55 + 42)
.s117:
1792 : e6 50 __ INC T4 + 1 
1794 : 4c 60 15 JMP $1560 ; (nformf.s18 + 0)
.s102:
1797 : 85 47 __ STA T1 + 0 
1799 : 8a __ __ TXA
179a : 18 __ __ CLC
179b : 65 13 __ ADC P6 ; (str + 0)
179d : 85 43 __ STA T0 + 0 
179f : a5 14 __ LDA P7 ; (str + 1)
17a1 : 69 00 __ ADC #$00
17a3 : 85 44 __ STA T0 + 1 
17a5 : a0 03 __ LDY #$03
17a7 : b1 11 __ LDA (P4),y ; (si + 0)
17a9 : 18 __ __ CLC
17aa : 69 08 __ ADC #$08
17ac : a0 00 __ LDY #$00
17ae : 91 43 __ STA (T0 + 0),y 
17b0 : 18 __ __ CLC
17b1 : a0 03 __ LDY #$03
17b3 : b1 11 __ LDA (P4),y ; (si + 0)
17b5 : 69 0d __ ADC #$0d
17b7 : a0 01 __ LDY #$01
17b9 : 91 43 __ STA (T0 + 0),y 
17bb : a0 03 __ LDY #$03
17bd : b1 11 __ LDA (P4),y ; (si + 0)
17bf : 18 __ __ CLC
17c0 : 69 05 __ ADC #$05
17c2 : a4 47 __ LDY T1 + 0 
17c4 : 91 13 __ STA (P6),y ; (str + 0)
17c6 : 18 __ __ CLC
17c7 : a5 54 __ LDA T9 + 0 
17c9 : 69 03 __ ADC #$03
17cb : 85 54 __ STA T9 + 0 
17cd : 4c 70 16 JMP $1670 ; (nformf.s27 + 0)
.s104:
17d0 : 20 e1 17 JSR $17e1 ; (isinf.s4 + 0)
17d3 : a2 01 __ LDX #$01
17d5 : 86 54 __ STX T9 + 0 
17d7 : a8 __ __ TAY
17d8 : d0 03 __ BNE $17dd ; (nformf.s105 + 0)
17da : 4c e7 12 JMP $12e7 ; (nformf.s7 + 0)
.s105:
17dd : a9 03 __ LDA #$03
17df : d0 b6 __ BNE $1797 ; (nformf.s102 + 0)
--------------------------------------------------------------------
isinf: ; isinf(float)->bool
;  26, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/math.h"
.s4:
17e1 : 06 0f __ ASL P2 ; (f + 2)
17e3 : a5 10 __ LDA P3 ; (f + 3)
17e5 : 2a __ __ ROL
17e6 : c9 ff __ CMP #$ff
17e8 : d0 03 __ BNE $17ed ; (isinf.s6 + 0)
.s5:
17ea : a9 01 __ LDA #$01
17ec : 60 __ __ RTS
.s6:
17ed : a9 00 __ LDA #$00
.s3:
17ef : 60 __ __ RTS
--------------------------------------------------------------------
17f0 : __ __ __ BYT 25 73 00                                        : %s.
--------------------------------------------------------------------
17f3 : __ __ __ BYT 12 40 92 00                                     : .@..
--------------------------------------------------------------------
17f7 : __ __ __ BYT 12 2a 92 00                                     : .*..
--------------------------------------------------------------------
17fb : __ __ __ BYT 12 4f 92 00                                     : .O..
--------------------------------------------------------------------
spentry:
17ff : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
1800 : __ __ __ BYT 3d 3d 3d 20 53 4f 4b 4f 42 41 4e 20 28 4f 53 43 : === SOKOBAN (OSC
1810 : __ __ __ BYT 41 52 36 34 29 20 3d 3d 3d 00                   : AR64) ===.
--------------------------------------------------------------------
update_ui: ; update_ui(i16)->void
; 156, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/sokobanoscar64.c"
.s4:
181a : ad fb 9f LDA $9ffb ; (sstack + 18)
181d : 18 __ __ CLC
181e : 69 01 __ ADC #$01
1820 : 8d f5 9f STA $9ff5 ; (sstack + 12)
1823 : a9 6c __ LDA #$6c
1825 : 8d f1 9f STA $9ff1 ; (sstack + 8)
1828 : a9 9f __ LDA #$9f
182a : 8d f2 9f STA $9ff2 ; (sstack + 9)
182d : a9 cc __ LDA #$cc
182f : 8d f3 9f STA $9ff3 ; (sstack + 10)
1832 : a9 18 __ LDA #$18
1834 : 8d f4 9f STA $9ff4 ; (sstack + 11)
1837 : ad fc 9f LDA $9ffc ; (sstack + 19)
183a : 69 00 __ ADC #$00
183c : 8d f6 9f STA $9ff6 ; (sstack + 13)
183f : ad b8 23 LDA $23b8 ; (level_moves + 0)
1842 : 8d f7 9f STA $9ff7 ; (sstack + 14)
1845 : ad b9 23 LDA $23b9 ; (level_moves + 1)
1848 : 8d f8 9f STA $9ff8 ; (sstack + 15)
184b : ad 8a 2b LDA $2b8a ; (total_moves + 0)
184e : 8d f9 9f STA $9ff9 ; (sstack + 16)
1851 : ad 8b 2b LDA $2b8b ; (total_moves + 1)
1854 : 8d fa 9f STA $9ffa ; (sstack + 17)
1857 : 20 7c 18 JSR $187c ; (sprintf.s1 + 0)
185a : a9 00 __ LDA #$00
185c : 85 0d __ STA P0 
185e : a9 01 __ LDA #$01
1860 : 85 0e __ STA P1 
1862 : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
1865 : a9 6c __ LDA #$6c
1867 : 8d f3 9f STA $9ff3 ; (sstack + 10)
186a : a9 9f __ LDA #$9f
186c : 8d f4 9f STA $9ff4 ; (sstack + 11)
186f : a9 f0 __ LDA #$f0
1871 : 8d f1 9f STA $9ff1 ; (sstack + 8)
1874 : a9 17 __ LDA #$17
1876 : 8d f2 9f STA $9ff2 ; (sstack + 9)
1879 : 4c 97 0b JMP $0b97 ; (printf.s4 + 0)
--------------------------------------------------------------------
sprintf: ; sprintf(u8*,const u8*)->i16
;  20, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.s1:
187c : a5 53 __ LDA T1 + 0 
187e : 8d c5 9f STA $9fc5 ; (sprintf@stack + 0)
1881 : a5 54 __ LDA T1 + 1 
1883 : 8d c6 9f STA $9fc6 ; (sprintf@stack + 1)
.s4:
1886 : ad f1 9f LDA $9ff1 ; (sstack + 8)
1889 : 85 53 __ STA T1 + 0 
188b : 8d ea 9f STA $9fea ; (sstack + 1)
188e : a9 00 __ LDA #$00
1890 : 8d f0 9f STA $9ff0 ; (sstack + 7)
1893 : ad f2 9f LDA $9ff2 ; (sstack + 9)
1896 : 85 54 __ STA T1 + 1 
1898 : 8d eb 9f STA $9feb ; (sstack + 2)
189b : ad f3 9f LDA $9ff3 ; (sstack + 10)
189e : 8d ec 9f STA $9fec ; (sstack + 3)
18a1 : ad f4 9f LDA $9ff4 ; (sstack + 11)
18a4 : 8d ed 9f STA $9fed ; (sstack + 4)
18a7 : a9 f5 __ LDA #$f5
18a9 : 8d ee 9f STA $9fee ; (sstack + 5)
18ac : a9 9f __ LDA #$9f
18ae : 8d ef 9f STA $9fef ; (sstack + 6)
18b1 : 20 bf 0b JSR $0bbf ; (sformat.s1 + 0)
18b4 : 38 __ __ SEC
18b5 : a5 1b __ LDA ACCU + 0 
18b7 : e5 53 __ SBC T1 + 0 
18b9 : 85 1b __ STA ACCU + 0 
18bb : a5 1c __ LDA ACCU + 1 
18bd : e5 54 __ SBC T1 + 1 
18bf : 85 1c __ STA ACCU + 1 
.s3:
18c1 : ad c5 9f LDA $9fc5 ; (sprintf@stack + 0)
18c4 : 85 53 __ STA T1 + 0 
18c6 : ad c6 9f LDA $9fc6 ; (sprintf@stack + 1)
18c9 : 85 54 __ STA T1 + 1 
18cb : 60 __ __ RTS
--------------------------------------------------------------------
18cc : __ __ __ BYT 4c 45 56 45 4c 3a 20 25 64 2f 33 20 7c 20 4d 4f : LEVEL: %d/3 | MO
18dc : __ __ __ BYT 56 45 53 3a 20 25 2d 33 64 20 7c 20 54 4f 54 41 : VES: %-3d | TOTA
18ec : __ __ __ BYT 4c 3a 20 25 2d 34 64 00                         : L: %-4d.
--------------------------------------------------------------------
draw_full_board: ; draw_full_board()->void
; 148, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/sokobanoscar64.c"
.s1:
18f4 : a5 53 __ LDA T0 + 0 
18f6 : 8d 8d 9f STA $9f8d ; (draw_full_board@stack + 0)
18f9 : a5 54 __ LDA T1 + 0 
18fb : 8d 8e 9f STA $9f8e ; (draw_full_board@stack + 1)
.s4:
18fe : a9 00 __ LDA #$00
1900 : 85 53 __ STA T0 + 0 
.l5:
1902 : a9 00 __ LDA #$00
1904 : 85 54 __ STA T1 + 0 
.l7:
1906 : 8d f5 9f STA $9ff5 ; (sstack + 12)
1909 : a9 00 __ LDA #$00
190b : 8d f6 9f STA $9ff6 ; (sstack + 13)
190e : 8d f8 9f STA $9ff8 ; (sstack + 15)
1911 : a5 53 __ LDA T0 + 0 
1913 : 8d f7 9f STA $9ff7 ; (sstack + 14)
1916 : 20 34 19 JSR $1934 ; (draw_tile.s1 + 0)
1919 : e6 54 __ INC T1 + 0 
191b : a5 54 __ LDA T1 + 0 
191d : c9 28 __ CMP #$28
191f : 90 e5 __ BCC $1906 ; (draw_full_board.l7 + 0)
.s6:
1921 : e6 53 __ INC T0 + 0 
1923 : a5 53 __ LDA T0 + 0 
1925 : c9 10 __ CMP #$10
1927 : 90 d9 __ BCC $1902 ; (draw_full_board.l5 + 0)
.s3:
1929 : ad 8d 9f LDA $9f8d ; (draw_full_board@stack + 0)
192c : 85 53 __ STA T0 + 0 
192e : ad 8e 9f LDA $9f8e ; (draw_full_board@stack + 1)
1931 : 85 54 __ STA T1 + 0 
1933 : 60 __ __ RTS
--------------------------------------------------------------------
draw_tile: ; draw_tile(i16,i16)->void
; 114, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/sokobanoscar64.c"
.s1:
1934 : a2 03 __ LDX #$03
1936 : b5 53 __ LDA T4 + 0,x 
1938 : 9d 91 9f STA $9f91,x ; (draw_tile@stack + 0)
193b : ca __ __ DEX
193c : 10 f8 __ BPL $1936 ; (draw_tile.s1 + 2)
.s4:
193e : ad f5 9f LDA $9ff5 ; (sstack + 12)
1941 : 85 53 __ STA T4 + 0 
1943 : 85 0d __ STA P0 
1945 : ad f6 9f LDA $9ff6 ; (sstack + 13)
1948 : 85 54 __ STA T4 + 1 
194a : ad f7 9f LDA $9ff7 ; (sstack + 14)
194d : 85 55 __ STA T5 + 0 
194f : 18 __ __ CLC
1950 : 69 03 __ ADC #$03
1952 : 85 0e __ STA P1 
1954 : ad f8 9f LDA $9ff8 ; (sstack + 15)
1957 : 85 56 __ STA T5 + 1 
1959 : 20 8e 0b JSR $0b8e ; (gotoxy.s4 + 0)
195c : a5 54 __ LDA T4 + 1 
195e : cd 6b 2b CMP $2b6b ; (px + 1)
1961 : d0 2d __ BNE $1990 ; (draw_tile.s5 + 0)
.s24:
1963 : a5 53 __ LDA T4 + 0 
1965 : cd 6a 2b CMP $2b6a ; (px + 0)
1968 : d0 26 __ BNE $1990 ; (draw_tile.s5 + 0)
.s21:
196a : a5 56 __ LDA T5 + 1 
196c : cd 6d 2b CMP $2b6d ; (py + 1)
196f : d0 1f __ BNE $1990 ; (draw_tile.s5 + 0)
.s23:
1971 : a5 55 __ LDA T5 + 0 
1973 : cd 6c 2b CMP $2b6c ; (py + 0)
1976 : d0 18 __ BNE $1990 ; (draw_tile.s5 + 0)
.s22:
1978 : a9 f3 __ LDA #$f3
197a : 8d f1 9f STA $9ff1 ; (sstack + 8)
197d : a9 17 __ LDA #$17
.s25:
197f : 8d f2 9f STA $9ff2 ; (sstack + 9)
1982 : 20 97 0b JSR $0b97 ; (printf.s4 + 0)
.s3:
1985 : a2 03 __ LDX #$03
1987 : bd 91 9f LDA $9f91,x ; (draw_tile@stack + 0)
198a : 95 53 __ STA T4 + 0,x 
198c : ca __ __ DEX
198d : 10 f8 __ BPL $1987 ; (draw_tile.s3 + 2)
198f : 60 __ __ RTS
.s5:
1990 : ad b6 23 LDA $23b6 ; (num_boxes + 0)
1993 : 85 43 __ STA T0 + 0 
1995 : ad b7 23 LDA $23b7 ; (num_boxes + 1)
1998 : 30 30 __ BMI $19ca ; (draw_tile.s6 + 0)
.s20:
199a : 85 44 __ STA T0 + 1 
199c : 05 43 __ ORA T0 + 0 
199e : f0 2a __ BEQ $19ca ; (draw_tile.s6 + 0)
.s9:
19a0 : a0 00 __ LDY #$00
.l10:
19a2 : 98 __ __ TYA
19a3 : 0a __ __ ASL
19a4 : aa __ __ TAX
19a5 : a5 54 __ LDA T4 + 1 
19a7 : dd 8d 35 CMP $358d,x ; (box_x[0] + 1)
19aa : d0 15 __ BNE $19c1 ; (draw_tile.s11 + 0)
.s19:
19ac : a5 53 __ LDA T4 + 0 
19ae : dd 8c 35 CMP $358c,x ; (box_x[0] + 0)
19b1 : d0 0e __ BNE $19c1 ; (draw_tile.s11 + 0)
.s13:
19b3 : a5 56 __ LDA T5 + 1 
19b5 : dd 01 36 CMP $3601,x ; (box_y[0] + 1)
19b8 : d0 07 __ BNE $19c1 ; (draw_tile.s11 + 0)
.s18:
19ba : a5 55 __ LDA T5 + 0 
19bc : dd 00 36 CMP $3600,x ; (box_y[0] + 0)
19bf : f0 50 __ BEQ $1a11 ; (draw_tile.s14 + 0)
.s11:
19c1 : c8 __ __ INY
19c2 : a5 44 __ LDA T0 + 1 
19c4 : d0 dc __ BNE $19a2 ; (draw_tile.l10 + 0)
.s12:
19c6 : c4 43 __ CPY T0 + 0 
19c8 : 90 d8 __ BCC $19a2 ; (draw_tile.l10 + 0)
.s6:
19ca : a5 53 __ LDA T4 + 0 
19cc : 0a __ __ ASL
19cd : a8 __ __ TAY
19ce : a9 8c __ LDA #$8c
19d0 : a6 55 __ LDX T5 + 0 
19d2 : 18 __ __ CLC
19d3 : 7d 96 23 ADC $2396,x ; (__multab80L + 0)
19d6 : 85 47 __ STA T2 + 0 
19d8 : a9 2b __ LDA #$2b
19da : 7d a6 23 ADC $23a6,x ; (__multab80H + 0)
19dd : 85 48 __ STA T2 + 1 
19df : b1 47 __ LDA (T2 + 0),y 
19e1 : c8 __ __ INY
19e2 : 11 47 __ ORA (T2 + 0),y 
19e4 : f0 0a __ BEQ $19f0 ; (draw_tile.s7 + 0)
.s8:
19e6 : a9 3d __ LDA #$3d
19e8 : 8d f1 9f STA $9ff1 ; (sstack + 8)
19eb : a9 1a __ LDA #$1a
19ed : 4c 7f 19 JMP $197f ; (draw_tile.s25 + 0)
.s7:
19f0 : 18 __ __ CLC
19f1 : a9 8c __ LDA #$8c
19f3 : 7d 96 23 ADC $2396,x ; (__multab80L + 0)
19f6 : 85 45 __ STA T1 + 0 
19f8 : a9 30 __ LDA #$30
19fa : 7d a6 23 ADC $23a6,x ; (__multab80H + 0)
19fd : 85 46 __ STA T1 + 1 
19ff : 88 __ __ DEY
1a00 : b1 45 __ LDA (T1 + 0),y 
1a02 : c8 __ __ INY
1a03 : 11 45 __ ORA (T1 + 0),y 
1a05 : f0 02 __ BEQ $1a09 ; (draw_tile.s26 + 0)
.s27:
1a07 : a9 0e __ LDA #$0e
.s26:
1a09 : 49 20 __ EOR #$20
1a0b : 20 f1 09 JSR $09f1 ; (putpch.s4 + 0)
1a0e : 4c 85 19 JMP $1985 ; (draw_tile.s3 + 0)
.s14:
1a11 : aa __ __ TAX
1a12 : a5 53 __ LDA T4 + 0 
1a14 : 0a __ __ ASL
1a15 : a8 __ __ TAY
1a16 : 18 __ __ CLC
1a17 : a9 8c __ LDA #$8c
1a19 : 7d 96 23 ADC $2396,x ; (__multab80L + 0)
1a1c : 85 45 __ STA T1 + 0 
1a1e : a9 30 __ LDA #$30
1a20 : 7d a6 23 ADC $23a6,x ; (__multab80H + 0)
1a23 : 85 46 __ STA T1 + 1 
1a25 : b1 45 __ LDA (T1 + 0),y 
1a27 : c8 __ __ INY
1a28 : 11 45 __ ORA (T1 + 0),y 
1a2a : d0 07 __ BNE $1a33 ; (draw_tile.s17 + 0)
.s15:
1a2c : a9 17 __ LDA #$17
1a2e : a2 fb __ LDX #$fb
1a30 : 4c 37 1a JMP $1a37 ; (draw_tile.s16 + 0)
.s17:
1a33 : a9 17 __ LDA #$17
1a35 : a2 f7 __ LDX #$f7
.s16:
1a37 : 8e f1 9f STX $9ff1 ; (sstack + 8)
1a3a : 4c 7f 19 JMP $197f ; (draw_tile.s25 + 0)
--------------------------------------------------------------------
1a3d : __ __ __ BYT 12 20 92 00                                     : . ..
--------------------------------------------------------------------
1a41 : __ __ __ BYT 4d 4f 56 45 3a 20 57 41 53 44 20 4f 52 20 4a 4f : MOVE: WASD OR JO
1a51 : __ __ __ BYT 59 20 32 2e 20 51 20 54 4f 20 51 55 49 54 2e 00 : Y 2. Q TO QUIT..
--------------------------------------------------------------------
check_win: ; check_win()->i16
; 247, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/sokobanoscar64.c"
.s4:
1a61 : ad b6 23 LDA $23b6 ; (num_boxes + 0)
1a64 : 85 43 __ STA T0 + 0 
1a66 : ad b7 23 LDA $23b7 ; (num_boxes + 1)
1a69 : 30 64 __ BMI $1acf ; (check_win.s5 + 0)
.s11:
1a6b : 85 44 __ STA T0 + 1 
1a6d : 05 43 __ ORA T0 + 0 
1a6f : f0 5e __ BEQ $1acf ; (check_win.s5 + 0)
.s6:
1a71 : a9 00 __ LDA #$00
1a73 : 85 1d __ STA ACCU + 2 
.l7:
1a75 : a5 1d __ LDA ACCU + 2 
1a77 : 0a __ __ ASL
1a78 : aa __ __ TAX
1a79 : bd 8c 35 LDA $358c,x ; (box_x[0] + 0)
1a7c : 0a __ __ ASL
1a7d : a8 __ __ TAY
1a7e : bd 8d 35 LDA $358d,x ; (box_x[0] + 1)
1a81 : 2a __ __ ROL
1a82 : 85 46 __ STA T3 + 1 
1a84 : bd 00 36 LDA $3600,x ; (box_y[0] + 0)
1a87 : 0a __ __ ASL
1a88 : 85 1b __ STA ACCU + 0 
1a8a : bd 01 36 LDA $3601,x ; (box_y[0] + 1)
1a8d : 2a __ __ ROL
1a8e : 06 1b __ ASL ACCU + 0 
1a90 : 2a __ __ ROL
1a91 : 85 1c __ STA ACCU + 1 
1a93 : 18 __ __ CLC
1a94 : a5 1b __ LDA ACCU + 0 
1a96 : 7d 00 36 ADC $3600,x ; (box_y[0] + 0)
1a99 : 85 1b __ STA ACCU + 0 
1a9b : a5 1c __ LDA ACCU + 1 
1a9d : 7d 01 36 ADC $3601,x ; (box_y[0] + 1)
1aa0 : 06 1b __ ASL ACCU + 0 
1aa2 : 2a __ __ ROL
1aa3 : 06 1b __ ASL ACCU + 0 
1aa5 : 2a __ __ ROL
1aa6 : 06 1b __ ASL ACCU + 0 
1aa8 : 2a __ __ ROL
1aa9 : 06 1b __ ASL ACCU + 0 
1aab : 2a __ __ ROL
1aac : aa __ __ TAX
1aad : 18 __ __ CLC
1aae : a9 8c __ LDA #$8c
1ab0 : 65 1b __ ADC ACCU + 0 
1ab2 : 85 1b __ STA ACCU + 0 
1ab4 : 8a __ __ TXA
1ab5 : 69 30 __ ADC #$30
1ab7 : 18 __ __ CLC
1ab8 : 65 46 __ ADC T3 + 1 
1aba : 85 1c __ STA ACCU + 1 
1abc : b1 1b __ LDA (ACCU + 0),y 
1abe : c8 __ __ INY
1abf : 11 1b __ ORA (ACCU + 0),y 
1ac1 : f0 15 __ BEQ $1ad8 ; (check_win.s8 + 0)
.s9:
1ac3 : e6 1d __ INC ACCU + 2 
1ac5 : a5 44 __ LDA T0 + 1 
1ac7 : d0 ac __ BNE $1a75 ; (check_win.l7 + 0)
.s10:
1ac9 : a5 1d __ LDA ACCU + 2 
1acb : c5 43 __ CMP T0 + 0 
1acd : 90 a6 __ BCC $1a75 ; (check_win.l7 + 0)
.s5:
1acf : a9 01 __ LDA #$01
1ad1 : 85 1b __ STA ACCU + 0 
1ad3 : a9 00 __ LDA #$00
.s3:
1ad5 : 85 1c __ STA ACCU + 1 
1ad7 : 60 __ __ RTS
.s8:
1ad8 : 85 1b __ STA ACCU + 0 
1ada : 4c d5 1a JMP $1ad5 ; (check_win.s3 + 0)
--------------------------------------------------------------------
kbhit: ; kbhit()->u8
;  79, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.s4:
1add : a5 c6 __ LDA $c6 
1adf : 85 1b __ STA ACCU + 0 
.s3:
1ae1 : a5 1b __ LDA ACCU + 0 
1ae3 : 60 __ __ RTS
--------------------------------------------------------------------
getch: ; getch()->u8
;  83, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.l4:
1ae4 : 20 e4 ff JSR $ffe4 
1ae7 : 85 1b __ STA ACCU + 0 
1ae9 : a5 1b __ LDA ACCU + 0 
1aeb : f0 f7 __ BEQ $1ae4 ; (getch.l4 + 0)
.s5:
1aed : 4c 71 1b JMP $1b71 ; (convch.s4 + 0)
--------------------------------------------------------------------
negaccu: ; negaccu
1af0 : 38 __ __ SEC
1af1 : a9 00 __ LDA #$00
1af3 : e5 1b __ SBC ACCU + 0 
1af5 : 85 1b __ STA ACCU + 0 
1af7 : a9 00 __ LDA #$00
1af9 : e5 1c __ SBC ACCU + 1 
1afb : 85 1c __ STA ACCU + 1 
1afd : 60 __ __ RTS
--------------------------------------------------------------------
giocharmap:
1afe : __ __ __ BYT 01                                              : .
--------------------------------------------------------------------
1b00 : __ __ __ BYT 21 21 21 20 4c 45 56 45 4c 20 43 4f 4d 50 4c 45 : !!! LEVEL COMPLE
1b10 : __ __ __ BYT 54 45 20 21 21 21 20 50 52 45 53 53 20 41 4e 59 : TE !!! PRESS ANY
1b20 : __ __ __ BYT 20 4b 45 59 20 20 20 20 00                      :  KEY    .
--------------------------------------------------------------------
get_input: ; get_input()->u8
; 164, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/sokobanoscar64.c"
.l4:
1b29 : 20 dd 1a JSR $1add ; (kbhit.s4 + 0)
1b2c : aa __ __ TAX
1b2d : d0 3c __ BNE $1b6b ; (get_input.s15 + 0)
.s5:
1b2f : ad 00 dc LDA $dc00 
1b32 : a8 __ __ TAY
1b33 : 29 0f __ AND #$0f
1b35 : c9 0f __ CMP #$0f
1b37 : f0 f0 __ BEQ $1b29 ; (get_input.l4 + 0)
.s6:
1b39 : 98 __ __ TYA
1b3a : 4a __ __ LSR
1b3b : b0 04 __ BCS $1b41 ; (get_input.s7 + 0)
.s14:
1b3d : a0 57 __ LDY #$57
1b3f : 90 1d __ BCC $1b5e ; (get_input.l10 + 0)
.s7:
1b41 : 98 __ __ TYA
1b42 : 29 02 __ AND #$02
1b44 : d0 04 __ BNE $1b4a ; (get_input.s8 + 0)
.s13:
1b46 : a0 53 __ LDY #$53
1b48 : b0 14 __ BCS $1b5e ; (get_input.l10 + 0)
.s8:
1b4a : 98 __ __ TYA
1b4b : 29 04 __ AND #$04
1b4d : d0 04 __ BNE $1b53 ; (get_input.s9 + 0)
.s12:
1b4f : a0 41 __ LDY #$41
1b51 : b0 0b __ BCS $1b5e ; (get_input.l10 + 0)
.s9:
1b53 : 98 __ __ TYA
1b54 : 29 08 __ AND #$08
1b56 : f0 04 __ BEQ $1b5c ; (get_input.s16 + 0)
.s17:
1b58 : a0 00 __ LDY #$00
1b5a : b0 02 __ BCS $1b5e ; (get_input.l10 + 0)
.s16:
1b5c : a0 44 __ LDY #$44
.l10:
1b5e : ad 00 dc LDA $dc00 
1b61 : 29 0f __ AND #$0f
1b63 : c9 0f __ CMP #$0f
1b65 : d0 f7 __ BNE $1b5e ; (get_input.l10 + 0)
.s11:
1b67 : 98 __ __ TYA
.s3:
1b68 : 85 1b __ STA ACCU + 0 
1b6a : 60 __ __ RTS
.s15:
1b6b : 20 e4 1a JSR $1ae4 ; (getch.l4 + 0)
1b6e : 4c 68 1b JMP $1b68 ; (get_input.s3 + 0)
--------------------------------------------------------------------
convch: ; convch(u8)->u8
; 242, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.c"
.s4:
1b71 : a8 __ __ TAY
1b72 : ad fe 1a LDA $1afe ; (giocharmap + 0)
1b75 : f0 27 __ BEQ $1b9e ; (convch.s5 + 0)
.s6:
1b77 : c0 0d __ CPY #$0d
1b79 : d0 03 __ BNE $1b7e ; (convch.s7 + 0)
.s16:
1b7b : a9 0a __ LDA #$0a
.s3:
1b7d : 60 __ __ RTS
.s7:
1b7e : c9 02 __ CMP #$02
1b80 : 90 1c __ BCC $1b9e ; (convch.s5 + 0)
.s8:
1b82 : 98 __ __ TYA
1b83 : c0 41 __ CPY #$41
1b85 : 90 17 __ BCC $1b9e ; (convch.s5 + 0)
.s9:
1b87 : c9 db __ CMP #$db
1b89 : b0 13 __ BCS $1b9e ; (convch.s5 + 0)
.s10:
1b8b : c9 c1 __ CMP #$c1
1b8d : 90 03 __ BCC $1b92 ; (convch.s11 + 0)
.s15:
1b8f : 49 a0 __ EOR #$a0
1b91 : a8 __ __ TAY
.s11:
1b92 : c9 7b __ CMP #$7b
1b94 : b0 08 __ BCS $1b9e ; (convch.s5 + 0)
.s12:
1b96 : c9 61 __ CMP #$61
1b98 : b0 06 __ BCS $1ba0 ; (convch.s14 + 0)
.s13:
1b9a : c9 5b __ CMP #$5b
1b9c : 90 02 __ BCC $1ba0 ; (convch.s14 + 0)
.s5:
1b9e : 98 __ __ TYA
1b9f : 60 __ __ RTS
.s14:
1ba0 : 49 20 __ EOR #$20
1ba2 : 60 __ __ RTS
--------------------------------------------------------------------
execute_input: ; execute_input(u8,i16)->void
; 189, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/sokobanoscar64.c"
.s1:
1ba3 : a2 09 __ LDX #$09
1ba5 : b5 53 __ LDA T1 + 0,x 
1ba7 : 9d 62 9f STA $9f62,x ; (execute_input@stack + 0)
1baa : ca __ __ DEX
1bab : 10 f8 __ BPL $1ba5 ; (execute_input.s1 + 2)
.s4:
1bad : a9 00 __ LDA #$00
1baf : 85 43 __ STA T0 + 0 
1bb1 : 85 44 __ STA T0 + 1 
1bb3 : ad fd 9f LDA $9ffd ; (sstack + 20)
1bb6 : c9 57 __ CMP #$57
1bb8 : f0 04 __ BEQ $1bbe ; (execute_input.s51 + 0)
.s5:
1bba : c9 77 __ CMP #$77
1bbc : d0 09 __ BNE $1bc7 ; (execute_input.s6 + 0)
.s51:
1bbe : a9 ff __ LDA #$ff
1bc0 : 85 53 __ STA T1 + 0 
.s52:
1bc2 : 85 54 __ STA T1 + 1 
1bc4 : 4c fb 1b JMP $1bfb ; (execute_input.s13 + 0)
.s6:
1bc7 : c9 53 __ CMP #$53
1bc9 : f0 04 __ BEQ $1bcf ; (execute_input.s50 + 0)
.s7:
1bcb : c9 73 __ CMP #$73
1bcd : d0 08 __ BNE $1bd7 ; (execute_input.s8 + 0)
.s50:
1bcf : a9 01 __ LDA #$01
1bd1 : 85 53 __ STA T1 + 0 
1bd3 : a9 00 __ LDA #$00
1bd5 : f0 eb __ BEQ $1bc2 ; (execute_input.s52 + 0)
.s8:
1bd7 : a9 00 __ LDA #$00
1bd9 : 85 53 __ STA T1 + 0 
1bdb : 85 54 __ STA T1 + 1 
1bdd : ad fd 9f LDA $9ffd ; (sstack + 20)
1be0 : c9 41 __ CMP #$41
1be2 : f0 04 __ BEQ $1be8 ; (execute_input.s49 + 0)
.s9:
1be4 : c9 61 __ CMP #$61
1be6 : d0 06 __ BNE $1bee ; (execute_input.s10 + 0)
.s49:
1be8 : c6 43 __ DEC T0 + 0 
1bea : c6 44 __ DEC T0 + 1 
1bec : d0 0d __ BNE $1bfb ; (execute_input.s13 + 0)
.s10:
1bee : c9 44 __ CMP #$44
1bf0 : f0 07 __ BEQ $1bf9 ; (execute_input.s12 + 0)
.s11:
1bf2 : c9 64 __ CMP #$64
1bf4 : f0 03 __ BEQ $1bf9 ; (execute_input.s12 + 0)
1bf6 : 4c ba 1d JMP $1dba ; (execute_input.s3 + 0)
.s12:
1bf9 : e6 43 __ INC T0 + 0 
.s13:
1bfb : ad 6a 2b LDA $2b6a ; (px + 0)
1bfe : 85 45 __ STA T2 + 0 
1c00 : 18 __ __ CLC
1c01 : 65 43 __ ADC T0 + 0 
1c03 : 85 59 __ STA T9 + 0 
1c05 : ad 6b 2b LDA $2b6b ; (px + 1)
1c08 : 85 46 __ STA T2 + 1 
1c0a : 65 44 __ ADC T0 + 1 
1c0c : 30 e8 __ BMI $1bf6 ; (execute_input.s11 + 4)
.s14:
1c0e : 85 5a __ STA T9 + 1 
1c10 : d0 e4 __ BNE $1bf6 ; (execute_input.s11 + 4)
.s48:
1c12 : a5 59 __ LDA T9 + 0 
1c14 : c9 28 __ CMP #$28
1c16 : b0 de __ BCS $1bf6 ; (execute_input.s11 + 4)
.s15:
1c18 : ad 6c 2b LDA $2b6c ; (py + 0)
1c1b : 85 47 __ STA T3 + 0 
1c1d : 65 53 __ ADC T1 + 0 
1c1f : 85 5b __ STA T10 + 0 
1c21 : ad 6d 2b LDA $2b6d ; (py + 1)
1c24 : 85 48 __ STA T3 + 1 
1c26 : 65 54 __ ADC T1 + 1 
1c28 : 30 cc __ BMI $1bf6 ; (execute_input.s11 + 4)
.s16:
1c2a : 85 5c __ STA T10 + 1 
1c2c : d0 c8 __ BNE $1bf6 ; (execute_input.s11 + 4)
.s47:
1c2e : a6 5b __ LDX T10 + 0 
1c30 : e0 10 __ CPX #$10
1c32 : b0 c2 __ BCS $1bf6 ; (execute_input.s11 + 4)
.s17:
1c34 : a5 59 __ LDA T9 + 0 
1c36 : 0a __ __ ASL
1c37 : a8 __ __ TAY
1c38 : 18 __ __ CLC
1c39 : a9 8c __ LDA #$8c
1c3b : 7d 96 23 ADC $2396,x ; (__multab80L + 0)
1c3e : 85 4b __ STA T5 + 0 
1c40 : a9 2b __ LDA #$2b
1c42 : 7d a6 23 ADC $23a6,x ; (__multab80H + 0)
1c45 : 85 4c __ STA T5 + 1 
1c47 : b1 4b __ LDA (T5 + 0),y 
1c49 : c8 __ __ INY
1c4a : 11 4b __ ORA (T5 + 0),y 
1c4c : d0 a8 __ BNE $1bf6 ; (execute_input.s11 + 4)
.s18:
1c4e : ad b6 23 LDA $23b6 ; (num_boxes + 0)
1c51 : 85 4b __ STA T5 + 0 
1c53 : a9 ff __ LDA #$ff
1c55 : 85 49 __ STA T4 + 0 
1c57 : ad b7 23 LDA $23b7 ; (num_boxes + 1)
1c5a : 85 4c __ STA T5 + 1 
1c5c : 10 0a __ BPL $1c68 ; (execute_input.s20 + 0)
.s19:
1c5e : a9 00 __ LDA #$00
.s59:
1c60 : 85 4f __ STA T11 + 0 
.s60:
1c62 : a5 5b __ LDA T10 + 0 
1c64 : a0 ff __ LDY #$ff
1c66 : d0 36 __ BNE $1c9e ; (execute_input.s21 + 0)
.s20:
1c68 : 05 4b __ ORA T5 + 0 
1c6a : f0 f4 __ BEQ $1c60 ; (execute_input.s59 + 0)
.s54:
1c6c : a9 01 __ LDA #$01
1c6e : 85 4f __ STA T11 + 0 
1c70 : a0 00 __ LDY #$00
.l40:
1c72 : 98 __ __ TYA
1c73 : 0a __ __ ASL
1c74 : aa __ __ TAX
1c75 : a5 5a __ LDA T9 + 1 
1c77 : dd 8d 35 CMP $358d,x ; (box_x[0] + 1)
1c7a : d0 15 __ BNE $1c91 ; (execute_input.s41 + 0)
.s46:
1c7c : a5 59 __ LDA T9 + 0 
1c7e : dd 8c 35 CMP $358c,x ; (box_x[0] + 0)
1c81 : d0 0e __ BNE $1c91 ; (execute_input.s41 + 0)
.s43:
1c83 : a5 5c __ LDA T10 + 1 
1c85 : dd 01 36 CMP $3601,x ; (box_y[0] + 1)
1c88 : d0 07 __ BNE $1c91 ; (execute_input.s41 + 0)
.s45:
1c8a : a5 5b __ LDA T10 + 0 
1c8c : dd 00 36 CMP $3600,x ; (box_y[0] + 0)
1c8f : f0 0b __ BEQ $1c9c ; (execute_input.s44 + 0)
.s41:
1c91 : c8 __ __ INY
1c92 : a5 4c __ LDA T5 + 1 
1c94 : d0 dc __ BNE $1c72 ; (execute_input.l40 + 0)
.s42:
1c96 : c4 4b __ CPY T5 + 0 
1c98 : 90 d8 __ BCC $1c72 ; (execute_input.l40 + 0)
1c9a : b0 c6 __ BCS $1c62 ; (execute_input.s60 + 0)
.s44:
1c9c : 84 49 __ STY T4 + 0 
.s21:
1c9e : 18 __ __ CLC
1c9f : 65 53 __ ADC T1 + 0 
1ca1 : 85 55 __ STA T7 + 0 
1ca3 : a5 53 __ LDA T1 + 0 
1ca5 : 49 80 __ EOR #$80
1ca7 : 2a __ __ ROL
1ca8 : 29 01 __ AND #$01
1caa : e9 00 __ SBC #$00
1cac : 85 56 __ STA T7 + 1 
1cae : 18 __ __ CLC
1caf : a5 59 __ LDA T9 + 0 
1cb1 : 65 43 __ ADC T0 + 0 
1cb3 : 85 57 __ STA T8 + 0 
1cb5 : a5 43 __ LDA T0 + 0 
1cb7 : 49 80 __ EOR #$80
1cb9 : 2a __ __ ROL
1cba : 29 01 __ AND #$01
1cbc : e9 00 __ SBC #$00
1cbe : 85 58 __ STA T8 + 1 
1cc0 : c8 __ __ INY
1cc1 : d0 04 __ BNE $1cc7 ; (execute_input.s25 + 0)
.s22:
1cc3 : 98 __ __ TYA
1cc4 : 4c 40 1d JMP $1d40 ; (execute_input.s23 + 0)
.s25:
1cc7 : a5 57 __ LDA T8 + 0 
1cc9 : 10 03 __ BPL $1cce ; (execute_input.s26 + 0)
1ccb : 4c ba 1d JMP $1dba ; (execute_input.s3 + 0)
.s26:
1cce : c9 28 __ CMP #$28
1cd0 : b0 f9 __ BCS $1ccb ; (execute_input.s25 + 4)
.s27:
1cd2 : a5 55 __ LDA T7 + 0 
1cd4 : 30 f5 __ BMI $1ccb ; (execute_input.s25 + 4)
.s28:
1cd6 : c9 10 __ CMP #$10
1cd8 : b0 f1 __ BCS $1ccb ; (execute_input.s25 + 4)
.s29:
1cda : a5 57 __ LDA T8 + 0 
1cdc : 0a __ __ ASL
1cdd : a8 __ __ TAY
1cde : a9 8c __ LDA #$8c
1ce0 : a6 55 __ LDX T7 + 0 
1ce2 : 18 __ __ CLC
1ce3 : 7d 96 23 ADC $2396,x ; (__multab80L + 0)
1ce6 : 85 53 __ STA T1 + 0 
1ce8 : a9 2b __ LDA #$2b
1cea : 7d a6 23 ADC $23a6,x ; (__multab80H + 0)
1ced : 85 54 __ STA T1 + 1 
1cef : b1 53 __ LDA (T1 + 0),y 
1cf1 : c8 __ __ INY
1cf2 : 11 53 __ ORA (T1 + 0),y 
1cf4 : d0 d5 __ BNE $1ccb ; (execute_input.s25 + 4)
.s30:
1cf6 : a5 4f __ LDA T11 + 0 
1cf8 : f0 2c __ BEQ $1d26 ; (execute_input.s31 + 0)
.s32:
1cfa : a0 00 __ LDY #$00
.l33:
1cfc : 98 __ __ TYA
1cfd : 0a __ __ ASL
1cfe : aa __ __ TAX
1cff : a5 58 __ LDA T8 + 1 
1d01 : dd 8d 35 CMP $358d,x ; (box_x[0] + 1)
1d04 : d0 15 __ BNE $1d1b ; (execute_input.s34 + 0)
.s39:
1d06 : a5 57 __ LDA T8 + 0 
1d08 : dd 8c 35 CMP $358c,x ; (box_x[0] + 0)
1d0b : d0 0e __ BNE $1d1b ; (execute_input.s34 + 0)
.s37:
1d0d : a5 56 __ LDA T7 + 1 
1d0f : dd 01 36 CMP $3601,x ; (box_y[0] + 1)
1d12 : d0 07 __ BNE $1d1b ; (execute_input.s34 + 0)
.s38:
1d14 : a5 55 __ LDA T7 + 0 
1d16 : dd 00 36 CMP $3600,x ; (box_y[0] + 0)
1d19 : f0 b0 __ BEQ $1ccb ; (execute_input.s25 + 4)
.s34:
1d1b : c8 __ __ INY
1d1c : a5 4c __ LDA T5 + 1 
1d1e : 30 06 __ BMI $1d26 ; (execute_input.s31 + 0)
.s36:
1d20 : d0 da __ BNE $1cfc ; (execute_input.l33 + 0)
.s35:
1d22 : c4 4b __ CPY T5 + 0 
1d24 : 90 d6 __ BCC $1cfc ; (execute_input.l33 + 0)
.s31:
1d26 : a5 49 __ LDA T4 + 0 
1d28 : 0a __ __ ASL
1d29 : aa __ __ TAX
1d2a : a5 57 __ LDA T8 + 0 
1d2c : 9d 8c 35 STA $358c,x ; (box_x[0] + 0)
1d2f : a5 58 __ LDA T8 + 1 
1d31 : 9d 8d 35 STA $358d,x ; (box_x[0] + 1)
1d34 : a5 55 __ LDA T7 + 0 
1d36 : 9d 00 36 STA $3600,x ; (box_y[0] + 0)
1d39 : a5 56 __ LDA T7 + 1 
1d3b : 9d 01 36 STA $3601,x ; (box_y[0] + 1)
1d3e : a9 ff __ LDA #$ff
.s23:
1d40 : 85 53 __ STA T1 + 0 
1d42 : a5 45 __ LDA T2 + 0 
1d44 : 8d f5 9f STA $9ff5 ; (sstack + 12)
1d47 : a5 46 __ LDA T2 + 1 
1d49 : 8d f6 9f STA $9ff6 ; (sstack + 13)
1d4c : a5 47 __ LDA T3 + 0 
1d4e : 8d f7 9f STA $9ff7 ; (sstack + 14)
1d51 : a5 48 __ LDA T3 + 1 
1d53 : 8d f8 9f STA $9ff8 ; (sstack + 15)
1d56 : a5 5b __ LDA T10 + 0 
1d58 : 8d 6c 2b STA $2b6c ; (py + 0)
1d5b : a9 00 __ LDA #$00
1d5d : 8d 6d 2b STA $2b6d ; (py + 1)
1d60 : 8d 6b 2b STA $2b6b ; (px + 1)
1d63 : a5 59 __ LDA T9 + 0 
1d65 : 8d 6a 2b STA $2b6a ; (px + 0)
1d68 : ee b8 23 INC $23b8 ; (level_moves + 0)
1d6b : d0 03 __ BNE $1d70 ; (execute_input.s56 + 0)
.s55:
1d6d : ee b9 23 INC $23b9 ; (level_moves + 1)
.s56:
1d70 : ee 8a 2b INC $2b8a ; (total_moves + 0)
1d73 : d0 03 __ BNE $1d78 ; (execute_input.s58 + 0)
.s57:
1d75 : ee 8b 2b INC $2b8b ; (total_moves + 1)
.s58:
1d78 : 20 34 19 JSR $1934 ; (draw_tile.s1 + 0)
1d7b : a5 59 __ LDA T9 + 0 
1d7d : 8d f5 9f STA $9ff5 ; (sstack + 12)
1d80 : a9 00 __ LDA #$00
1d82 : 8d f6 9f STA $9ff6 ; (sstack + 13)
1d85 : 8d f8 9f STA $9ff8 ; (sstack + 15)
1d88 : a5 5b __ LDA T10 + 0 
1d8a : 8d f7 9f STA $9ff7 ; (sstack + 14)
1d8d : 20 34 19 JSR $1934 ; (draw_tile.s1 + 0)
1d90 : 24 53 __ BIT T1 + 0 
1d92 : 10 17 __ BPL $1dab ; (execute_input.s53 + 0)
.s24:
1d94 : a5 57 __ LDA T8 + 0 
1d96 : 8d f5 9f STA $9ff5 ; (sstack + 12)
1d99 : a5 58 __ LDA T8 + 1 
1d9b : 8d f6 9f STA $9ff6 ; (sstack + 13)
1d9e : a5 55 __ LDA T7 + 0 
1da0 : 8d f7 9f STA $9ff7 ; (sstack + 14)
1da3 : a5 56 __ LDA T7 + 1 
1da5 : 8d f8 9f STA $9ff8 ; (sstack + 15)
1da8 : 20 34 19 JSR $1934 ; (draw_tile.s1 + 0)
.s53:
1dab : ad fe 9f LDA $9ffe ; (sstack + 21)
1dae : 8d fb 9f STA $9ffb ; (sstack + 18)
1db1 : ad ff 9f LDA $9fff ; (sstack + 22)
1db4 : 8d fc 9f STA $9ffc ; (sstack + 19)
1db7 : 20 1a 18 JSR $181a ; (update_ui.s4 + 0)
.s3:
1dba : a2 09 __ LDX #$09
1dbc : bd 62 9f LDA $9f62,x ; (execute_input@stack + 0)
1dbf : 95 53 __ STA T1 + 0,x 
1dc1 : ca __ __ DEX
1dc2 : 10 f8 __ BPL $1dbc ; (execute_input.s3 + 2)
1dc4 : 60 __ __ RTS
--------------------------------------------------------------------
1dc5 : __ __ __ BYT 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d : ================
1dd5 : __ __ __ BYT 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d 3d : ================
1de5 : __ __ __ BYT 3d 3d 3d 3d 3d 3d 3d 3d 00                      : ========.
--------------------------------------------------------------------
negtmp: ; negtmp
1dee : 38 __ __ SEC
1def : a9 00 __ LDA #$00
1df1 : e5 03 __ SBC WORK + 0 
1df3 : 85 03 __ STA WORK + 0 
1df5 : a9 00 __ LDA #$00
1df7 : e5 04 __ SBC WORK + 1 
1df9 : 85 04 __ STA WORK + 1 
1dfb : 60 __ __ RTS
--------------------------------------------------------------------
__multab656L:
1dfc : __ __ __ BYT 00 90 20 b0                                     : .. .
--------------------------------------------------------------------
1e00 : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 47 :                G
1e10 : __ __ __ BYT 41 4d 45 20 4f 56 45 52 20 20 20 20 20 20 20 20 : AME OVER        
1e20 : __ __ __ BYT 20 20 20 20 20 20 20 20 00                      :         .
--------------------------------------------------------------------
1e29 : __ __ __ BYT 20 20 20 20 20 20 20 20 20 59 4f 55 20 42 45 41 :          YOU BEA
1e39 : __ __ __ BYT 54 20 41 4c 4c 20 33 20 4c 45 56 45 4c 53 21 20 : T ALL 3 LEVELS! 
1e49 : __ __ __ BYT 20 20 20 20 20 20 20 20 00                      :         .
--------------------------------------------------------------------
1e52 : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 50 4c :               PL
1e62 : __ __ __ BYT 41 59 45 52 20 51 55 49 54 20 20 20 20 20 20 20 : AYER QUIT       
1e72 : __ __ __ BYT 20 20 20 20 20 20 20 20 00                      :         .
--------------------------------------------------------------------
1e7b : __ __ __ BYT 20 20 20 20 20 20 20 20 20 47 52 41 4e 44 20 54 :          GRAND T
1e8b : __ __ __ BYT 4f 54 41 4c 20 4d 4f 56 45 53 3a 20 25 2d 34 64 : OTAL MOVES: %-4d
1e9b : __ __ __ BYT 20 20 20 20 20 20 20 20 00                      :         .
--------------------------------------------------------------------
freg: ; freg
1ea4 : b1 19 __ LDA (IP + 0),y 
1ea6 : c8 __ __ INY
1ea7 : aa __ __ TAX
1ea8 : b5 00 __ LDA $00,x 
1eaa : 85 03 __ STA WORK + 0 
1eac : b5 01 __ LDA $01,x 
1eae : 85 04 __ STA WORK + 1 
1eb0 : b5 02 __ LDA $02,x 
1eb2 : 85 05 __ STA WORK + 2 
1eb4 : b5 03 __ LDA WORK + 0,x 
1eb6 : 85 06 __ STA WORK + 3 
1eb8 : a5 05 __ LDA WORK + 2 
1eba : 0a __ __ ASL
1ebb : a5 06 __ LDA WORK + 3 
1ebd : 2a __ __ ROL
1ebe : 85 08 __ STA WORK + 5 
1ec0 : f0 06 __ BEQ $1ec8 ; (freg + 36)
1ec2 : a5 05 __ LDA WORK + 2 
1ec4 : 09 80 __ ORA #$80
1ec6 : 85 05 __ STA WORK + 2 
1ec8 : a5 1d __ LDA ACCU + 2 
1eca : 0a __ __ ASL
1ecb : a5 1e __ LDA ACCU + 3 
1ecd : 2a __ __ ROL
1ece : 85 07 __ STA WORK + 4 
1ed0 : f0 06 __ BEQ $1ed8 ; (freg + 52)
1ed2 : a5 1d __ LDA ACCU + 2 
1ed4 : 09 80 __ ORA #$80
1ed6 : 85 1d __ STA ACCU + 2 
1ed8 : 60 __ __ RTS
1ed9 : 06 1e __ ASL ACCU + 3 
1edb : a5 07 __ LDA WORK + 4 
1edd : 6a __ __ ROR
1ede : 85 1e __ STA ACCU + 3 
1ee0 : b0 06 __ BCS $1ee8 ; (freg + 68)
1ee2 : a5 1d __ LDA ACCU + 2 
1ee4 : 29 7f __ AND #$7f
1ee6 : 85 1d __ STA ACCU + 2 
1ee8 : 60 __ __ RTS
--------------------------------------------------------------------
faddsub: ; faddsub
1ee9 : a5 06 __ LDA WORK + 3 
1eeb : 49 80 __ EOR #$80
1eed : 85 06 __ STA WORK + 3 
1eef : a9 ff __ LDA #$ff
1ef1 : c5 07 __ CMP WORK + 4 
1ef3 : f0 04 __ BEQ $1ef9 ; (faddsub + 16)
1ef5 : c5 08 __ CMP WORK + 5 
1ef7 : d0 11 __ BNE $1f0a ; (faddsub + 33)
1ef9 : a5 1e __ LDA ACCU + 3 
1efb : 09 7f __ ORA #$7f
1efd : 85 1e __ STA ACCU + 3 
1eff : a9 80 __ LDA #$80
1f01 : 85 1d __ STA ACCU + 2 
1f03 : a9 00 __ LDA #$00
1f05 : 85 1b __ STA ACCU + 0 
1f07 : 85 1c __ STA ACCU + 1 
1f09 : 60 __ __ RTS
1f0a : 38 __ __ SEC
1f0b : a5 07 __ LDA WORK + 4 
1f0d : e5 08 __ SBC WORK + 5 
1f0f : f0 38 __ BEQ $1f49 ; (faddsub + 96)
1f11 : aa __ __ TAX
1f12 : b0 25 __ BCS $1f39 ; (faddsub + 80)
1f14 : e0 e9 __ CPX #$e9
1f16 : b0 0e __ BCS $1f26 ; (faddsub + 61)
1f18 : a5 08 __ LDA WORK + 5 
1f1a : 85 07 __ STA WORK + 4 
1f1c : a9 00 __ LDA #$00
1f1e : 85 1b __ STA ACCU + 0 
1f20 : 85 1c __ STA ACCU + 1 
1f22 : 85 1d __ STA ACCU + 2 
1f24 : f0 23 __ BEQ $1f49 ; (faddsub + 96)
1f26 : a5 1d __ LDA ACCU + 2 
1f28 : 4a __ __ LSR
1f29 : 66 1c __ ROR ACCU + 1 
1f2b : 66 1b __ ROR ACCU + 0 
1f2d : e8 __ __ INX
1f2e : d0 f8 __ BNE $1f28 ; (faddsub + 63)
1f30 : 85 1d __ STA ACCU + 2 
1f32 : a5 08 __ LDA WORK + 5 
1f34 : 85 07 __ STA WORK + 4 
1f36 : 4c 49 1f JMP $1f49 ; (faddsub + 96)
1f39 : e0 18 __ CPX #$18
1f3b : b0 33 __ BCS $1f70 ; (faddsub + 135)
1f3d : a5 05 __ LDA WORK + 2 
1f3f : 4a __ __ LSR
1f40 : 66 04 __ ROR WORK + 1 
1f42 : 66 03 __ ROR WORK + 0 
1f44 : ca __ __ DEX
1f45 : d0 f8 __ BNE $1f3f ; (faddsub + 86)
1f47 : 85 05 __ STA WORK + 2 
1f49 : a5 1e __ LDA ACCU + 3 
1f4b : 29 80 __ AND #$80
1f4d : 85 1e __ STA ACCU + 3 
1f4f : 45 06 __ EOR WORK + 3 
1f51 : 30 31 __ BMI $1f84 ; (faddsub + 155)
1f53 : 18 __ __ CLC
1f54 : a5 1b __ LDA ACCU + 0 
1f56 : 65 03 __ ADC WORK + 0 
1f58 : 85 1b __ STA ACCU + 0 
1f5a : a5 1c __ LDA ACCU + 1 
1f5c : 65 04 __ ADC WORK + 1 
1f5e : 85 1c __ STA ACCU + 1 
1f60 : a5 1d __ LDA ACCU + 2 
1f62 : 65 05 __ ADC WORK + 2 
1f64 : 85 1d __ STA ACCU + 2 
1f66 : 90 08 __ BCC $1f70 ; (faddsub + 135)
1f68 : 66 1d __ ROR ACCU + 2 
1f6a : 66 1c __ ROR ACCU + 1 
1f6c : 66 1b __ ROR ACCU + 0 
1f6e : e6 07 __ INC WORK + 4 
1f70 : a5 07 __ LDA WORK + 4 
1f72 : c9 ff __ CMP #$ff
1f74 : f0 83 __ BEQ $1ef9 ; (faddsub + 16)
1f76 : 4a __ __ LSR
1f77 : 05 1e __ ORA ACCU + 3 
1f79 : 85 1e __ STA ACCU + 3 
1f7b : b0 06 __ BCS $1f83 ; (faddsub + 154)
1f7d : a5 1d __ LDA ACCU + 2 
1f7f : 29 7f __ AND #$7f
1f81 : 85 1d __ STA ACCU + 2 
1f83 : 60 __ __ RTS
1f84 : 38 __ __ SEC
1f85 : a5 1b __ LDA ACCU + 0 
1f87 : e5 03 __ SBC WORK + 0 
1f89 : 85 1b __ STA ACCU + 0 
1f8b : a5 1c __ LDA ACCU + 1 
1f8d : e5 04 __ SBC WORK + 1 
1f8f : 85 1c __ STA ACCU + 1 
1f91 : a5 1d __ LDA ACCU + 2 
1f93 : e5 05 __ SBC WORK + 2 
1f95 : 85 1d __ STA ACCU + 2 
1f97 : b0 19 __ BCS $1fb2 ; (faddsub + 201)
1f99 : 38 __ __ SEC
1f9a : a9 00 __ LDA #$00
1f9c : e5 1b __ SBC ACCU + 0 
1f9e : 85 1b __ STA ACCU + 0 
1fa0 : a9 00 __ LDA #$00
1fa2 : e5 1c __ SBC ACCU + 1 
1fa4 : 85 1c __ STA ACCU + 1 
1fa6 : a9 00 __ LDA #$00
1fa8 : e5 1d __ SBC ACCU + 2 
1faa : 85 1d __ STA ACCU + 2 
1fac : a5 1e __ LDA ACCU + 3 
1fae : 49 80 __ EOR #$80
1fb0 : 85 1e __ STA ACCU + 3 
1fb2 : a5 1d __ LDA ACCU + 2 
1fb4 : 30 ba __ BMI $1f70 ; (faddsub + 135)
1fb6 : 05 1c __ ORA ACCU + 1 
1fb8 : 05 1b __ ORA ACCU + 0 
1fba : f0 0f __ BEQ $1fcb ; (faddsub + 226)
1fbc : c6 07 __ DEC WORK + 4 
1fbe : f0 0b __ BEQ $1fcb ; (faddsub + 226)
1fc0 : 06 1b __ ASL ACCU + 0 
1fc2 : 26 1c __ ROL ACCU + 1 
1fc4 : 26 1d __ ROL ACCU + 2 
1fc6 : 10 f4 __ BPL $1fbc ; (faddsub + 211)
1fc8 : 4c 70 1f JMP $1f70 ; (faddsub + 135)
1fcb : a9 00 __ LDA #$00
1fcd : 85 1b __ STA ACCU + 0 
1fcf : 85 1c __ STA ACCU + 1 
1fd1 : 85 1d __ STA ACCU + 2 
1fd3 : 85 1e __ STA ACCU + 3 
1fd5 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul: ; crt_fmul
1fd6 : a5 1b __ LDA ACCU + 0 
1fd8 : 05 1c __ ORA ACCU + 1 
1fda : 05 1d __ ORA ACCU + 2 
1fdc : f0 0e __ BEQ $1fec ; (crt_fmul + 22)
1fde : a5 03 __ LDA WORK + 0 
1fe0 : 05 04 __ ORA WORK + 1 
1fe2 : 05 05 __ ORA WORK + 2 
1fe4 : d0 09 __ BNE $1fef ; (crt_fmul + 25)
1fe6 : 85 1b __ STA ACCU + 0 
1fe8 : 85 1c __ STA ACCU + 1 
1fea : 85 1d __ STA ACCU + 2 
1fec : 85 1e __ STA ACCU + 3 
1fee : 60 __ __ RTS
1fef : a5 1e __ LDA ACCU + 3 
1ff1 : 45 06 __ EOR WORK + 3 
1ff3 : 29 80 __ AND #$80
1ff5 : 85 1e __ STA ACCU + 3 
1ff7 : a9 ff __ LDA #$ff
1ff9 : c5 07 __ CMP WORK + 4 
1ffb : f0 42 __ BEQ $203f ; (crt_fmul + 105)
1ffd : c5 08 __ CMP WORK + 5 
1fff : f0 3e __ BEQ $203f ; (crt_fmul + 105)
2001 : a9 00 __ LDA #$00
2003 : 85 09 __ STA WORK + 6 
2005 : 85 0a __ STA WORK + 7 
2007 : 85 0b __ STA WORK + 8 
2009 : a4 1b __ LDY ACCU + 0 
200b : a5 03 __ LDA WORK + 0 
200d : d0 06 __ BNE $2015 ; (crt_fmul + 63)
200f : a5 04 __ LDA WORK + 1 
2011 : f0 0a __ BEQ $201d ; (crt_fmul + 71)
2013 : d0 05 __ BNE $201a ; (crt_fmul + 68)
2015 : 20 70 20 JSR $2070 ; (crt_fmul8 + 0)
2018 : a5 04 __ LDA WORK + 1 
201a : 20 70 20 JSR $2070 ; (crt_fmul8 + 0)
201d : a5 05 __ LDA WORK + 2 
201f : 20 70 20 JSR $2070 ; (crt_fmul8 + 0)
2022 : 38 __ __ SEC
2023 : a5 0b __ LDA WORK + 8 
2025 : 30 06 __ BMI $202d ; (crt_fmul + 87)
2027 : 06 09 __ ASL WORK + 6 
2029 : 26 0a __ ROL WORK + 7 
202b : 2a __ __ ROL
202c : 18 __ __ CLC
202d : 29 7f __ AND #$7f
202f : 85 0b __ STA WORK + 8 
2031 : a5 07 __ LDA WORK + 4 
2033 : 65 08 __ ADC WORK + 5 
2035 : 90 19 __ BCC $2050 ; (crt_fmul + 122)
2037 : e9 7f __ SBC #$7f
2039 : b0 04 __ BCS $203f ; (crt_fmul + 105)
203b : c9 ff __ CMP #$ff
203d : d0 15 __ BNE $2054 ; (crt_fmul + 126)
203f : a5 1e __ LDA ACCU + 3 
2041 : 09 7f __ ORA #$7f
2043 : 85 1e __ STA ACCU + 3 
2045 : a9 80 __ LDA #$80
2047 : 85 1d __ STA ACCU + 2 
2049 : a9 00 __ LDA #$00
204b : 85 1b __ STA ACCU + 0 
204d : 85 1c __ STA ACCU + 1 
204f : 60 __ __ RTS
2050 : e9 7e __ SBC #$7e
2052 : 90 15 __ BCC $2069 ; (crt_fmul + 147)
2054 : 4a __ __ LSR
2055 : 05 1e __ ORA ACCU + 3 
2057 : 85 1e __ STA ACCU + 3 
2059 : a9 00 __ LDA #$00
205b : 6a __ __ ROR
205c : 05 0b __ ORA WORK + 8 
205e : 85 1d __ STA ACCU + 2 
2060 : a5 0a __ LDA WORK + 7 
2062 : 85 1c __ STA ACCU + 1 
2064 : a5 09 __ LDA WORK + 6 
2066 : 85 1b __ STA ACCU + 0 
2068 : 60 __ __ RTS
2069 : a9 00 __ LDA #$00
206b : 85 1e __ STA ACCU + 3 
206d : f0 d8 __ BEQ $2047 ; (crt_fmul + 113)
206f : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul8: ; crt_fmul8
2070 : 38 __ __ SEC
2071 : 6a __ __ ROR
2072 : 90 1e __ BCC $2092 ; (crt_fmul8 + 34)
2074 : aa __ __ TAX
2075 : 18 __ __ CLC
2076 : 98 __ __ TYA
2077 : 65 09 __ ADC WORK + 6 
2079 : 85 09 __ STA WORK + 6 
207b : a5 0a __ LDA WORK + 7 
207d : 65 1c __ ADC ACCU + 1 
207f : 85 0a __ STA WORK + 7 
2081 : a5 0b __ LDA WORK + 8 
2083 : 65 1d __ ADC ACCU + 2 
2085 : 6a __ __ ROR
2086 : 85 0b __ STA WORK + 8 
2088 : 8a __ __ TXA
2089 : 66 0a __ ROR WORK + 7 
208b : 66 09 __ ROR WORK + 6 
208d : 4a __ __ LSR
208e : f0 0d __ BEQ $209d ; (crt_fmul8 + 45)
2090 : b0 e2 __ BCS $2074 ; (crt_fmul8 + 4)
2092 : 66 0b __ ROR WORK + 8 
2094 : 66 0a __ ROR WORK + 7 
2096 : 66 09 __ ROR WORK + 6 
2098 : 4a __ __ LSR
2099 : 90 f7 __ BCC $2092 ; (crt_fmul8 + 34)
209b : d0 d7 __ BNE $2074 ; (crt_fmul8 + 4)
209d : 60 __ __ RTS
--------------------------------------------------------------------
crt_fdiv: ; crt_fdiv
209e : a5 1b __ LDA ACCU + 0 
20a0 : 05 1c __ ORA ACCU + 1 
20a2 : 05 1d __ ORA ACCU + 2 
20a4 : d0 03 __ BNE $20a9 ; (crt_fdiv + 11)
20a6 : 85 1e __ STA ACCU + 3 
20a8 : 60 __ __ RTS
20a9 : a5 1e __ LDA ACCU + 3 
20ab : 45 06 __ EOR WORK + 3 
20ad : 29 80 __ AND #$80
20af : 85 1e __ STA ACCU + 3 
20b1 : a5 08 __ LDA WORK + 5 
20b3 : f0 62 __ BEQ $2117 ; (crt_fdiv + 121)
20b5 : a5 07 __ LDA WORK + 4 
20b7 : c9 ff __ CMP #$ff
20b9 : f0 5c __ BEQ $2117 ; (crt_fdiv + 121)
20bb : a9 00 __ LDA #$00
20bd : 85 09 __ STA WORK + 6 
20bf : 85 0a __ STA WORK + 7 
20c1 : 85 0b __ STA WORK + 8 
20c3 : a2 18 __ LDX #$18
20c5 : a5 1b __ LDA ACCU + 0 
20c7 : c5 03 __ CMP WORK + 0 
20c9 : a5 1c __ LDA ACCU + 1 
20cb : e5 04 __ SBC WORK + 1 
20cd : a5 1d __ LDA ACCU + 2 
20cf : e5 05 __ SBC WORK + 2 
20d1 : 90 13 __ BCC $20e6 ; (crt_fdiv + 72)
20d3 : a5 1b __ LDA ACCU + 0 
20d5 : e5 03 __ SBC WORK + 0 
20d7 : 85 1b __ STA ACCU + 0 
20d9 : a5 1c __ LDA ACCU + 1 
20db : e5 04 __ SBC WORK + 1 
20dd : 85 1c __ STA ACCU + 1 
20df : a5 1d __ LDA ACCU + 2 
20e1 : e5 05 __ SBC WORK + 2 
20e3 : 85 1d __ STA ACCU + 2 
20e5 : 38 __ __ SEC
20e6 : 26 09 __ ROL WORK + 6 
20e8 : 26 0a __ ROL WORK + 7 
20ea : 26 0b __ ROL WORK + 8 
20ec : ca __ __ DEX
20ed : f0 0a __ BEQ $20f9 ; (crt_fdiv + 91)
20ef : 06 1b __ ASL ACCU + 0 
20f1 : 26 1c __ ROL ACCU + 1 
20f3 : 26 1d __ ROL ACCU + 2 
20f5 : b0 dc __ BCS $20d3 ; (crt_fdiv + 53)
20f7 : 90 cc __ BCC $20c5 ; (crt_fdiv + 39)
20f9 : 38 __ __ SEC
20fa : a5 0b __ LDA WORK + 8 
20fc : 30 06 __ BMI $2104 ; (crt_fdiv + 102)
20fe : 06 09 __ ASL WORK + 6 
2100 : 26 0a __ ROL WORK + 7 
2102 : 2a __ __ ROL
2103 : 18 __ __ CLC
2104 : 29 7f __ AND #$7f
2106 : 85 0b __ STA WORK + 8 
2108 : a5 07 __ LDA WORK + 4 
210a : e5 08 __ SBC WORK + 5 
210c : 90 1a __ BCC $2128 ; (crt_fdiv + 138)
210e : 18 __ __ CLC
210f : 69 7f __ ADC #$7f
2111 : b0 04 __ BCS $2117 ; (crt_fdiv + 121)
2113 : c9 ff __ CMP #$ff
2115 : d0 15 __ BNE $212c ; (crt_fdiv + 142)
2117 : a5 1e __ LDA ACCU + 3 
2119 : 09 7f __ ORA #$7f
211b : 85 1e __ STA ACCU + 3 
211d : a9 80 __ LDA #$80
211f : 85 1d __ STA ACCU + 2 
2121 : a9 00 __ LDA #$00
2123 : 85 1c __ STA ACCU + 1 
2125 : 85 1b __ STA ACCU + 0 
2127 : 60 __ __ RTS
2128 : 69 7f __ ADC #$7f
212a : 90 15 __ BCC $2141 ; (crt_fdiv + 163)
212c : 4a __ __ LSR
212d : 05 1e __ ORA ACCU + 3 
212f : 85 1e __ STA ACCU + 3 
2131 : a9 00 __ LDA #$00
2133 : 6a __ __ ROR
2134 : 05 0b __ ORA WORK + 8 
2136 : 85 1d __ STA ACCU + 2 
2138 : a5 0a __ LDA WORK + 7 
213a : 85 1c __ STA ACCU + 1 
213c : a5 09 __ LDA WORK + 6 
213e : 85 1b __ STA ACCU + 0 
2140 : 60 __ __ RTS
2141 : a9 00 __ LDA #$00
2143 : 85 1e __ STA ACCU + 3 
2145 : 85 1d __ STA ACCU + 2 
2147 : 85 1c __ STA ACCU + 1 
2149 : 85 1b __ STA ACCU + 0 
214b : 60 __ __ RTS
--------------------------------------------------------------------
divs16: ; divs16
214c : 24 1c __ BIT ACCU + 1 
214e : 10 0d __ BPL $215d ; (divs16 + 17)
2150 : 20 f0 1a JSR $1af0 ; (negaccu + 0)
2153 : 24 04 __ BIT WORK + 1 
2155 : 10 0d __ BPL $2164 ; (divs16 + 24)
2157 : 20 ee 1d JSR $1dee ; (negtmp + 0)
215a : 4c 6a 21 JMP $216a ; (divmod + 0)
215d : 24 04 __ BIT WORK + 1 
215f : 10 f9 __ BPL $215a ; (divs16 + 14)
2161 : 20 ee 1d JSR $1dee ; (negtmp + 0)
2164 : 20 6a 21 JSR $216a ; (divmod + 0)
2167 : 4c f0 1a JMP $1af0 ; (negaccu + 0)
--------------------------------------------------------------------
divmod: ; divmod
216a : a5 1c __ LDA ACCU + 1 
216c : d0 31 __ BNE $219f ; (divmod + 53)
216e : a5 04 __ LDA WORK + 1 
2170 : d0 1e __ BNE $2190 ; (divmod + 38)
2172 : 85 06 __ STA WORK + 3 
2174 : a2 04 __ LDX #$04
2176 : 06 1b __ ASL ACCU + 0 
2178 : 2a __ __ ROL
2179 : c5 03 __ CMP WORK + 0 
217b : 90 02 __ BCC $217f ; (divmod + 21)
217d : e5 03 __ SBC WORK + 0 
217f : 26 1b __ ROL ACCU + 0 
2181 : 2a __ __ ROL
2182 : c5 03 __ CMP WORK + 0 
2184 : 90 02 __ BCC $2188 ; (divmod + 30)
2186 : e5 03 __ SBC WORK + 0 
2188 : 26 1b __ ROL ACCU + 0 
218a : ca __ __ DEX
218b : d0 eb __ BNE $2178 ; (divmod + 14)
218d : 85 05 __ STA WORK + 2 
218f : 60 __ __ RTS
2190 : a5 1b __ LDA ACCU + 0 
2192 : 85 05 __ STA WORK + 2 
2194 : a5 1c __ LDA ACCU + 1 
2196 : 85 06 __ STA WORK + 3 
2198 : a9 00 __ LDA #$00
219a : 85 1b __ STA ACCU + 0 
219c : 85 1c __ STA ACCU + 1 
219e : 60 __ __ RTS
219f : a5 04 __ LDA WORK + 1 
21a1 : d0 1f __ BNE $21c2 ; (divmod + 88)
21a3 : a5 03 __ LDA WORK + 0 
21a5 : 30 1b __ BMI $21c2 ; (divmod + 88)
21a7 : a9 00 __ LDA #$00
21a9 : 85 06 __ STA WORK + 3 
21ab : a2 10 __ LDX #$10
21ad : 06 1b __ ASL ACCU + 0 
21af : 26 1c __ ROL ACCU + 1 
21b1 : 2a __ __ ROL
21b2 : c5 03 __ CMP WORK + 0 
21b4 : 90 02 __ BCC $21b8 ; (divmod + 78)
21b6 : e5 03 __ SBC WORK + 0 
21b8 : 26 1b __ ROL ACCU + 0 
21ba : 26 1c __ ROL ACCU + 1 
21bc : ca __ __ DEX
21bd : d0 f2 __ BNE $21b1 ; (divmod + 71)
21bf : 85 05 __ STA WORK + 2 
21c1 : 60 __ __ RTS
21c2 : a9 00 __ LDA #$00
21c4 : 85 05 __ STA WORK + 2 
21c6 : 85 06 __ STA WORK + 3 
21c8 : a0 10 __ LDY #$10
21ca : 18 __ __ CLC
21cb : 26 1b __ ROL ACCU + 0 
21cd : 26 1c __ ROL ACCU + 1 
21cf : 26 05 __ ROL WORK + 2 
21d1 : 26 06 __ ROL WORK + 3 
21d3 : 38 __ __ SEC
21d4 : a5 05 __ LDA WORK + 2 
21d6 : e5 03 __ SBC WORK + 0 
21d8 : aa __ __ TAX
21d9 : a5 06 __ LDA WORK + 3 
21db : e5 04 __ SBC WORK + 1 
21dd : 90 04 __ BCC $21e3 ; (divmod + 121)
21df : 86 05 __ STX WORK + 2 
21e1 : 85 06 __ STA WORK + 3 
21e3 : 88 __ __ DEY
21e4 : d0 e5 __ BNE $21cb ; (divmod + 97)
21e6 : 26 1b __ ROL ACCU + 0 
21e8 : 26 1c __ ROL ACCU + 1 
21ea : 60 __ __ RTS
--------------------------------------------------------------------
mods16: ; mods16
21eb : 24 1c __ BIT ACCU + 1 
21ed : 10 10 __ BPL $21ff ; (mods16 + 20)
21ef : 20 f0 1a JSR $1af0 ; (negaccu + 0)
21f2 : 24 04 __ BIT WORK + 1 
21f4 : 10 03 __ BPL $21f9 ; (mods16 + 14)
21f6 : 20 ee 1d JSR $1dee ; (negtmp + 0)
21f9 : 20 6a 21 JSR $216a ; (divmod + 0)
21fc : 4c 0a 22 JMP $220a ; (negtmpb + 0)
21ff : 24 04 __ BIT WORK + 1 
2201 : 10 03 __ BPL $2206 ; (mods16 + 27)
2203 : 20 ee 1d JSR $1dee ; (negtmp + 0)
2206 : 4c 6a 21 JMP $216a ; (divmod + 0)
2209 : 60 __ __ RTS
--------------------------------------------------------------------
negtmpb: ; negtmpb
220a : 38 __ __ SEC
220b : a9 00 __ LDA #$00
220d : e5 05 __ SBC WORK + 2 
220f : 85 05 __ STA WORK + 2 
2211 : a9 00 __ LDA #$00
2213 : e5 06 __ SBC WORK + 3 
2215 : 85 06 __ STA WORK + 3 
2217 : 60 __ __ RTS
--------------------------------------------------------------------
f32_to_i16: ; f32_to_i16
2218 : 20 c8 1e JSR $1ec8 ; (freg + 36)
221b : a5 07 __ LDA WORK + 4 
221d : c9 7f __ CMP #$7f
221f : b0 07 __ BCS $2228 ; (f32_to_i16 + 16)
2221 : a9 00 __ LDA #$00
2223 : 85 1b __ STA ACCU + 0 
2225 : 85 1c __ STA ACCU + 1 
2227 : 60 __ __ RTS
2228 : e9 8e __ SBC #$8e
222a : 90 16 __ BCC $2242 ; (f32_to_i16 + 42)
222c : 24 1e __ BIT ACCU + 3 
222e : 30 09 __ BMI $2239 ; (f32_to_i16 + 33)
2230 : a9 ff __ LDA #$ff
2232 : 85 1b __ STA ACCU + 0 
2234 : a9 7f __ LDA #$7f
2236 : 85 1c __ STA ACCU + 1 
2238 : 60 __ __ RTS
2239 : a9 00 __ LDA #$00
223b : 85 1b __ STA ACCU + 0 
223d : a9 80 __ LDA #$80
223f : 85 1c __ STA ACCU + 1 
2241 : 60 __ __ RTS
2242 : aa __ __ TAX
2243 : a5 1c __ LDA ACCU + 1 
2245 : 46 1d __ LSR ACCU + 2 
2247 : 6a __ __ ROR
2248 : e8 __ __ INX
2249 : d0 fa __ BNE $2245 ; (f32_to_i16 + 45)
224b : 24 1e __ BIT ACCU + 3 
224d : 10 0e __ BPL $225d ; (f32_to_i16 + 69)
224f : 38 __ __ SEC
2250 : 49 ff __ EOR #$ff
2252 : 69 00 __ ADC #$00
2254 : 85 1b __ STA ACCU + 0 
2256 : a9 00 __ LDA #$00
2258 : e5 1d __ SBC ACCU + 2 
225a : 85 1c __ STA ACCU + 1 
225c : 60 __ __ RTS
225d : 85 1b __ STA ACCU + 0 
225f : a5 1d __ LDA ACCU + 2 
2261 : 85 1c __ STA ACCU + 1 
2263 : 60 __ __ RTS
--------------------------------------------------------------------
sint16_to_float: ; sint16_to_float
2264 : 24 1c __ BIT ACCU + 1 
2266 : 30 03 __ BMI $226b ; (sint16_to_float + 7)
2268 : 4c 82 22 JMP $2282 ; (uint16_to_float + 0)
226b : 38 __ __ SEC
226c : a9 00 __ LDA #$00
226e : e5 1b __ SBC ACCU + 0 
2270 : 85 1b __ STA ACCU + 0 
2272 : a9 00 __ LDA #$00
2274 : e5 1c __ SBC ACCU + 1 
2276 : 85 1c __ STA ACCU + 1 
2278 : 20 82 22 JSR $2282 ; (uint16_to_float + 0)
227b : a5 1e __ LDA ACCU + 3 
227d : 09 80 __ ORA #$80
227f : 85 1e __ STA ACCU + 3 
2281 : 60 __ __ RTS
--------------------------------------------------------------------
uint16_to_float: ; uint16_to_float
2282 : a5 1b __ LDA ACCU + 0 
2284 : 05 1c __ ORA ACCU + 1 
2286 : d0 05 __ BNE $228d ; (uint16_to_float + 11)
2288 : 85 1d __ STA ACCU + 2 
228a : 85 1e __ STA ACCU + 3 
228c : 60 __ __ RTS
228d : a2 8e __ LDX #$8e
228f : a5 1c __ LDA ACCU + 1 
2291 : 30 06 __ BMI $2299 ; (uint16_to_float + 23)
2293 : ca __ __ DEX
2294 : 06 1b __ ASL ACCU + 0 
2296 : 2a __ __ ROL
2297 : 10 fa __ BPL $2293 ; (uint16_to_float + 17)
2299 : 0a __ __ ASL
229a : 85 1d __ STA ACCU + 2 
229c : a5 1b __ LDA ACCU + 0 
229e : 85 1c __ STA ACCU + 1 
22a0 : 8a __ __ TXA
22a1 : 4a __ __ LSR
22a2 : 85 1e __ STA ACCU + 3 
22a4 : a9 00 __ LDA #$00
22a6 : 85 1b __ STA ACCU + 0 
22a8 : 66 1d __ ROR ACCU + 2 
22aa : 60 __ __ RTS
--------------------------------------------------------------------
divmod32: ; divmod32
22ab : a9 00 __ LDA #$00
22ad : 85 07 __ STA WORK + 4 
22af : 85 08 __ STA WORK + 5 
22b1 : 85 09 __ STA WORK + 6 
22b3 : 85 0a __ STA WORK + 7 
22b5 : a5 05 __ LDA WORK + 2 
22b7 : 05 06 __ ORA WORK + 3 
22b9 : f0 4b __ BEQ $2306 ; (divmod32 + 91)
22bb : a0 10 __ LDY #$10
22bd : a5 1e __ LDA ACCU + 3 
22bf : 85 08 __ STA WORK + 5 
22c1 : a5 1d __ LDA ACCU + 2 
22c3 : 85 07 __ STA WORK + 4 
22c5 : a9 00 __ LDA #$00
22c7 : 85 1d __ STA ACCU + 2 
22c9 : 85 1e __ STA ACCU + 3 
22cb : 18 __ __ CLC
22cc : 26 1b __ ROL ACCU + 0 
22ce : 26 1c __ ROL ACCU + 1 
22d0 : 26 07 __ ROL WORK + 4 
22d2 : 26 08 __ ROL WORK + 5 
22d4 : 26 09 __ ROL WORK + 6 
22d6 : 26 0a __ ROL WORK + 7 
22d8 : a5 07 __ LDA WORK + 4 
22da : c5 03 __ CMP WORK + 0 
22dc : a5 08 __ LDA WORK + 5 
22de : e5 04 __ SBC WORK + 1 
22e0 : a5 09 __ LDA WORK + 6 
22e2 : e5 05 __ SBC WORK + 2 
22e4 : aa __ __ TAX
22e5 : a5 0a __ LDA WORK + 7 
22e7 : e5 06 __ SBC WORK + 3 
22e9 : 90 11 __ BCC $22fc ; (divmod32 + 81)
22eb : 86 09 __ STX WORK + 6 
22ed : 85 0a __ STA WORK + 7 
22ef : a5 07 __ LDA WORK + 4 
22f1 : e5 03 __ SBC WORK + 0 
22f3 : 85 07 __ STA WORK + 4 
22f5 : a5 08 __ LDA WORK + 5 
22f7 : e5 04 __ SBC WORK + 1 
22f9 : 85 08 __ STA WORK + 5 
22fb : 38 __ __ SEC
22fc : 88 __ __ DEY
22fd : d0 cd __ BNE $22cc ; (divmod32 + 33)
22ff : 26 1b __ ROL ACCU + 0 
2301 : 26 1c __ ROL ACCU + 1 
2303 : a4 02 __ LDY $02 
2305 : 60 __ __ RTS
2306 : a5 1d __ LDA ACCU + 2 
2308 : 05 1e __ ORA ACCU + 3 
230a : d0 0c __ BNE $2318 ; (divmod32 + 109)
230c : 20 6a 21 JSR $216a ; (divmod + 0)
230f : a5 05 __ LDA WORK + 2 
2311 : 85 07 __ STA WORK + 4 
2313 : a5 06 __ LDA WORK + 3 
2315 : 85 08 __ STA WORK + 5 
2317 : 60 __ __ RTS
2318 : a0 20 __ LDY #$20
231a : a5 04 __ LDA WORK + 1 
231c : d0 27 __ BNE $2345 ; (divmod32 + 154)
231e : 18 __ __ CLC
231f : 26 1b __ ROL ACCU + 0 
2321 : 26 1c __ ROL ACCU + 1 
2323 : 26 1d __ ROL ACCU + 2 
2325 : 26 1e __ ROL ACCU + 3 
2327 : 2a __ __ ROL
2328 : 90 05 __ BCC $232f ; (divmod32 + 132)
232a : e5 03 __ SBC WORK + 0 
232c : 38 __ __ SEC
232d : b0 06 __ BCS $2335 ; (divmod32 + 138)
232f : c5 03 __ CMP WORK + 0 
2331 : 90 02 __ BCC $2335 ; (divmod32 + 138)
2333 : e5 03 __ SBC WORK + 0 
2335 : 88 __ __ DEY
2336 : d0 e7 __ BNE $231f ; (divmod32 + 116)
2338 : 85 07 __ STA WORK + 4 
233a : 26 1b __ ROL ACCU + 0 
233c : 26 1c __ ROL ACCU + 1 
233e : 26 1d __ ROL ACCU + 2 
2340 : 26 1e __ ROL ACCU + 3 
2342 : a4 02 __ LDY $02 
2344 : 60 __ __ RTS
2345 : a5 1e __ LDA ACCU + 3 
2347 : d0 10 __ BNE $2359 ; (divmod32 + 174)
2349 : a6 1d __ LDX ACCU + 2 
234b : 86 1e __ STX ACCU + 3 
234d : a6 1c __ LDX ACCU + 1 
234f : 86 1d __ STX ACCU + 2 
2351 : a6 1b __ LDX ACCU + 0 
2353 : 86 1c __ STX ACCU + 1 
2355 : 85 1b __ STA ACCU + 0 
2357 : a0 18 __ LDY #$18
2359 : 18 __ __ CLC
235a : 26 1b __ ROL ACCU + 0 
235c : 26 1c __ ROL ACCU + 1 
235e : 26 1d __ ROL ACCU + 2 
2360 : 26 1e __ ROL ACCU + 3 
2362 : 26 07 __ ROL WORK + 4 
2364 : 26 08 __ ROL WORK + 5 
2366 : 90 0c __ BCC $2374 ; (divmod32 + 201)
2368 : a5 07 __ LDA WORK + 4 
236a : e5 03 __ SBC WORK + 0 
236c : aa __ __ TAX
236d : a5 08 __ LDA WORK + 5 
236f : e5 04 __ SBC WORK + 1 
2371 : 38 __ __ SEC
2372 : b0 0c __ BCS $2380 ; (divmod32 + 213)
2374 : 38 __ __ SEC
2375 : a5 07 __ LDA WORK + 4 
2377 : e5 03 __ SBC WORK + 0 
2379 : aa __ __ TAX
237a : a5 08 __ LDA WORK + 5 
237c : e5 04 __ SBC WORK + 1 
237e : 90 04 __ BCC $2384 ; (divmod32 + 217)
2380 : 86 07 __ STX WORK + 4 
2382 : 85 08 __ STA WORK + 5 
2384 : 88 __ __ DEY
2385 : d0 d3 __ BNE $235a ; (divmod32 + 175)
2387 : 26 1b __ ROL ACCU + 0 
2389 : 26 1c __ ROL ACCU + 1 
238b : 26 1d __ ROL ACCU + 2 
238d : 26 1e __ ROL ACCU + 3 
238f : a4 02 __ LDY $02 
2391 : 60 __ __ RTS
--------------------------------------------------------------------
__multab656H:
2392 : __ __ __ BYT 00 02 05 07                                     : ....
--------------------------------------------------------------------
__multab80L:
2396 : __ __ __ BYT 00 50 a0 f0 40 90 e0 30 80 d0 20 70 c0 10 60 b0 : .P..@..0.. p..`.
--------------------------------------------------------------------
__multab80H:
23a6 : __ __ __ BYT 00 00 00 00 01 01 01 02 02 02 03 03 03 04 04 04 : ................
--------------------------------------------------------------------
num_boxes:
23b6 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
level_moves:
23b8 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
levels:
23ba : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
23ca : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
23da : __ __ __ BYT 23 23 23 23 23 23 23 23 00 23 20 20 20 20 20 20 : ########.#      
23ea : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
23fa : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
240a : __ __ __ BYT 23 00 23 20 20 20 23 23 23 23 23 23 23 23 23 23 : #.#   ##########
241a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
242a : __ __ __ BYT 23 23 23 23 23 23 20 20 20 23 00 23 20 20 20 23 : ######   #.#   #
243a : __ __ __ BYT 20 47 20 47 20 47 20 47 20 47 20 23 20 20 20 20 :  G G G G G #    
244a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 23 20 :               # 
245a : __ __ __ BYT 20 20 23 00 23 20 20 20 23 20 20 20 20 20 20 20 :   #.#   #       
246a : __ __ __ BYT 20 20 20 20 23 20 20 20 20 20 20 31 20 20 20 31 :     #      1   1
247a : __ __ __ BYT 20 20 20 31 20 20 20 23 20 20 20 23 00 23 20 20 :    1   #   #.#  
248a : __ __ __ BYT 20 23 20 47 20 47 20 47 20 47 20 47 20 23 20 20 :  # G G G G G #  
249a : __ __ __ BYT 20 20 31 20 20 20 31 20 20 20 31 20 20 20 20 20 :   1   1   1     
24aa : __ __ __ BYT 23 20 20 20 23 00 23 20 20 20 23 20 20 20 20 20 : #   #.#   #     
24ba : __ __ __ BYT 20 20 20 20 20 20 23 20 20 20 20 20 20 31 20 20 :       #      1  
24ca : __ __ __ BYT 20 31 20 20 20 20 20 20 20 23 20 20 20 23 00 23 :  1       #   #.#
24da : __ __ __ BYT 20 20 20 23 23 23 23 23 20 20 23 23 23 23 23 23 :    #####  ######
24ea : __ __ __ BYT 20 20 20 20 20 20 20 20 31 20 20 20 31 20 20 20 :         1   1   
24fa : __ __ __ BYT 20 20 23 20 20 20 23 00 23 20 20 20 23 20 5e 20 :   #   #.#   # ^ 
250a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
251a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 23 20 20 20 23 :            #   #
252a : __ __ __ BYT 00 23 20 20 20 23 20 20 20 20 20 20 20 20 20 20 : .#   #          
253a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
254a : __ __ __ BYT 20 20 20 20 23 20 20 20 23 00 23 20 20 20 23 23 :     #   #.#   ##
255a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
256a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 20 20 : ##############  
257a : __ __ __ BYT 20 23 00 23 23 23 23 23 23 23 23 23 23 23 23 23 :  #.#############
258a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
259a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 00 20 20 20 20 : ###########.    
25aa : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
25ba : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
25ca : __ __ __ BYT 20 20 20 20 00 20 20 20 20 20 20 20 20 20 20 20 :     .           
25da : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
25ea : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 00 20 20 :              .  
25fa : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
260a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
261a : __ __ __ BYT 20 20 20 20 20 20 00 20 20 20 20 20 20 20 20 20 :       .         
262a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
263a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 00 :                .
264a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
265a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
266a : __ __ __ BYT 23 23 23 23 23 23 23 23 00 23 20 20 20 20 20 20 : ########.#      
267a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
268a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
269a : __ __ __ BYT 23 00 23 20 20 20 23 23 23 23 23 23 23 23 23 23 : #.#   ##########
26aa : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
26ba : __ __ __ BYT 23 23 23 23 23 23 20 20 20 23 00 23 20 20 20 23 : ######   #.#   #
26ca : __ __ __ BYT 20 20 20 20 20 23 20 20 20 20 20 20 20 20 20 20 :      #          
26da : __ __ __ BYT 20 20 20 20 20 20 23 20 20 20 20 20 20 20 23 20 :       #       # 
26ea : __ __ __ BYT 20 20 23 00 23 20 20 20 23 20 5e 20 20 20 23 20 :   #.#   # ^   # 
26fa : __ __ __ BYT 20 31 20 20 20 31 20 20 20 31 20 20 20 31 20 23 :  1   1   1   1 #
270a : __ __ __ BYT 20 47 20 47 20 47 20 23 20 20 20 23 00 23 20 20 :  G G G #   #.#  
271a : __ __ __ BYT 20 23 20 20 20 20 20 23 20 20 20 20 20 20 20 20 :  #     #        
272a : __ __ __ BYT 20 20 20 20 20 20 20 20 23 20 47 20 47 20 47 20 :         # G G G 
273a : __ __ __ BYT 23 20 20 20 23 00 23 20 20 20 23 20 20 31 20 20 : #   #.#   #  1  
274a : __ __ __ BYT 23 20 31 20 20 31 20 20 20 31 20 20 20 31 20 20 : # 1  1   1   1  
275a : __ __ __ BYT 20 23 20 47 20 47 20 47 20 23 20 20 20 23 00 23 :  # G G G #   #.#
276a : __ __ __ BYT 20 20 20 23 20 20 20 20 20 23 20 20 20 20 20 20 :    #     #      
277a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 23 20 47 20 47 20 :           # G G 
278a : __ __ __ BYT 47 20 23 20 20 20 23 00 23 20 20 20 23 20 31 20 : G #   #.#   # 1 
279a : __ __ __ BYT 31 20 20 20 20 31 20 20 20 31 20 20 20 31 20 20 : 1    1   1   1  
27aa : __ __ __ BYT 20 31 20 20 20 47 20 47 20 47 20 23 20 20 20 23 :  1   G G G #   #
27ba : __ __ __ BYT 00 23 20 20 20 23 20 20 20 20 20 23 20 20 20 20 : .#   #     #    
27ca : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 23 20 47 20 :             # G 
27da : __ __ __ BYT 47 20 47 20 23 20 20 20 23 00 23 20 20 20 23 20 : G G #   #.#   # 
27ea : __ __ __ BYT 20 31 20 20 23 20 20 31 20 20 20 31 20 20 20 31 :  1  #  1   1   1
27fa : __ __ __ BYT 20 20 20 31 20 23 20 47 20 47 20 47 20 23 20 20 :    1 # G G G #  
280a : __ __ __ BYT 20 23 00 23 20 20 20 23 20 20 20 20 20 23 20 20 :  #.#   #     #  
281a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 23 20 :               # 
282a : __ __ __ BYT 20 20 20 20 20 20 23 20 20 20 23 00 23 20 20 20 :       #   #.#   
283a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
284a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
285a : __ __ __ BYT 20 20 20 23 00 23 20 20 20 20 20 20 20 20 20 20 :    #.#          
286a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
287a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 23 00 23 23 :             #.##
288a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
289a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
28aa : __ __ __ BYT 23 23 23 23 23 23 00 00 00 00 00 00 00 00 00 00 : ######..........
28ba : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
28ca : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
28da : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
28ea : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
28fa : __ __ __ BYT 23 23 23 23 23 23 23 23 00 23 20 20 20 20 20 20 : ########.#      
290a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
291a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 :                 
292a : __ __ __ BYT 23 00 23 20 20 20 20 23 23 23 23 23 23 23 23 23 : #.#    #########
293a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
294a : __ __ __ BYT 23 23 23 23 23 20 20 20 20 23 00 23 20 20 20 20 : #####    #.#    
295a : __ __ __ BYT 23 20 20 20 20 20 20 20 20 20 20 23 20 20 20 20 : #          #    
296a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 23 20 20 :              #  
297a : __ __ __ BYT 20 20 23 00 23 20 20 20 20 23 20 47 20 47 20 47 :   #.#    # G G G
298a : __ __ __ BYT 20 47 20 47 23 20 31 20 31 20 31 20 31 20 31 20 :  G G# 1 1 1 1 1 
299a : __ __ __ BYT 31 20 31 20 31 20 23 20 20 20 20 23 00 23 20 20 : 1 1 1 #    #.#  
29aa : __ __ __ BYT 20 20 23 20 47 20 47 20 47 20 47 20 47 23 20 20 :   # G G G G G#  
29ba : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 23 :                #
29ca : __ __ __ BYT 20 20 20 20 23 00 23 20 20 20 20 23 20 47 20 47 :     #.#    # G G
29da : __ __ __ BYT 20 47 20 47 20 47 23 20 31 20 23 23 23 20 20 20 :  G G G# 1 ###   
29ea : __ __ __ BYT 23 23 23 20 31 20 31 20 23 20 20 20 20 23 00 23 : ### 1 1 #    #.#
29fa : __ __ __ BYT 20 20 20 20 23 20 47 20 47 20 47 20 47 20 47 20 :     # G G G G G 
2a0a : __ __ __ BYT 20 20 20 23 20 20 20 20 20 20 20 23 20 20 20 20 :    #       #    
2a1a : __ __ __ BYT 20 23 20 20 20 20 23 00 23 20 20 20 20 23 20 47 :  #    #.#    # G
2a2a : __ __ __ BYT 20 47 20 47 20 47 20 47 23 20 31 20 23 20 20 20 :  G G G G# 1 #   
2a3a : __ __ __ BYT 5e 20 20 20 23 20 31 20 31 20 23 20 20 20 20 23 : ^   # 1 1 #    #
2a4a : __ __ __ BYT 00 23 20 20 20 20 23 20 20 20 20 20 20 20 20 20 : .#    #         
2a5a : __ __ __ BYT 20 23 20 20 20 23 20 20 20 20 20 20 20 23 20 20 :  #   #       #  
2a6a : __ __ __ BYT 20 20 20 23 20 20 20 20 23 00 23 20 20 20 20 23 :    #    #.#    #
2a7a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 20 31 20 23 23 : ########### 1 ##
2a8a : __ __ __ BYT 23 20 20 20 23 23 23 20 31 20 31 20 23 20 20 20 : #   ### 1 1 #   
2a9a : __ __ __ BYT 20 23 00 23 20 20 20 20 20 20 20 20 20 20 20 20 :  #.#            
2aaa : __ __ __ BYT 20 20 20 23 20 20 20 20 20 20 20 20 20 20 20 20 :    #            
2aba : __ __ __ BYT 20 20 20 20 20 23 20 20 20 20 23 00 23 20 20 20 :      #    #.#   
2aca : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 23 20 31 20 :             # 1 
2ada : __ __ __ BYT 31 20 31 20 31 20 31 20 31 20 31 20 31 20 23 20 : 1 1 1 1 1 1 1 # 
2aea : __ __ __ BYT 20 20 20 23 00 23 20 20 20 20 20 20 20 20 20 20 :    #.#          
2afa : __ __ __ BYT 20 20 20 20 20 23 20 20 20 20 20 20 20 20 20 20 :      #          
2b0a : __ __ __ BYT 20 20 20 20 20 20 20 23 20 20 20 20 23 00 23 20 :        #    #.# 
2b1a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 23 23 :               ##
2b2a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
2b3a : __ __ __ BYT 23 20 20 20 20 23 00 23 23 23 23 23 23 23 23 23 : #    #.#########
2b4a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
2b5a : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 00 : ###############.
--------------------------------------------------------------------
px:
2b6a : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
py:
2b6c : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
fround5:
2b6e : __ __ __ BYT 00 00 00 3f cd cc 4c 3d 0a d7 a3 3b 6f 12 03 3a : ...?..L=...;o..:
2b7e : __ __ __ BYT 17 b7 51 38 ac c5 a7 36 bd 37 06 35             : ..Q8...6.7.5
--------------------------------------------------------------------
total_moves:
2b8a : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
walls:
2b8c : __ __ __ BSS	1280
--------------------------------------------------------------------
goals:
308c : __ __ __ BSS	1280
--------------------------------------------------------------------
box_x:
358c : __ __ __ BSS	70
--------------------------------------------------------------------
box_y:
3600 : __ __ __ BSS	70
