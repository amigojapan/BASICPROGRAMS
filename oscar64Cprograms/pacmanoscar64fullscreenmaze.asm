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
080e : 8e 41 28 STX $2841 ; (spentry + 0)
0811 : a2 28 __ LDX #$28
0813 : a0 9a __ LDY #$9a
0815 : a9 00 __ LDA #$00
0817 : 85 19 __ STA IP + 0 
0819 : 86 1a __ STX IP + 1 
081b : e0 2c __ CPX #$2c
081d : f0 0b __ BEQ $082a ; (startup + 41)
081f : 91 19 __ STA (IP + 0),y 
0821 : c8 __ __ INY
0822 : d0 fb __ BNE $081f ; (startup + 30)
0824 : e8 __ __ INX
0825 : d0 f2 __ BNE $0819 ; (startup + 24)
0827 : 91 19 __ STA (IP + 0),y 
0829 : c8 __ __ INY
082a : c0 3e __ CPY #$3e
082c : d0 f9 __ BNE $0827 ; (startup + 38)
082e : a9 00 __ LDA #$00
0830 : a2 f7 __ LDX #$f7
0832 : d0 03 __ BNE $0837 ; (startup + 54)
0834 : 95 00 __ STA $00,x 
0836 : e8 __ __ INX
0837 : e0 f7 __ CPX #$f7
0839 : d0 f9 __ BNE $0834 ; (startup + 51)
083b : a9 80 __ LDA #$80
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
; 172, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64fullscreenmaze.c"
.s1:
0880 : a2 0d __ LDX #$0d
0882 : b5 53 __ LDA T3 + 0,x 
0884 : 9d 82 9f STA $9f82,x ; (main@stack + 0)
0887 : ca __ __ DEX
0888 : 10 f8 __ BPL $0882 ; (main.s1 + 2)
.s4:
088a : 20 f1 0b JSR $0bf1 ; (init.s1 + 0)
.l5:
088d : ad 49 28 LDA $2849 ; (te + 1)
0890 : 85 54 __ STA T3 + 1 
0892 : ad 48 28 LDA $2848 ; (te + 0)
0895 : 85 53 __ STA T3 + 0 
0897 : 05 54 __ ORA T3 + 1 
0899 : d0 13 __ BNE $08ae ; (main.s6 + 0)
.s40:
089b : 85 13 __ STA P6 
089d : 85 15 __ STA P8 
089f : a9 10 __ LDA #$10
08a1 : 85 12 __ STA P5 
08a3 : a9 0e __ LDA #$0e
08a5 : 85 14 __ STA P7 
08a7 : a9 1f __ LDA #$1f
08a9 : a2 37 __ LDX #$37
08ab : 4c d9 0b JMP $0bd9 ; (main.s3 + 0)
.s6:
08ae : ad 44 28 LDA $2844 ; (li + 0)
08b1 : 0d 45 28 ORA $2845 ; (li + 1)
08b4 : d0 03 __ BNE $08b9 ; (main.s7 + 0)
08b6 : 4c c9 0b JMP $0bc9 ; (main.s39 + 0)
.s7:
08b9 : ad 32 2c LDA $2c32 ; (px + 0)
08bc : 85 55 __ STA T4 + 0 
08be : ad 33 2c LDA $2c33 ; (px + 1)
08c1 : 85 56 __ STA T4 + 1 
08c3 : ad 34 2c LDA $2c34 ; (py + 0)
08c6 : 85 57 __ STA T5 + 0 
08c8 : ad 35 2c LDA $2c35 ; (py + 1)
08cb : 85 58 __ STA T5 + 1 
08cd : ad 36 2c LDA $2c36 ; (gx[0] + 0)
08d0 : 85 59 __ STA T6 + 0 
08d2 : ad 37 2c LDA $2c37 ; (gx[0] + 1)
08d5 : 85 5a __ STA T6 + 1 
08d7 : ad 3a 2c LDA $2c3a ; (gy[0] + 0)
08da : 85 5b __ STA T7 + 0 
08dc : ad 3b 2c LDA $2c3b ; (gy[0] + 1)
08df : 85 5c __ STA T7 + 1 
08e1 : ad 38 2c LDA $2c38 ; (gx[0] + 2)
08e4 : 85 5d __ STA T8 + 0 
08e6 : ad 39 2c LDA $2c39 ; (gx[0] + 3)
08e9 : 85 5e __ STA T8 + 1 
08eb : ad 3c 2c LDA $2c3c ; (gy[0] + 2)
08ee : 85 5f __ STA T9 + 0 
08f0 : ad 3d 2c LDA $2c3d ; (gy[0] + 3)
08f3 : 85 60 __ STA T9 + 1 
.l8:
08f5 : 20 4b 1f JSR $1f4b ; (kbhit.s4 + 0)
08f8 : aa __ __ TAX
08f9 : f0 03 __ BEQ $08fe ; (main.s9 + 0)
08fb : 4c 9d 0b JMP $0b9d ; (main.s31 + 0)
.s9:
08fe : ad 00 dc LDA $dc00 
0901 : aa __ __ TAX
0902 : 4a __ __ LSR
0903 : b0 0d __ BCS $0912 ; (main.s24 + 0)
.s10:
0905 : a9 00 __ LDA #$00
0907 : 85 43 __ STA T0 + 0 
0909 : a9 ff __ LDA #$ff
.s41:
090b : 85 45 __ STA T1 + 0 
090d : 85 46 __ STA T1 + 1 
090f : 4c 24 09 JMP $0924 ; (main.s11 + 0)
.s24:
0912 : 8a __ __ TXA
0913 : 29 02 __ AND #$02
0915 : f0 03 __ BEQ $091a ; (main.s25 + 0)
0917 : 4c 83 0b JMP $0b83 ; (main.s26 + 0)
.s25:
091a : a9 00 __ LDA #$00
091c : 85 43 __ STA T0 + 0 
091e : 85 46 __ STA T1 + 1 
0920 : a9 01 __ LDA #$01
0922 : 85 45 __ STA T1 + 0 
.s11:
0924 : 18 __ __ CLC
0925 : a5 57 __ LDA T5 + 0 
0927 : 65 45 __ ADC T1 + 0 
0929 : 85 45 __ STA T1 + 0 
092b : a5 58 __ LDA T5 + 1 
092d : 65 46 __ ADC T1 + 1 
092f : 85 46 __ STA T1 + 1 
0931 : 18 __ __ CLC
0932 : a5 55 __ LDA T4 + 0 
0934 : 65 43 __ ADC T0 + 0 
0936 : 85 43 __ STA T0 + 0 
0938 : 85 1b __ STA ACCU + 0 
093a : a9 00 __ LDA #$00
093c : 85 1c __ STA ACCU + 1 
093e : a9 17 __ LDA #$17
0940 : 20 ff 22 JSR $22ff ; (mul16by8 + 0)
0943 : 18 __ __ CLC
0944 : a9 9a __ LDA #$9a
0946 : 65 1b __ ADC ACCU + 0 
0948 : 85 47 __ STA T2 + 0 
094a : a9 28 __ LDA #$28
094c : 65 1c __ ADC ACCU + 1 
094e : 85 48 __ STA T2 + 1 
0950 : a4 45 __ LDY T1 + 0 
0952 : b1 47 __ LDA (T2 + 0),y 
0954 : c9 01 __ CMP #$01
0956 : f0 9d __ BEQ $08f5 ; (main.l8 + 0)
.s12:
0958 : 8c 34 2c STY $2c34 ; (py + 0)
095b : a6 46 __ LDX T1 + 1 
095d : 8e 35 2c STX $2c35 ; (py + 1)
0960 : a6 43 __ LDX T0 + 0 
0962 : 8e 32 2c STX $2c32 ; (px + 0)
0965 : a2 00 __ LDX #$00
0967 : 8e 33 2c STX $2c33 ; (px + 1)
096a : c9 02 __ CMP #$02
096c : d0 1f __ BNE $098d ; (main.s13 + 0)
.s23:
096e : 8a __ __ TXA
096f : 91 47 __ STA (T2 + 0),y 
0971 : ad 42 28 LDA $2842 ; (sc + 0)
0974 : 69 09 __ ADC #$09
0976 : 8d 42 28 STA $2842 ; (sc + 0)
0979 : 90 04 __ BCC $097f ; (main.s43 + 0)
.s42:
097b : ee 43 28 INC $2843 ; (sc + 1)
097e : 18 __ __ CLC
.s43:
097f : a5 53 __ LDA T3 + 0 
0981 : 69 ff __ ADC #$ff
0983 : 8d 48 28 STA $2848 ; (te + 0)
0986 : a5 54 __ LDA T3 + 1 
0988 : 69 ff __ ADC #$ff
098a : 8d 49 28 STA $2849 ; (te + 1)
.s13:
098d : b1 47 __ LDA (T2 + 0),y 
098f : c9 03 __ CMP #$03
0991 : d0 26 __ BNE $09b9 ; (main.s14 + 0)
.s22:
0993 : 8e 47 28 STX $2847 ; (pm + 1)
0996 : 8a __ __ TXA
0997 : 91 47 __ STA (T2 + 0),y 
0999 : a9 1e __ LDA #$1e
099b : 8d 46 28 STA $2846 ; (pm + 0)
099e : ad 42 28 LDA $2842 ; (sc + 0)
09a1 : 69 31 __ ADC #$31
09a3 : 8d 42 28 STA $2842 ; (sc + 0)
09a6 : 90 04 __ BCC $09ac ; (main.s45 + 0)
.s44:
09a8 : ee 43 28 INC $2843 ; (sc + 1)
09ab : 18 __ __ CLC
.s45:
09ac : ad 48 28 LDA $2848 ; (te + 0)
09af : 69 ff __ ADC #$ff
09b1 : 8d 48 28 STA $2848 ; (te + 0)
09b4 : b0 03 __ BCS $09b9 ; (main.s14 + 0)
.s46:
09b6 : ce 49 28 DEC $2849 ; (te + 1)
.s14:
09b9 : 20 90 1f JSR $1f90 ; (check_collisions.s4 + 0)
09bc : 20 60 20 JSR $2060 ; (update_ghosts.s1 + 0)
09bf : 20 90 1f JSR $1f90 ; (check_collisions.s4 + 0)
09c2 : ad 47 28 LDA $2847 ; (pm + 1)
09c5 : 30 13 __ BMI $09da ; (main.s15 + 0)
.s21:
09c7 : 0d 46 28 ORA $2846 ; (pm + 0)
09ca : f0 0e __ BEQ $09da ; (main.s15 + 0)
.s20:
09cc : ad 46 28 LDA $2846 ; (pm + 0)
09cf : 18 __ __ CLC
09d0 : 69 ff __ ADC #$ff
09d2 : 8d 46 28 STA $2846 ; (pm + 0)
09d5 : b0 03 __ BCS $09da ; (main.s15 + 0)
.s47:
09d7 : ce 47 28 DEC $2847 ; (pm + 1)
.s15:
09da : a5 55 __ LDA T4 + 0 
09dc : 85 0d __ STA P0 
09de : a5 56 __ LDA T4 + 1 
09e0 : 85 0e __ STA P1 
09e2 : a5 57 __ LDA T5 + 0 
09e4 : 85 0f __ STA P2 
09e6 : a5 58 __ LDA T5 + 1 
09e8 : 85 10 __ STA P3 
09ea : 20 7f 1d JSR $1d7f ; (get_v.s4 + 0)
09ed : aa __ __ TAX
09ee : a5 59 __ LDA T6 + 0 
09f0 : 85 0d __ STA P0 
09f2 : a5 5a __ LDA T6 + 1 
09f4 : 85 0e __ STA P1 
09f6 : a5 5b __ LDA T7 + 0 
09f8 : 85 0f __ STA P2 
09fa : a5 5c __ LDA T7 + 1 
09fc : 85 10 __ STA P3 
09fe : a5 57 __ LDA T5 + 0 
0a00 : 0a __ __ ASL
0a01 : 85 1b __ STA ACCU + 0 
0a03 : a5 58 __ LDA T5 + 1 
0a05 : 2a __ __ ROL
0a06 : 06 1b __ ASL ACCU + 0 
0a08 : 2a __ __ ROL
0a09 : a8 __ __ TAY
0a0a : 18 __ __ CLC
0a0b : a5 1b __ LDA ACCU + 0 
0a0d : 65 57 __ ADC T5 + 0 
0a0f : 85 43 __ STA T0 + 0 
0a11 : 98 __ __ TYA
0a12 : 65 58 __ ADC T5 + 1 
0a14 : 06 43 __ ASL T0 + 0 
0a16 : 2a __ __ ROL
0a17 : 06 43 __ ASL T0 + 0 
0a19 : 2a __ __ ROL
0a1a : 06 43 __ ASL T0 + 0 
0a1c : 2a __ __ ROL
0a1d : a8 __ __ TAY
0a1e : 18 __ __ CLC
0a1f : a5 43 __ LDA T0 + 0 
0a21 : 65 55 __ ADC T4 + 0 
0a23 : 85 43 __ STA T0 + 0 
0a25 : 98 __ __ TYA
0a26 : 65 56 __ ADC T4 + 1 
0a28 : 18 __ __ CLC
0a29 : 69 04 __ ADC #$04
0a2b : 85 44 __ STA T0 + 1 
0a2d : 8a __ __ TXA
0a2e : a0 00 __ LDY #$00
0a30 : 91 43 __ STA (T0 + 0),y 
0a32 : 20 7f 1d JSR $1d7f ; (get_v.s4 + 0)
0a35 : aa __ __ TAX
0a36 : a5 5d __ LDA T8 + 0 
0a38 : 85 0d __ STA P0 
0a3a : a5 5e __ LDA T8 + 1 
0a3c : 85 0e __ STA P1 
0a3e : a5 5f __ LDA T9 + 0 
0a40 : 85 0f __ STA P2 
0a42 : a5 60 __ LDA T9 + 1 
0a44 : 85 10 __ STA P3 
0a46 : a5 5b __ LDA T7 + 0 
0a48 : 0a __ __ ASL
0a49 : 85 1b __ STA ACCU + 0 
0a4b : a5 5c __ LDA T7 + 1 
0a4d : 2a __ __ ROL
0a4e : 06 1b __ ASL ACCU + 0 
0a50 : 2a __ __ ROL
0a51 : a8 __ __ TAY
0a52 : 18 __ __ CLC
0a53 : a5 1b __ LDA ACCU + 0 
0a55 : 65 5b __ ADC T7 + 0 
0a57 : 85 43 __ STA T0 + 0 
0a59 : 98 __ __ TYA
0a5a : 65 5c __ ADC T7 + 1 
0a5c : 06 43 __ ASL T0 + 0 
0a5e : 2a __ __ ROL
0a5f : 06 43 __ ASL T0 + 0 
0a61 : 2a __ __ ROL
0a62 : 06 43 __ ASL T0 + 0 
0a64 : 2a __ __ ROL
0a65 : a8 __ __ TAY
0a66 : 18 __ __ CLC
0a67 : a5 43 __ LDA T0 + 0 
0a69 : 65 59 __ ADC T6 + 0 
0a6b : 85 43 __ STA T0 + 0 
0a6d : 98 __ __ TYA
0a6e : 65 5a __ ADC T6 + 1 
0a70 : 18 __ __ CLC
0a71 : 69 04 __ ADC #$04
0a73 : 85 44 __ STA T0 + 1 
0a75 : 8a __ __ TXA
0a76 : a0 00 __ LDY #$00
0a78 : 91 43 __ STA (T0 + 0),y 
0a7a : 20 7f 1d JSR $1d7f ; (get_v.s4 + 0)
0a7d : aa __ __ TAX
0a7e : a5 0f __ LDA P2 
0a80 : 0a __ __ ASL
0a81 : 85 1b __ STA ACCU + 0 
0a83 : a5 10 __ LDA P3 
0a85 : 2a __ __ ROL
0a86 : 06 1b __ ASL ACCU + 0 
0a88 : 2a __ __ ROL
0a89 : a8 __ __ TAY
0a8a : 18 __ __ CLC
0a8b : a5 1b __ LDA ACCU + 0 
0a8d : 65 0f __ ADC P2 
0a8f : 85 43 __ STA T0 + 0 
0a91 : 98 __ __ TYA
0a92 : 65 10 __ ADC P3 
0a94 : 06 43 __ ASL T0 + 0 
0a96 : 2a __ __ ROL
0a97 : 06 43 __ ASL T0 + 0 
0a99 : 2a __ __ ROL
0a9a : 06 43 __ ASL T0 + 0 
0a9c : 2a __ __ ROL
0a9d : a8 __ __ TAY
0a9e : 18 __ __ CLC
0a9f : a5 43 __ LDA T0 + 0 
0aa1 : 65 0d __ ADC P0 
0aa3 : 85 43 __ STA T0 + 0 
0aa5 : 98 __ __ TYA
0aa6 : 65 0e __ ADC P1 
0aa8 : 18 __ __ CLC
0aa9 : 69 04 __ ADC #$04
0aab : 85 44 __ STA T0 + 1 
0aad : 8a __ __ TXA
0aae : a0 00 __ LDY #$00
0ab0 : 91 43 __ STA (T0 + 0),y 
0ab2 : ad 34 2c LDA $2c34 ; (py + 0)
0ab5 : 0a __ __ ASL
0ab6 : 85 07 __ STA WORK + 4 
0ab8 : ad 35 2c LDA $2c35 ; (py + 1)
0abb : 2a __ __ ROL
0abc : 06 07 __ ASL WORK + 4 
0abe : 2a __ __ ROL
0abf : aa __ __ TAX
0ac0 : 18 __ __ CLC
0ac1 : a5 07 __ LDA WORK + 4 
0ac3 : 6d 34 2c ADC $2c34 ; (py + 0)
0ac6 : 85 1b __ STA ACCU + 0 
0ac8 : 8a __ __ TXA
0ac9 : 6d 35 2c ADC $2c35 ; (py + 1)
0acc : 06 1b __ ASL ACCU + 0 
0ace : 2a __ __ ROL
0acf : 06 1b __ ASL ACCU + 0 
0ad1 : 2a __ __ ROL
0ad2 : 06 1b __ ASL ACCU + 0 
0ad4 : 2a __ __ ROL
0ad5 : aa __ __ TAX
0ad6 : ad 32 2c LDA $2c32 ; (px + 0)
0ad9 : 18 __ __ CLC
0ada : 65 1b __ ADC ACCU + 0 
0adc : 85 43 __ STA T0 + 0 
0ade : 8a __ __ TXA
0adf : 6d 33 2c ADC $2c33 ; (px + 1)
0ae2 : 18 __ __ CLC
0ae3 : 69 04 __ ADC #$04
0ae5 : 85 44 __ STA T0 + 1 
0ae7 : ad 4a 28 LDA $284a ; (p_sprite + 0)
0aea : 91 43 __ STA (T0 + 0),y 
0aec : ad 3a 2c LDA $2c3a ; (gy[0] + 0)
0aef : 0a __ __ ASL
0af0 : 85 07 __ STA WORK + 4 
0af2 : ad 3b 2c LDA $2c3b ; (gy[0] + 1)
0af5 : 2a __ __ ROL
0af6 : 06 07 __ ASL WORK + 4 
0af8 : 2a __ __ ROL
0af9 : aa __ __ TAX
0afa : 18 __ __ CLC
0afb : a5 07 __ LDA WORK + 4 
0afd : 6d 3a 2c ADC $2c3a ; (gy[0] + 0)
0b00 : 85 1b __ STA ACCU + 0 
0b02 : 8a __ __ TXA
0b03 : 6d 3b 2c ADC $2c3b ; (gy[0] + 1)
0b06 : 06 1b __ ASL ACCU + 0 
0b08 : 2a __ __ ROL
0b09 : 06 1b __ ASL ACCU + 0 
0b0b : 2a __ __ ROL
0b0c : 06 1b __ ASL ACCU + 0 
0b0e : 2a __ __ ROL
0b0f : aa __ __ TAX
0b10 : ad 36 2c LDA $2c36 ; (gx[0] + 0)
0b13 : 18 __ __ CLC
0b14 : 65 1b __ ADC ACCU + 0 
0b16 : 85 43 __ STA T0 + 0 
0b18 : 8a __ __ TXA
0b19 : 6d 37 2c ADC $2c37 ; (gx[0] + 1)
0b1c : 18 __ __ CLC
0b1d : 69 04 __ ADC #$04
0b1f : 85 44 __ STA T0 + 1 
0b21 : ad 47 28 LDA $2847 ; (pm + 1)
0b24 : 30 0b __ BMI $0b31 ; (main.s16 + 0)
.s19:
0b26 : 0d 46 28 ORA $2846 ; (pm + 0)
0b29 : f0 06 __ BEQ $0b31 ; (main.s16 + 0)
.s18:
0b2b : a9 66 __ LDA #$66
0b2d : 91 43 __ STA (T0 + 0),y 
0b2f : d0 06 __ BNE $0b37 ; (main.s17 + 0)
.s16:
0b31 : a9 a1 __ LDA #$a1
0b33 : 91 43 __ STA (T0 + 0),y 
0b35 : a9 a2 __ LDA #$a2
.s17:
0b37 : 85 43 __ STA T0 + 0 
0b39 : ad 3c 2c LDA $2c3c ; (gy[0] + 2)
0b3c : 0a __ __ ASL
0b3d : 85 07 __ STA WORK + 4 
0b3f : ad 3d 2c LDA $2c3d ; (gy[0] + 3)
0b42 : 2a __ __ ROL
0b43 : 06 07 __ ASL WORK + 4 
0b45 : 2a __ __ ROL
0b46 : aa __ __ TAX
0b47 : 18 __ __ CLC
0b48 : a5 07 __ LDA WORK + 4 
0b4a : 6d 3c 2c ADC $2c3c ; (gy[0] + 2)
0b4d : 85 1b __ STA ACCU + 0 
0b4f : 8a __ __ TXA
0b50 : 6d 3d 2c ADC $2c3d ; (gy[0] + 3)
0b53 : 06 1b __ ASL ACCU + 0 
0b55 : 2a __ __ ROL
0b56 : 06 1b __ ASL ACCU + 0 
0b58 : 2a __ __ ROL
0b59 : 06 1b __ ASL ACCU + 0 
0b5b : 2a __ __ ROL
0b5c : aa __ __ TAX
0b5d : ad 38 2c LDA $2c38 ; (gx[0] + 2)
0b60 : 18 __ __ CLC
0b61 : 65 1b __ ADC ACCU + 0 
0b63 : 85 45 __ STA T1 + 0 
0b65 : 8a __ __ TXA
0b66 : 6d 39 2c ADC $2c39 ; (gx[0] + 3)
0b69 : 18 __ __ CLC
0b6a : 69 04 __ ADC #$04
0b6c : 85 46 __ STA T1 + 1 
0b6e : a5 43 __ LDA T0 + 0 
0b70 : 91 45 __ STA (T1 + 0),y 
0b72 : 20 b5 1d JSR $1db5 ; (draw_hud.s4 + 0)
0b75 : a9 08 __ LDA #$08
0b77 : 85 0d __ STA P0 
0b79 : a9 00 __ LDA #$00
0b7b : 85 0e __ STA P1 
0b7d : 20 db 22 JSR $22db ; (wait_frames.s4 + 0)
0b80 : 4c 8d 08 JMP $088d ; (main.l5 + 0)
.s26:
0b83 : 8a __ __ TXA
0b84 : 29 04 __ AND #$04
0b86 : f0 11 __ BEQ $0b99 ; (main.s27 + 0)
.s29:
0b88 : 8a __ __ TXA
0b89 : 29 08 __ AND #$08
0b8b : f0 03 __ BEQ $0b90 ; (main.s30 + 0)
0b8d : 4c f5 08 JMP $08f5 ; (main.l8 + 0)
.s30:
0b90 : a9 01 __ LDA #$01
.s28:
0b92 : 85 43 __ STA T0 + 0 
0b94 : a9 00 __ LDA #$00
0b96 : 4c 0b 09 JMP $090b ; (main.s41 + 0)
.s27:
0b99 : a9 ff __ LDA #$ff
0b9b : d0 f5 __ BNE $0b92 ; (main.s28 + 0)
.s31:
0b9d : 20 52 1f JSR $1f52 ; (getch.l4 + 0)
0ba0 : c9 77 __ CMP #$77
0ba2 : d0 03 __ BNE $0ba7 ; (main.s32 + 0)
0ba4 : 4c 05 09 JMP $0905 ; (main.s10 + 0)
.s32:
0ba7 : c9 57 __ CMP #$57
0ba9 : f0 f9 __ BEQ $0ba4 ; (main.s31 + 7)
.s33:
0bab : c9 73 __ CMP #$73
0bad : d0 03 __ BNE $0bb2 ; (main.s34 + 0)
0baf : 4c 1a 09 JMP $091a ; (main.s25 + 0)
.s34:
0bb2 : c9 53 __ CMP #$53
0bb4 : f0 f9 __ BEQ $0baf ; (main.s33 + 4)
.s35:
0bb6 : c9 61 __ CMP #$61
0bb8 : f0 df __ BEQ $0b99 ; (main.s27 + 0)
.s36:
0bba : c9 41 __ CMP #$41
0bbc : f0 db __ BEQ $0b99 ; (main.s27 + 0)
.s37:
0bbe : c9 64 __ CMP #$64
0bc0 : f0 ce __ BEQ $0b90 ; (main.s30 + 0)
.s38:
0bc2 : c9 44 __ CMP #$44
0bc4 : f0 ca __ BEQ $0b90 ; (main.s30 + 0)
0bc6 : 4c f5 08 JMP $08f5 ; (main.l8 + 0)
.s39:
0bc9 : 85 13 __ STA P6 
0bcb : 85 15 __ STA P8 
0bcd : a9 0f __ LDA #$0f
0bcf : 85 12 __ STA P5 
0bd1 : a9 0e __ LDA #$0e
0bd3 : 85 14 __ STA P7 
0bd5 : a9 1f __ LDA #$1f
0bd7 : a2 40 __ LDX #$40
.s3:
0bd9 : 86 16 __ STX P9 
0bdb : 85 17 __ STA P10 
0bdd : 20 7d 1e JSR $1e7d ; (draw_text.s4 + 0)
0be0 : a9 00 __ LDA #$00
0be2 : 85 1b __ STA ACCU + 0 
0be4 : 85 1c __ STA ACCU + 1 
0be6 : a2 0d __ LDX #$0d
0be8 : bd 82 9f LDA $9f82,x ; (main@stack + 0)
0beb : 95 53 __ STA T3 + 0,x 
0bed : ca __ __ DEX
0bee : 10 f8 __ BPL $0be8 ; (main.s3 + 15)
0bf0 : 60 __ __ RTS
--------------------------------------------------------------------
init: ; init()->void
;  81, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64fullscreenmaze.c"
.s1:
0bf1 : a2 06 __ LDX #$06
0bf3 : b5 53 __ LDA T1 + 0,x 
0bf5 : 9d 90 9f STA $9f90,x ; (init@stack + 0)
0bf8 : ca __ __ DEX
0bf9 : 10 f8 __ BPL $0bf3 ; (init.s1 + 2)
.s4:
0bfb : a9 00 __ LDA #$00
0bfd : 8d 48 28 STA $2848 ; (te + 0)
0c00 : 8d 49 28 STA $2849 ; (te + 1)
0c03 : 8d 46 28 STA $2846 ; (pm + 0)
0c06 : 8d 47 28 STA $2847 ; (pm + 1)
0c09 : 8d 45 28 STA $2845 ; (li + 1)
0c0c : 8d 42 28 STA $2842 ; (sc + 0)
0c0f : 8d 43 28 STA $2843 ; (sc + 1)
0c12 : a9 39 __ LDA #$39
0c14 : 8d 4b 28 STA $284b ; (seed + 0)
0c17 : a9 30 __ LDA #$30
0c19 : 8d 4c 28 STA $284c ; (seed + 1)
0c1c : a9 51 __ LDA #$51
0c1e : 8d 4a 28 STA $284a ; (p_sprite + 0)
0c21 : a9 03 __ LDA #$03
0c23 : 8d 44 28 STA $2844 ; (li + 0)
0c26 : a9 ce __ LDA #$ce
0c28 : 8d f6 9f STA $9ff6 ; (sstack + 8)
0c2b : a9 19 __ LDA #$19
0c2d : 8d f7 9f STA $9ff7 ; (sstack + 9)
0c30 : 20 12 0d JSR $0d12 ; (printf.s4 + 0)
0c33 : a9 04 __ LDA #$04
0c35 : 85 55 __ STA T2 + 1 
0c37 : a9 00 __ LDA #$00
0c39 : 85 53 __ STA T1 + 0 
0c3b : 85 54 __ STA T2 + 0 
0c3d : 85 0e __ STA P1 
0c3f : 85 10 __ STA P3 
.l5:
0c41 : 0a __ __ ASL
0c42 : 85 56 __ STA T3 + 0 
0c44 : a9 9a __ LDA #$9a
0c46 : 85 58 __ STA T5 + 0 
0c48 : a9 28 __ LDA #$28
0c4a : 85 59 __ STA T5 + 1 
0c4c : a0 00 __ LDY #$00
.l6:
0c4e : 84 57 __ STY T4 + 0 
0c50 : 84 0d __ STY P0 
0c52 : a6 56 __ LDX T3 + 0 
0c54 : bd 6a 28 LDA $286a,x ; (map_data[0] + 0)
0c57 : 85 43 __ STA T0 + 0 
0c59 : bd 6b 28 LDA $286b,x ; (map_data[0] + 1)
0c5c : 85 44 __ STA T0 + 1 
0c5e : b1 43 __ LDA (T0 + 0),y 
0c60 : aa __ __ TAX
0c61 : a9 00 __ LDA #$00
0c63 : a4 53 __ LDY T1 + 0 
0c65 : 91 58 __ STA (T5 + 0),y 
0c67 : 8a __ __ TXA
0c68 : e0 23 __ CPX #$23
0c6a : d0 06 __ BNE $0c72 ; (init.s7 + 0)
.s21:
0c6c : a9 01 __ LDA #$01
0c6e : 91 58 __ STA (T5 + 0),y 
0c70 : d0 54 __ BNE $0cc6 ; (init.s12 + 0)
.s7:
0c72 : c9 6f __ CMP #$6f
0c74 : d0 05 __ BNE $0c7b ; (init.s8 + 0)
.s20:
0c76 : a9 02 __ LDA #$02
0c78 : 4c 05 0d JMP $0d05 ; (init.s19 + 0)
.s8:
0c7b : c9 78 __ CMP #$78
0c7d : d0 05 __ BNE $0c84 ; (init.s9 + 0)
.s18:
0c7f : a9 03 __ LDA #$03
0c81 : 4c 05 0d JMP $0d05 ; (init.s19 + 0)
.s9:
0c84 : c9 5e __ CMP #$5e
0c86 : d0 13 __ BNE $0c9b ; (init.s10 + 0)
.s17:
0c88 : 8c 34 2c STY $2c34 ; (py + 0)
0c8b : a9 00 __ LDA #$00
0c8d : 8d 35 2c STA $2c35 ; (py + 1)
0c90 : 8d 33 2c STA $2c33 ; (px + 1)
0c93 : a5 57 __ LDA T4 + 0 
0c95 : 8d 32 2c STA $2c32 ; (px + 0)
0c98 : 4c c6 0c JMP $0cc6 ; (init.s12 + 0)
.s10:
0c9b : c9 6d __ CMP #$6d
0c9d : d0 13 __ BNE $0cb2 ; (init.s11 + 0)
.s16:
0c9f : 8c 3a 2c STY $2c3a ; (gy[0] + 0)
0ca2 : a9 00 __ LDA #$00
0ca4 : 8d 3b 2c STA $2c3b ; (gy[0] + 1)
0ca7 : 8d 37 2c STA $2c37 ; (gx[0] + 1)
0caa : a5 57 __ LDA T4 + 0 
0cac : 8d 36 2c STA $2c36 ; (gx[0] + 0)
0caf : 4c c6 0c JMP $0cc6 ; (init.s12 + 0)
.s11:
0cb2 : c9 77 __ CMP #$77
0cb4 : d0 10 __ BNE $0cc6 ; (init.s12 + 0)
.s15:
0cb6 : 8c 3c 2c STY $2c3c ; (gy[0] + 2)
0cb9 : a9 00 __ LDA #$00
0cbb : 8d 3d 2c STA $2c3d ; (gy[0] + 3)
0cbe : 8d 39 2c STA $2c39 ; (gx[0] + 3)
0cc1 : a5 57 __ LDA T4 + 0 
0cc3 : 8d 38 2c STA $2c38 ; (gx[0] + 2)
.s12:
0cc6 : 84 0f __ STY P2 
0cc8 : 20 7f 1d JSR $1d7f ; (get_v.s4 + 0)
0ccb : a4 57 __ LDY T4 + 0 
0ccd : 91 54 __ STA (T2 + 0),y 
0ccf : 18 __ __ CLC
0cd0 : a5 58 __ LDA T5 + 0 
0cd2 : 69 17 __ ADC #$17
0cd4 : 85 58 __ STA T5 + 0 
0cd6 : 90 02 __ BCC $0cda ; (init.s23 + 0)
.s22:
0cd8 : e6 59 __ INC T5 + 1 
.s23:
0cda : c8 __ __ INY
0cdb : c0 28 __ CPY #$28
0cdd : b0 03 __ BCS $0ce2 ; (init.s13 + 0)
0cdf : 4c 4e 0c JMP $0c4e ; (init.l6 + 0)
.s13:
0ce2 : a5 54 __ LDA T2 + 0 
0ce4 : 69 27 __ ADC #$27
0ce6 : 85 54 __ STA T2 + 0 
0ce8 : 90 02 __ BCC $0cec ; (init.s25 + 0)
.s24:
0cea : e6 55 __ INC T2 + 1 
.s25:
0cec : e6 53 __ INC T1 + 0 
0cee : a5 53 __ LDA T1 + 0 
0cf0 : c9 17 __ CMP #$17
0cf2 : b0 03 __ BCS $0cf7 ; (init.s14 + 0)
0cf4 : 4c 41 0c JMP $0c41 ; (init.l5 + 0)
.s14:
0cf7 : 20 b5 1d JSR $1db5 ; (draw_hud.s4 + 0)
.s3:
0cfa : a2 06 __ LDX #$06
0cfc : bd 90 9f LDA $9f90,x ; (init@stack + 0)
0cff : 95 53 __ STA T1 + 0,x 
0d01 : ca __ __ DEX
0d02 : 10 f8 __ BPL $0cfc ; (init.s3 + 2)
0d04 : 60 __ __ RTS
.s19:
0d05 : 91 58 __ STA (T5 + 0),y 
0d07 : ee 48 28 INC $2848 ; (te + 0)
0d0a : d0 ba __ BNE $0cc6 ; (init.s12 + 0)
.s26:
0d0c : ee 49 28 INC $2849 ; (te + 1)
0d0f : 4c c6 0c JMP $0cc6 ; (init.s12 + 0)
--------------------------------------------------------------------
printf: ; printf(const u8*)->void
;  18, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.s4:
0d12 : a9 01 __ LDA #$01
0d14 : 8d f5 9f STA $9ff5 ; (sstack + 7)
0d17 : a9 9a __ LDA #$9a
0d19 : 8d ef 9f STA $9fef ; (sstack + 1)
0d1c : a9 9f __ LDA #$9f
0d1e : 8d f0 9f STA $9ff0 ; (sstack + 2)
0d21 : ad f6 9f LDA $9ff6 ; (sstack + 8)
0d24 : 8d f1 9f STA $9ff1 ; (sstack + 3)
0d27 : ad f7 9f LDA $9ff7 ; (sstack + 9)
0d2a : 8d f2 9f STA $9ff2 ; (sstack + 4)
0d2d : a9 f8 __ LDA #$f8
0d2f : 8d f3 9f STA $9ff3 ; (sstack + 5)
0d32 : a9 9f __ LDA #$9f
0d34 : 8d f4 9f STA $9ff4 ; (sstack + 6)
0d37 : 4c 3a 0d JMP $0d3a ; (sformat.s1 + 0)
--------------------------------------------------------------------
sformat: ; sformat(u8*,const u8*,i16*,bool)->u8*
; 351, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s1:
0d3a : a2 09 __ LDX #$09
0d3c : b5 53 __ LDA T1 + 0,x 
0d3e : 9d cc 9f STA $9fcc,x ; (sformat@stack + 0)
0d41 : ca __ __ DEX
0d42 : 10 f8 __ BPL $0d3c ; (sformat.s1 + 2)
.s4:
0d44 : ad f1 9f LDA $9ff1 ; (sstack + 3)
0d47 : 85 55 __ STA T3 + 0 
0d49 : a9 00 __ LDA #$00
0d4b : 85 5b __ STA T6 + 0 
0d4d : ad f2 9f LDA $9ff2 ; (sstack + 4)
0d50 : 85 56 __ STA T3 + 1 
0d52 : ad ef 9f LDA $9fef ; (sstack + 1)
0d55 : 85 57 __ STA T4 + 0 
0d57 : ad f0 9f LDA $9ff0 ; (sstack + 2)
0d5a : 85 58 __ STA T4 + 1 
.l5:
0d5c : a0 00 __ LDY #$00
0d5e : b1 55 __ LDA (T3 + 0),y 
0d60 : d0 36 __ BNE $0d98 ; (sformat.s10 + 0)
.s6:
0d62 : a4 5b __ LDY T6 + 0 
0d64 : 91 57 __ STA (T4 + 0),y 
0d66 : 98 __ __ TYA
0d67 : f0 28 __ BEQ $0d91 ; (sformat.s95 + 0)
.s7:
0d69 : ad f5 9f LDA $9ff5 ; (sstack + 7)
0d6c : d0 18 __ BNE $0d86 ; (sformat.s9 + 0)
.s8:
0d6e : 98 __ __ TYA
0d6f : 18 __ __ CLC
0d70 : 65 57 __ ADC T4 + 0 
0d72 : aa __ __ TAX
0d73 : a5 58 __ LDA T4 + 1 
0d75 : 69 00 __ ADC #$00
.s3:
0d77 : 86 1b __ STX ACCU + 0 ; (buff + 1)
0d79 : 85 1c __ STA ACCU + 1 ; (fmt + 0)
0d7b : a2 09 __ LDX #$09
0d7d : bd cc 9f LDA $9fcc,x ; (sformat@stack + 0)
0d80 : 95 53 __ STA T1 + 0,x 
0d82 : ca __ __ DEX
0d83 : 10 f8 __ BPL $0d7d ; (sformat.s3 + 6)
0d85 : 60 __ __ RTS
.s9:
0d86 : a5 57 __ LDA T4 + 0 
0d88 : 85 0e __ STA P1 
0d8a : a5 58 __ LDA T4 + 1 
0d8c : 85 0f __ STA P2 
0d8e : 20 7d 11 JSR $117d ; (puts.l4 + 0)
.s95:
0d91 : a5 58 __ LDA T4 + 1 
0d93 : a6 57 __ LDX T4 + 0 
0d95 : 4c 77 0d JMP $0d77 ; (sformat.s3 + 0)
.s10:
0d98 : c9 25 __ CMP #$25
0d9a : f0 3e __ BEQ $0dda ; (sformat.s15 + 0)
.s11:
0d9c : a4 5b __ LDY T6 + 0 
0d9e : 91 57 __ STA (T4 + 0),y 
0da0 : e6 55 __ INC T3 + 0 
0da2 : d0 02 __ BNE $0da6 ; (sformat.s117 + 0)
.s116:
0da4 : e6 56 __ INC T3 + 1 
.s117:
0da6 : c8 __ __ INY
0da7 : 84 5b __ STY T6 + 0 
0da9 : 98 __ __ TYA
0daa : c0 28 __ CPY #$28
0dac : 90 ae __ BCC $0d5c ; (sformat.l5 + 0)
.s12:
0dae : 85 43 __ STA T0 + 0 
0db0 : a9 00 __ LDA #$00
0db2 : 85 5b __ STA T6 + 0 
0db4 : ad f5 9f LDA $9ff5 ; (sstack + 7)
0db7 : f0 14 __ BEQ $0dcd ; (sformat.s13 + 0)
.s14:
0db9 : a5 57 __ LDA T4 + 0 
0dbb : 85 0e __ STA P1 
0dbd : a5 58 __ LDA T4 + 1 
0dbf : 85 0f __ STA P2 
0dc1 : a9 00 __ LDA #$00
0dc3 : a4 43 __ LDY T0 + 0 
0dc5 : 91 0e __ STA (P1),y 
0dc7 : 20 7d 11 JSR $117d ; (puts.l4 + 0)
0dca : 4c 5c 0d JMP $0d5c ; (sformat.l5 + 0)
.s13:
0dcd : 18 __ __ CLC
0dce : a5 57 __ LDA T4 + 0 
0dd0 : 65 43 __ ADC T0 + 0 
0dd2 : 85 57 __ STA T4 + 0 
0dd4 : 90 86 __ BCC $0d5c ; (sformat.l5 + 0)
.s118:
0dd6 : e6 58 __ INC T4 + 1 
0dd8 : b0 82 __ BCS $0d5c ; (sformat.l5 + 0)
.s15:
0dda : a5 5b __ LDA T6 + 0 
0ddc : f0 27 __ BEQ $0e05 ; (sformat.s16 + 0)
.s89:
0dde : 84 5b __ STY T6 + 0 
0de0 : 85 43 __ STA T0 + 0 
0de2 : ad f5 9f LDA $9ff5 ; (sstack + 7)
0de5 : f0 13 __ BEQ $0dfa ; (sformat.s90 + 0)
.s91:
0de7 : a5 57 __ LDA T4 + 0 
0de9 : 85 0e __ STA P1 
0deb : a5 58 __ LDA T4 + 1 
0ded : 85 0f __ STA P2 
0def : 98 __ __ TYA
0df0 : a4 43 __ LDY T0 + 0 
0df2 : 91 0e __ STA (P1),y 
0df4 : 20 7d 11 JSR $117d ; (puts.l4 + 0)
0df7 : 4c 05 0e JMP $0e05 ; (sformat.s16 + 0)
.s90:
0dfa : 18 __ __ CLC
0dfb : a5 57 __ LDA T4 + 0 
0dfd : 65 43 __ ADC T0 + 0 
0dff : 85 57 __ STA T4 + 0 
0e01 : 90 02 __ BCC $0e05 ; (sformat.s16 + 0)
.s115:
0e03 : e6 58 __ INC T4 + 1 
.s16:
0e05 : a9 00 __ LDA #$00
0e07 : 8d db 9f STA $9fdb ; (si.sign + 0)
0e0a : 8d dc 9f STA $9fdc ; (si.left + 0)
0e0d : 8d dd 9f STA $9fdd ; (si.prefix + 0)
0e10 : a0 01 __ LDY #$01
0e12 : b1 55 __ LDA (T3 + 0),y 
0e14 : a2 20 __ LDX #$20
0e16 : 8e d6 9f STX $9fd6 ; (si.fill + 0)
0e19 : a2 00 __ LDX #$00
0e1b : 8e d7 9f STX $9fd7 ; (si.width + 0)
0e1e : ca __ __ DEX
0e1f : 8e d8 9f STX $9fd8 ; (si.precision + 0)
0e22 : a2 0a __ LDX #$0a
0e24 : 8e da 9f STX $9fda ; (si.base + 0)
0e27 : aa __ __ TAX
0e28 : a9 02 __ LDA #$02
0e2a : d0 07 __ BNE $0e33 ; (sformat.l17 + 0)
.s85:
0e2c : a0 00 __ LDY #$00
0e2e : b1 55 __ LDA (T3 + 0),y 
0e30 : aa __ __ TAX
0e31 : a9 01 __ LDA #$01
.l17:
0e33 : 18 __ __ CLC
0e34 : 65 55 __ ADC T3 + 0 
0e36 : 85 55 __ STA T3 + 0 
0e38 : 90 02 __ BCC $0e3c ; (sformat.s106 + 0)
.s105:
0e3a : e6 56 __ INC T3 + 1 
.s106:
0e3c : 8a __ __ TXA
0e3d : e0 2b __ CPX #$2b
0e3f : d0 07 __ BNE $0e48 ; (sformat.s18 + 0)
.s88:
0e41 : a9 01 __ LDA #$01
0e43 : 8d db 9f STA $9fdb ; (si.sign + 0)
0e46 : d0 e4 __ BNE $0e2c ; (sformat.s85 + 0)
.s18:
0e48 : c9 30 __ CMP #$30
0e4a : d0 06 __ BNE $0e52 ; (sformat.s19 + 0)
.s87:
0e4c : 8d d6 9f STA $9fd6 ; (si.fill + 0)
0e4f : 4c 2c 0e JMP $0e2c ; (sformat.s85 + 0)
.s19:
0e52 : c9 23 __ CMP #$23
0e54 : d0 07 __ BNE $0e5d ; (sformat.s20 + 0)
.s86:
0e56 : a9 01 __ LDA #$01
0e58 : 8d dd 9f STA $9fdd ; (si.prefix + 0)
0e5b : d0 cf __ BNE $0e2c ; (sformat.s85 + 0)
.s20:
0e5d : c9 2d __ CMP #$2d
0e5f : d0 07 __ BNE $0e68 ; (sformat.s21 + 0)
.s84:
0e61 : a9 01 __ LDA #$01
0e63 : 8d dc 9f STA $9fdc ; (si.left + 0)
0e66 : d0 c4 __ BNE $0e2c ; (sformat.s85 + 0)
.s21:
0e68 : 85 47 __ STA T2 + 0 
0e6a : c9 30 __ CMP #$30
0e6c : 90 40 __ BCC $0eae ; (sformat.s22 + 0)
.s80:
0e6e : c9 3a __ CMP #$3a
0e70 : b0 7b __ BCS $0eed ; (sformat.s23 + 0)
.s81:
0e72 : a0 00 __ LDY #$00
0e74 : 84 43 __ STY T0 + 0 
0e76 : c9 3a __ CMP #$3a
0e78 : a6 1c __ LDX ACCU + 1 ; (fmt + 0)
0e7a : b0 2b __ BCS $0ea7 ; (sformat.s104 + 0)
.l83:
0e7c : a5 43 __ LDA T0 + 0 
0e7e : 0a __ __ ASL
0e7f : 85 1b __ STA ACCU + 0 ; (buff + 1)
0e81 : 98 __ __ TYA
0e82 : 2a __ __ ROL
0e83 : 06 1b __ ASL ACCU + 0 ; (buff + 1)
0e85 : 2a __ __ ROL
0e86 : aa __ __ TAX
0e87 : 18 __ __ CLC
0e88 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0e8a : 65 43 __ ADC T0 + 0 
0e8c : 0a __ __ ASL
0e8d : 18 __ __ CLC
0e8e : 65 47 __ ADC T2 + 0 
0e90 : 38 __ __ SEC
0e91 : e9 30 __ SBC #$30
0e93 : 85 43 __ STA T0 + 0 
0e95 : b1 55 __ LDA (T3 + 0),y 
0e97 : 85 47 __ STA T2 + 0 
0e99 : e6 55 __ INC T3 + 0 
0e9b : d0 02 __ BNE $0e9f ; (sformat.s114 + 0)
.s113:
0e9d : e6 56 __ INC T3 + 1 
.s114:
0e9f : c9 30 __ CMP #$30
0ea1 : 90 04 __ BCC $0ea7 ; (sformat.s104 + 0)
.s82:
0ea3 : c9 3a __ CMP #$3a
0ea5 : 90 d5 __ BCC $0e7c ; (sformat.l83 + 0)
.s104:
0ea7 : 86 1c __ STX ACCU + 1 ; (fmt + 0)
0ea9 : a6 43 __ LDX T0 + 0 
0eab : 8e d7 9f STX $9fd7 ; (si.width + 0)
.s22:
0eae : c9 2e __ CMP #$2e
0eb0 : d0 3b __ BNE $0eed ; (sformat.s23 + 0)
.s76:
0eb2 : a9 00 __ LDA #$00
0eb4 : a6 1c __ LDX ACCU + 1 ; (fmt + 0)
0eb6 : 4c d0 0e JMP $0ed0 ; (sformat.l77 + 0)
.s79:
0eb9 : a5 43 __ LDA T0 + 0 
0ebb : 0a __ __ ASL
0ebc : 85 1b __ STA ACCU + 0 ; (buff + 1)
0ebe : 98 __ __ TYA
0ebf : 2a __ __ ROL
0ec0 : 06 1b __ ASL ACCU + 0 ; (buff + 1)
0ec2 : 2a __ __ ROL
0ec3 : aa __ __ TAX
0ec4 : 18 __ __ CLC
0ec5 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0ec7 : 65 43 __ ADC T0 + 0 
0ec9 : 0a __ __ ASL
0eca : 18 __ __ CLC
0ecb : 65 47 __ ADC T2 + 0 
0ecd : 38 __ __ SEC
0ece : e9 30 __ SBC #$30
.l77:
0ed0 : 85 43 __ STA T0 + 0 
0ed2 : a0 00 __ LDY #$00
0ed4 : b1 55 __ LDA (T3 + 0),y 
0ed6 : 85 47 __ STA T2 + 0 
0ed8 : e6 55 __ INC T3 + 0 
0eda : d0 02 __ BNE $0ede ; (sformat.s108 + 0)
.s107:
0edc : e6 56 __ INC T3 + 1 
.s108:
0ede : c9 30 __ CMP #$30
0ee0 : 90 04 __ BCC $0ee6 ; (sformat.s103 + 0)
.s78:
0ee2 : c9 3a __ CMP #$3a
0ee4 : 90 d3 __ BCC $0eb9 ; (sformat.s79 + 0)
.s103:
0ee6 : 86 1c __ STX ACCU + 1 ; (fmt + 0)
0ee8 : a6 43 __ LDX T0 + 0 
0eea : 8e d8 9f STX $9fd8 ; (si.precision + 0)
.s23:
0eed : c9 64 __ CMP #$64
0eef : f0 0c __ BEQ $0efd ; (sformat.s75 + 0)
.s24:
0ef1 : c9 44 __ CMP #$44
0ef3 : f0 08 __ BEQ $0efd ; (sformat.s75 + 0)
.s25:
0ef5 : c9 69 __ CMP #$69
0ef7 : f0 04 __ BEQ $0efd ; (sformat.s75 + 0)
.s26:
0ef9 : c9 49 __ CMP #$49
0efb : d0 07 __ BNE $0f04 ; (sformat.s27 + 0)
.s75:
0efd : a9 01 __ LDA #$01
.s93:
0eff : 85 13 __ STA P6 
0f01 : 4c 43 11 JMP $1143 ; (sformat.s73 + 0)
.s27:
0f04 : c9 75 __ CMP #$75
0f06 : f0 04 __ BEQ $0f0c ; (sformat.s74 + 0)
.s28:
0f08 : c9 55 __ CMP #$55
0f0a : d0 04 __ BNE $0f10 ; (sformat.s29 + 0)
.s74:
0f0c : a9 00 __ LDA #$00
0f0e : f0 ef __ BEQ $0eff ; (sformat.s93 + 0)
.s29:
0f10 : c9 78 __ CMP #$78
0f12 : f0 04 __ BEQ $0f18 ; (sformat.s72 + 0)
.s30:
0f14 : c9 58 __ CMP #$58
0f16 : d0 13 __ BNE $0f2b ; (sformat.s31 + 0)
.s72:
0f18 : 29 e0 __ AND #$e0
0f1a : 09 01 __ ORA #$01
0f1c : 8d d9 9f STA $9fd9 ; (si.cha + 0)
0f1f : a9 00 __ LDA #$00
0f21 : 85 13 __ STA P6 
0f23 : a9 10 __ LDA #$10
0f25 : 8d da 9f STA $9fda ; (si.base + 0)
0f28 : 4c 43 11 JMP $1143 ; (sformat.s73 + 0)
.s31:
0f2b : c9 6c __ CMP #$6c
0f2d : d0 03 __ BNE $0f32 ; (sformat.s32 + 0)
0f2f : 4c b4 10 JMP $10b4 ; (sformat.s60 + 0)
.s32:
0f32 : c9 4c __ CMP #$4c
0f34 : f0 f9 __ BEQ $0f2f ; (sformat.s31 + 4)
.s33:
0f36 : c9 66 __ CMP #$66
0f38 : f0 14 __ BEQ $0f4e ; (sformat.s59 + 0)
.s34:
0f3a : c9 67 __ CMP #$67
0f3c : f0 10 __ BEQ $0f4e ; (sformat.s59 + 0)
.s35:
0f3e : c9 65 __ CMP #$65
0f40 : f0 0c __ BEQ $0f4e ; (sformat.s59 + 0)
.s36:
0f42 : c9 46 __ CMP #$46
0f44 : f0 08 __ BEQ $0f4e ; (sformat.s59 + 0)
.s37:
0f46 : c9 47 __ CMP #$47
0f48 : f0 04 __ BEQ $0f4e ; (sformat.s59 + 0)
.s38:
0f4a : c9 45 __ CMP #$45
0f4c : d0 5c __ BNE $0faa ; (sformat.s39 + 0)
.s59:
0f4e : a5 57 __ LDA T4 + 0 
0f50 : 85 13 __ STA P6 
0f52 : a5 58 __ LDA T4 + 1 
0f54 : 85 14 __ STA P7 
0f56 : a5 47 __ LDA T2 + 0 
0f58 : 29 e0 __ AND #$e0
0f5a : 09 01 __ ORA #$01
0f5c : 8d d9 9f STA $9fd9 ; (si.cha + 0)
0f5f : ad f3 9f LDA $9ff3 ; (sstack + 5)
0f62 : 85 59 __ STA T5 + 0 
0f64 : a9 d6 __ LDA #$d6
0f66 : 85 11 __ STA P4 
0f68 : a9 9f __ LDA #$9f
0f6a : 85 12 __ STA P5 
0f6c : ad f4 9f LDA $9ff4 ; (sstack + 6)
0f6f : 85 5a __ STA T5 + 1 
0f71 : a0 00 __ LDY #$00
0f73 : b1 59 __ LDA (T5 + 0),y 
0f75 : 85 15 __ STA P8 
0f77 : c8 __ __ INY
0f78 : b1 59 __ LDA (T5 + 0),y 
0f7a : 85 16 __ STA P9 
0f7c : c8 __ __ INY
0f7d : b1 59 __ LDA (T5 + 0),y 
0f7f : 85 17 __ STA P10 
0f81 : c8 __ __ INY
0f82 : b1 59 __ LDA (T5 + 0),y 
0f84 : 85 18 __ STA P11 
0f86 : a5 47 __ LDA T2 + 0 
0f88 : ed d9 9f SBC $9fd9 ; (si.cha + 0)
0f8b : 18 __ __ CLC
0f8c : 69 61 __ ADC #$61
0f8e : 8d ee 9f STA $9fee ; (sstack + 0)
0f91 : 20 58 14 JSR $1458 ; (nformf.s1 + 0)
0f94 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
0f96 : 85 5b __ STA T6 + 0 
0f98 : 18 __ __ CLC
0f99 : a5 59 __ LDA T5 + 0 
0f9b : 69 04 __ ADC #$04
0f9d : 8d f3 9f STA $9ff3 ; (sstack + 5)
0fa0 : a5 5a __ LDA T5 + 1 
0fa2 : 69 00 __ ADC #$00
0fa4 : 8d f4 9f STA $9ff4 ; (sstack + 6)
0fa7 : 4c 5c 0d JMP $0d5c ; (sformat.l5 + 0)
.s39:
0faa : c9 73 __ CMP #$73
0fac : f0 3b __ BEQ $0fe9 ; (sformat.s47 + 0)
.s40:
0fae : c9 53 __ CMP #$53
0fb0 : f0 37 __ BEQ $0fe9 ; (sformat.s47 + 0)
.s41:
0fb2 : c9 63 __ CMP #$63
0fb4 : f0 12 __ BEQ $0fc8 ; (sformat.s46 + 0)
.s42:
0fb6 : c9 43 __ CMP #$43
0fb8 : f0 0e __ BEQ $0fc8 ; (sformat.s46 + 0)
.s43:
0fba : aa __ __ TAX
0fbb : f0 ea __ BEQ $0fa7 ; (sformat.s59 + 89)
.s44:
0fbd : a0 00 __ LDY #$00
0fbf : 91 57 __ STA (T4 + 0),y 
.s45:
0fc1 : a9 01 __ LDA #$01
.s96:
0fc3 : 85 5b __ STA T6 + 0 
0fc5 : 4c 5c 0d JMP $0d5c ; (sformat.l5 + 0)
.s46:
0fc8 : ad f3 9f LDA $9ff3 ; (sstack + 5)
0fcb : 85 43 __ STA T0 + 0 
0fcd : ad f4 9f LDA $9ff4 ; (sstack + 6)
0fd0 : 85 44 __ STA T0 + 1 
0fd2 : a0 00 __ LDY #$00
0fd4 : b1 43 __ LDA (T0 + 0),y 
0fd6 : 91 57 __ STA (T4 + 0),y 
0fd8 : a5 43 __ LDA T0 + 0 
0fda : 69 01 __ ADC #$01
0fdc : 8d f3 9f STA $9ff3 ; (sstack + 5)
0fdf : a5 44 __ LDA T0 + 1 
0fe1 : 69 00 __ ADC #$00
0fe3 : 8d f4 9f STA $9ff4 ; (sstack + 6)
0fe6 : 4c c1 0f JMP $0fc1 ; (sformat.s45 + 0)
.s47:
0fe9 : ad f3 9f LDA $9ff3 ; (sstack + 5)
0fec : 85 43 __ STA T0 + 0 
0fee : 69 01 __ ADC #$01
0ff0 : 8d f3 9f STA $9ff3 ; (sstack + 5)
0ff3 : ad f4 9f LDA $9ff4 ; (sstack + 6)
0ff6 : 85 44 __ STA T0 + 1 
0ff8 : 69 00 __ ADC #$00
0ffa : 8d f4 9f STA $9ff4 ; (sstack + 6)
0ffd : a0 00 __ LDY #$00
0fff : 84 5c __ STY T7 + 0 
1001 : b1 43 __ LDA (T0 + 0),y 
1003 : 85 1b __ STA ACCU + 0 ; (buff + 1)
1005 : 85 53 __ STA T1 + 0 
1007 : c8 __ __ INY
1008 : b1 43 __ LDA (T0 + 0),y 
100a : 85 1c __ STA ACCU + 1 ; (fmt + 0)
100c : 85 54 __ STA T1 + 1 
100e : ad d7 9f LDA $9fd7 ; (si.width + 0)
1011 : f0 0c __ BEQ $101f ; (sformat.s48 + 0)
.s100:
1013 : 88 __ __ DEY
1014 : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
1016 : f0 05 __ BEQ $101d ; (sformat.s101 + 0)
.l58:
1018 : c8 __ __ INY
1019 : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
101b : d0 fb __ BNE $1018 ; (sformat.l58 + 0)
.s101:
101d : 84 5c __ STY T7 + 0 
.s48:
101f : ad dc 9f LDA $9fdc ; (si.left + 0)
1022 : 85 59 __ STA T5 + 0 
1024 : d0 19 __ BNE $103f ; (sformat.s49 + 0)
.s98:
1026 : a6 5c __ LDX T7 + 0 
1028 : ec d7 9f CPX $9fd7 ; (si.width + 0)
102b : a0 00 __ LDY #$00
102d : b0 0c __ BCS $103b ; (sformat.s99 + 0)
.l57:
102f : ad d6 9f LDA $9fd6 ; (si.fill + 0)
1032 : 91 57 __ STA (T4 + 0),y 
1034 : c8 __ __ INY
1035 : e8 __ __ INX
1036 : ec d7 9f CPX $9fd7 ; (si.width + 0)
1039 : 90 f4 __ BCC $102f ; (sformat.l57 + 0)
.s99:
103b : 86 5c __ STX T7 + 0 
103d : 84 5b __ STY T6 + 0 
.s49:
103f : ac f5 9f LDY $9ff5 ; (sstack + 7)
1042 : d0 48 __ BNE $108c ; (sformat.s54 + 0)
.s50:
1044 : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
1046 : f0 23 __ BEQ $106b ; (sformat.s51 + 0)
.s53:
1048 : 18 __ __ CLC
1049 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
104b : 69 01 __ ADC #$01
104d : 85 43 __ STA T0 + 0 
104f : a5 1c __ LDA ACCU + 1 ; (fmt + 0)
1051 : 69 00 __ ADC #$00
1053 : 85 44 __ STA T0 + 1 
1055 : b1 1b __ LDA (ACCU + 0),y ; (buff + 1)
.l92:
1057 : a4 5b __ LDY T6 + 0 
1059 : 91 57 __ STA (T4 + 0),y 
105b : e6 5b __ INC T6 + 0 
105d : a0 00 __ LDY #$00
105f : b1 43 __ LDA (T0 + 0),y 
1061 : a8 __ __ TAY
1062 : e6 43 __ INC T0 + 0 
1064 : d0 02 __ BNE $1068 ; (sformat.s112 + 0)
.s111:
1066 : e6 44 __ INC T0 + 1 
.s112:
1068 : 98 __ __ TYA
1069 : d0 ec __ BNE $1057 ; (sformat.l92 + 0)
.s51:
106b : a5 59 __ LDA T5 + 0 
106d : d0 03 __ BNE $1072 ; (sformat.s97 + 0)
106f : 4c 5c 0d JMP $0d5c ; (sformat.l5 + 0)
.s97:
1072 : a6 5c __ LDX T7 + 0 
1074 : ec d7 9f CPX $9fd7 ; (si.width + 0)
1077 : a4 5b __ LDY T6 + 0 
1079 : b0 0c __ BCS $1087 ; (sformat.s102 + 0)
.l52:
107b : ad d6 9f LDA $9fd6 ; (si.fill + 0)
107e : 91 57 __ STA (T4 + 0),y 
1080 : c8 __ __ INY
1081 : e8 __ __ INX
1082 : ec d7 9f CPX $9fd7 ; (si.width + 0)
1085 : 90 f4 __ BCC $107b ; (sformat.l52 + 0)
.s102:
1087 : 84 5b __ STY T6 + 0 
1089 : 4c 5c 0d JMP $0d5c ; (sformat.l5 + 0)
.s54:
108c : a4 5b __ LDY T6 + 0 
108e : f0 11 __ BEQ $10a1 ; (sformat.s55 + 0)
.s56:
1090 : a5 57 __ LDA T4 + 0 
1092 : 85 0e __ STA P1 
1094 : a5 58 __ LDA T4 + 1 
1096 : 85 0f __ STA P2 
1098 : a9 00 __ LDA #$00
109a : 85 5b __ STA T6 + 0 
109c : 91 0e __ STA (P1),y 
109e : 20 7d 11 JSR $117d ; (puts.l4 + 0)
.s55:
10a1 : a5 53 __ LDA T1 + 0 
10a3 : 85 0e __ STA P1 
10a5 : a5 54 __ LDA T1 + 1 
10a7 : 85 0f __ STA P2 
10a9 : 20 7d 11 JSR $117d ; (puts.l4 + 0)
10ac : ad dc 9f LDA $9fdc ; (si.left + 0)
10af : d0 c1 __ BNE $1072 ; (sformat.s97 + 0)
10b1 : 4c 5c 0d JMP $0d5c ; (sformat.l5 + 0)
.s60:
10b4 : ad f3 9f LDA $9ff3 ; (sstack + 5)
10b7 : 85 43 __ STA T0 + 0 
10b9 : 69 03 __ ADC #$03
10bb : 8d f3 9f STA $9ff3 ; (sstack + 5)
10be : ad f4 9f LDA $9ff4 ; (sstack + 6)
10c1 : 85 44 __ STA T0 + 1 
10c3 : 69 00 __ ADC #$00
10c5 : 8d f4 9f STA $9ff4 ; (sstack + 6)
10c8 : a0 00 __ LDY #$00
10ca : b1 55 __ LDA (T3 + 0),y 
10cc : aa __ __ TAX
10cd : e6 55 __ INC T3 + 0 
10cf : d0 02 __ BNE $10d3 ; (sformat.s110 + 0)
.s109:
10d1 : e6 56 __ INC T3 + 1 
.s110:
10d3 : b1 43 __ LDA (T0 + 0),y 
10d5 : 85 1b __ STA ACCU + 0 ; (buff + 1)
10d7 : 85 11 __ STA P4 
10d9 : a0 01 __ LDY #$01
10db : b1 43 __ LDA (T0 + 0),y 
10dd : 85 1c __ STA ACCU + 1 ; (fmt + 0)
10df : 85 12 __ STA P5 
10e1 : c8 __ __ INY
10e2 : b1 43 __ LDA (T0 + 0),y 
10e4 : 85 1d __ STA ACCU + 2 ; (fmt + 1)
10e6 : 85 13 __ STA P6 
10e8 : c8 __ __ INY
10e9 : b1 43 __ LDA (T0 + 0),y 
10eb : 85 14 __ STA P7 
10ed : e0 64 __ CPX #$64
10ef : f0 0c __ BEQ $10fd ; (sformat.s71 + 0)
.s61:
10f1 : e0 44 __ CPX #$44
10f3 : f0 08 __ BEQ $10fd ; (sformat.s71 + 0)
.s62:
10f5 : e0 69 __ CPX #$69
10f7 : f0 04 __ BEQ $10fd ; (sformat.s71 + 0)
.s63:
10f9 : e0 49 __ CPX #$49
10fb : d0 1c __ BNE $1119 ; (sformat.s64 + 0)
.s71:
10fd : a9 01 __ LDA #$01
.s94:
10ff : 85 15 __ STA P8 
.s69:
1101 : a5 57 __ LDA T4 + 0 
1103 : 85 0f __ STA P2 
1105 : a5 58 __ LDA T4 + 1 
1107 : 85 10 __ STA P3 
1109 : a9 d6 __ LDA #$d6
110b : 85 0d __ STA P0 
110d : a9 9f __ LDA #$9f
110f : 85 0e __ STA P1 
1111 : 20 0e 13 JSR $130e ; (nforml.s4 + 0)
1114 : a5 1b __ LDA ACCU + 0 ; (buff + 1)
1116 : 4c c3 0f JMP $0fc3 ; (sformat.s96 + 0)
.s64:
1119 : e0 75 __ CPX #$75
111b : f0 04 __ BEQ $1121 ; (sformat.s70 + 0)
.s65:
111d : e0 55 __ CPX #$55
111f : d0 04 __ BNE $1125 ; (sformat.s66 + 0)
.s70:
1121 : a9 00 __ LDA #$00
1123 : f0 da __ BEQ $10ff ; (sformat.s94 + 0)
.s66:
1125 : e0 78 __ CPX #$78
1127 : f0 06 __ BEQ $112f ; (sformat.s68 + 0)
.s67:
1129 : 85 1e __ STA ACCU + 3 ; (fps + 0)
112b : e0 58 __ CPX #$58
112d : d0 82 __ BNE $10b1 ; (sformat.s55 + 16)
.s68:
112f : a9 00 __ LDA #$00
1131 : 85 15 __ STA P8 
1133 : a9 10 __ LDA #$10
1135 : 8d da 9f STA $9fda ; (si.base + 0)
1138 : 8a __ __ TXA
1139 : 29 e0 __ AND #$e0
113b : 09 01 __ ORA #$01
113d : 8d d9 9f STA $9fd9 ; (si.cha + 0)
1140 : 4c 01 11 JMP $1101 ; (sformat.s69 + 0)
.s73:
1143 : a5 57 __ LDA T4 + 0 
1145 : 85 0f __ STA P2 
1147 : a5 58 __ LDA T4 + 1 
1149 : 85 10 __ STA P3 
114b : ad f3 9f LDA $9ff3 ; (sstack + 5)
114e : 85 43 __ STA T0 + 0 
1150 : ad f4 9f LDA $9ff4 ; (sstack + 6)
1153 : 85 44 __ STA T0 + 1 
1155 : a0 00 __ LDY #$00
1157 : b1 43 __ LDA (T0 + 0),y 
1159 : 85 11 __ STA P4 
115b : c8 __ __ INY
115c : b1 43 __ LDA (T0 + 0),y 
115e : 85 12 __ STA P5 
1160 : 18 __ __ CLC
1161 : a5 43 __ LDA T0 + 0 
1163 : 69 02 __ ADC #$02
1165 : 8d f3 9f STA $9ff3 ; (sstack + 5)
1168 : a5 44 __ LDA T0 + 1 
116a : 69 00 __ ADC #$00
116c : 8d f4 9f STA $9ff4 ; (sstack + 6)
116f : a9 d6 __ LDA #$d6
1171 : 85 0d __ STA P0 
1173 : a9 9f __ LDA #$9f
1175 : 85 0e __ STA P1 
1177 : 20 f3 11 JSR $11f3 ; (nformi.s4 + 0)
117a : 4c c3 0f JMP $0fc3 ; (sformat.s96 + 0)
--------------------------------------------------------------------
puts: ; puts(const u8*)->void
;  12, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.l4:
117d : a0 00 __ LDY #$00
117f : b1 0e __ LDA (P1),y ; (str + 0)
1181 : d0 01 __ BNE $1184 ; (puts.s5 + 0)
.s3:
1183 : 60 __ __ RTS
.s5:
1184 : e6 0e __ INC P1 ; (str + 0)
1186 : d0 02 __ BNE $118a ; (puts.s7 + 0)
.s6:
1188 : e6 0f __ INC P2 ; (str + 1)
.s7:
118a : 20 90 11 JSR $1190 ; (putpch.s4 + 0)
118d : 4c 7d 11 JMP $117d ; (puts.l4 + 0)
--------------------------------------------------------------------
putpch: ; putpch(u8)->void
;  69, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.s4:
1190 : 85 0d __ STA P0 ; (c + 0)
1192 : ad 4d 28 LDA $284d ; (giocharmap + 0)
1195 : f0 32 __ BEQ $11c9 ; (putpch.s5 + 0)
.s6:
1197 : a5 0d __ LDA P0 ; (c + 0)
1199 : c9 0a __ CMP #$0a
119b : d0 04 __ BNE $11a1 ; (putpch.s7 + 0)
.s18:
119d : a9 0d __ LDA #$0d
119f : d0 32 __ BNE $11d3 ; (putpch.s15 + 0)
.s7:
11a1 : c9 09 __ CMP #$09
11a3 : f0 36 __ BEQ $11db ; (putpch.s16 + 0)
.s8:
11a5 : ad 4d 28 LDA $284d ; (giocharmap + 0)
11a8 : c9 02 __ CMP #$02
11aa : 90 1d __ BCC $11c9 ; (putpch.s5 + 0)
.s9:
11ac : a5 0d __ LDA P0 ; (c + 0)
11ae : c9 41 __ CMP #$41
11b0 : 90 17 __ BCC $11c9 ; (putpch.s5 + 0)
.s10:
11b2 : c9 7b __ CMP #$7b
11b4 : b0 13 __ BCS $11c9 ; (putpch.s5 + 0)
.s11:
11b6 : c9 61 __ CMP #$61
11b8 : b0 04 __ BCS $11be ; (putpch.s13 + 0)
.s12:
11ba : c9 5b __ CMP #$5b
11bc : b0 0b __ BCS $11c9 ; (putpch.s5 + 0)
.s13:
11be : 49 20 __ EOR #$20
11c0 : 85 0d __ STA P0 ; (c + 0)
11c2 : ad 4d 28 LDA $284d ; (giocharmap + 0)
11c5 : c9 02 __ CMP #$02
11c7 : f0 06 __ BEQ $11cf ; (putpch.s14 + 0)
.s5:
11c9 : a5 0d __ LDA P0 ; (c + 0)
11cb : 20 d2 ff JSR $ffd2 
.s3:
11ce : 60 __ __ RTS
.s14:
11cf : a5 0d __ LDA P0 ; (c + 0)
11d1 : 29 5f __ AND #$5f
.s15:
11d3 : 85 43 __ STA T0 + 0 
11d5 : a5 43 __ LDA T0 + 0 
11d7 : 20 d2 ff JSR $ffd2 
11da : 60 __ __ RTS
.s16:
11db : a5 d3 __ LDA $d3 
11dd : 29 03 __ AND #$03
11df : 85 43 __ STA T0 + 0 
11e1 : a9 20 __ LDA #$20
11e3 : 85 44 __ STA T1 + 0 
.l17:
11e5 : a5 44 __ LDA T1 + 0 
11e7 : 20 d2 ff JSR $ffd2 
11ea : e6 43 __ INC T0 + 0 
11ec : a5 43 __ LDA T0 + 0 
11ee : c9 04 __ CMP #$04
11f0 : 90 f3 __ BCC $11e5 ; (putpch.l17 + 0)
11f2 : 60 __ __ RTS
--------------------------------------------------------------------
nformi: ; nformi(const struct sinfo*,u8*,i16,bool)->u8
;  79, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s4:
11f3 : a9 00 __ LDA #$00
11f5 : 85 43 __ STA T5 + 0 
11f7 : a0 04 __ LDY #$04
11f9 : b1 0d __ LDA (P0),y ; (si + 0)
11fb : 85 44 __ STA T6 + 0 
11fd : a5 13 __ LDA P6 ; (s + 0)
11ff : f0 13 __ BEQ $1214 ; (nformi.s5 + 0)
.s33:
1201 : 24 12 __ BIT P5 ; (v + 1)
1203 : 10 0f __ BPL $1214 ; (nformi.s5 + 0)
.s34:
1205 : 38 __ __ SEC
1206 : a9 00 __ LDA #$00
1208 : e5 11 __ SBC P4 ; (v + 0)
120a : 85 11 __ STA P4 ; (v + 0)
120c : a9 00 __ LDA #$00
120e : e5 12 __ SBC P5 ; (v + 1)
1210 : 85 12 __ STA P5 ; (v + 1)
1212 : e6 43 __ INC T5 + 0 
.s5:
1214 : a9 10 __ LDA #$10
1216 : 85 45 __ STA T7 + 0 
1218 : a5 11 __ LDA P4 ; (v + 0)
121a : 05 12 __ ORA P5 ; (v + 1)
121c : f0 33 __ BEQ $1251 ; (nformi.s6 + 0)
.s28:
121e : a5 11 __ LDA P4 ; (v + 0)
1220 : 85 1b __ STA ACCU + 0 
1222 : a5 12 __ LDA P5 ; (v + 1)
1224 : 85 1c __ STA ACCU + 1 
.l29:
1226 : a5 44 __ LDA T6 + 0 
1228 : 85 03 __ STA WORK + 0 
122a : a9 00 __ LDA #$00
122c : 85 04 __ STA WORK + 1 
122e : 20 19 26 JSR $2619 ; (divmod + 0)
1231 : a5 05 __ LDA WORK + 2 
1233 : c9 0a __ CMP #$0a
1235 : b0 04 __ BCS $123b ; (nformi.s32 + 0)
.s30:
1237 : a9 30 __ LDA #$30
1239 : 90 06 __ BCC $1241 ; (nformi.s31 + 0)
.s32:
123b : a0 03 __ LDY #$03
123d : b1 0d __ LDA (P0),y ; (si + 0)
123f : e9 0a __ SBC #$0a
.s31:
1241 : 18 __ __ CLC
1242 : 65 05 __ ADC WORK + 2 
1244 : a6 45 __ LDX T7 + 0 
1246 : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
1249 : c6 45 __ DEC T7 + 0 
124b : a5 1b __ LDA ACCU + 0 
124d : 05 1c __ ORA ACCU + 1 
124f : d0 d5 __ BNE $1226 ; (nformi.l29 + 0)
.s6:
1251 : a0 02 __ LDY #$02
1253 : b1 0d __ LDA (P0),y ; (si + 0)
1255 : c9 ff __ CMP #$ff
1257 : d0 04 __ BNE $125d ; (nformi.s27 + 0)
.s7:
1259 : a9 0f __ LDA #$0f
125b : d0 05 __ BNE $1262 ; (nformi.s39 + 0)
.s27:
125d : 38 __ __ SEC
125e : a9 10 __ LDA #$10
1260 : f1 0d __ SBC (P0),y ; (si + 0)
.s39:
1262 : c5 45 __ CMP T7 + 0 
1264 : b0 0e __ BCS $1274 ; (nformi.s8 + 0)
.s26:
1266 : a8 __ __ TAY
1267 : a9 30 __ LDA #$30
.l40:
1269 : a6 45 __ LDX T7 + 0 
126b : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
126e : c6 45 __ DEC T7 + 0 
1270 : c4 45 __ CPY T7 + 0 
1272 : 90 f5 __ BCC $1269 ; (nformi.l40 + 0)
.s8:
1274 : a0 07 __ LDY #$07
1276 : b1 0d __ LDA (P0),y ; (si + 0)
1278 : f0 1c __ BEQ $1296 ; (nformi.s9 + 0)
.s24:
127a : a5 44 __ LDA T6 + 0 
127c : c9 10 __ CMP #$10
127e : d0 16 __ BNE $1296 ; (nformi.s9 + 0)
.s25:
1280 : a0 03 __ LDY #$03
1282 : b1 0d __ LDA (P0),y ; (si + 0)
1284 : a8 __ __ TAY
1285 : a9 30 __ LDA #$30
1287 : a6 45 __ LDX T7 + 0 
1289 : 9d dc 9f STA $9fdc,x ; (si.left + 0)
128c : 98 __ __ TYA
128d : 69 16 __ ADC #$16
128f : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
1292 : ca __ __ DEX
1293 : ca __ __ DEX
1294 : 86 45 __ STX T7 + 0 
.s9:
1296 : a9 00 __ LDA #$00
1298 : 85 1b __ STA ACCU + 0 
129a : a5 43 __ LDA T5 + 0 
129c : f0 0c __ BEQ $12aa ; (nformi.s10 + 0)
.s23:
129e : a9 2d __ LDA #$2d
.s22:
12a0 : a6 45 __ LDX T7 + 0 
12a2 : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
12a5 : c6 45 __ DEC T7 + 0 
12a7 : 4c b4 12 JMP $12b4 ; (nformi.s11 + 0)
.s10:
12aa : a0 05 __ LDY #$05
12ac : b1 0d __ LDA (P0),y ; (si + 0)
12ae : f0 04 __ BEQ $12b4 ; (nformi.s11 + 0)
.s21:
12b0 : a9 2b __ LDA #$2b
12b2 : d0 ec __ BNE $12a0 ; (nformi.s22 + 0)
.s11:
12b4 : a0 06 __ LDY #$06
12b6 : a6 45 __ LDX T7 + 0 
12b8 : b1 0d __ LDA (P0),y ; (si + 0)
12ba : d0 2b __ BNE $12e7 ; (nformi.s17 + 0)
.l12:
12bc : 8a __ __ TXA
12bd : 18 __ __ CLC
12be : a0 01 __ LDY #$01
12c0 : 71 0d __ ADC (P0),y ; (si + 0)
12c2 : b0 04 __ BCS $12c8 ; (nformi.s15 + 0)
.s16:
12c4 : c9 11 __ CMP #$11
12c6 : 90 0a __ BCC $12d2 ; (nformi.s13 + 0)
.s15:
12c8 : a0 00 __ LDY #$00
12ca : b1 0d __ LDA (P0),y ; (si + 0)
12cc : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
12cf : ca __ __ DEX
12d0 : b0 ea __ BCS $12bc ; (nformi.l12 + 0)
.s13:
12d2 : e0 10 __ CPX #$10
12d4 : b0 0e __ BCS $12e4 ; (nformi.s41 + 0)
.s14:
12d6 : 88 __ __ DEY
.l37:
12d7 : bd de 9f LDA $9fde,x ; (buffer[0] + 0)
12da : 91 0f __ STA (P2),y ; (str + 0)
12dc : c8 __ __ INY
12dd : e8 __ __ INX
12de : e0 10 __ CPX #$10
12e0 : 90 f5 __ BCC $12d7 ; (nformi.l37 + 0)
.s38:
12e2 : 84 1b __ STY ACCU + 0 
.s41:
12e4 : a5 1b __ LDA ACCU + 0 
.s3:
12e6 : 60 __ __ RTS
.s17:
12e7 : e0 10 __ CPX #$10
12e9 : b0 1a __ BCS $1305 ; (nformi.l18 + 0)
.s20:
12eb : a0 00 __ LDY #$00
.l35:
12ed : bd de 9f LDA $9fde,x ; (buffer[0] + 0)
12f0 : 91 0f __ STA (P2),y ; (str + 0)
12f2 : c8 __ __ INY
12f3 : e8 __ __ INX
12f4 : e0 10 __ CPX #$10
12f6 : 90 f5 __ BCC $12ed ; (nformi.l35 + 0)
.s36:
12f8 : 84 1b __ STY ACCU + 0 
12fa : b0 09 __ BCS $1305 ; (nformi.l18 + 0)
.s19:
12fc : 88 __ __ DEY
12fd : b1 0d __ LDA (P0),y ; (si + 0)
12ff : a4 1b __ LDY ACCU + 0 
1301 : 91 0f __ STA (P2),y ; (str + 0)
1303 : e6 1b __ INC ACCU + 0 
.l18:
1305 : a5 1b __ LDA ACCU + 0 
1307 : a0 01 __ LDY #$01
1309 : d1 0d __ CMP (P0),y ; (si + 0)
130b : 90 ef __ BCC $12fc ; (nformi.s19 + 0)
130d : 60 __ __ RTS
--------------------------------------------------------------------
nforml: ; nforml(const struct sinfo*,u8*,i32,bool)->u8
; 137, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s4:
130e : a9 00 __ LDA #$00
1310 : 85 43 __ STA T4 + 0 
1312 : a5 15 __ LDA P8 ; (s + 0)
1314 : f0 1f __ BEQ $1335 ; (nforml.s5 + 0)
.s35:
1316 : 24 14 __ BIT P7 ; (v + 3)
1318 : 10 1b __ BPL $1335 ; (nforml.s5 + 0)
.s36:
131a : 38 __ __ SEC
131b : a9 00 __ LDA #$00
131d : e5 11 __ SBC P4 ; (v + 0)
131f : 85 11 __ STA P4 ; (v + 0)
1321 : a9 00 __ LDA #$00
1323 : e5 12 __ SBC P5 ; (v + 1)
1325 : 85 12 __ STA P5 ; (v + 1)
1327 : a9 00 __ LDA #$00
1329 : e5 13 __ SBC P6 ; (v + 2)
132b : 85 13 __ STA P6 ; (v + 2)
132d : a9 00 __ LDA #$00
132f : e5 14 __ SBC P7 ; (v + 3)
1331 : 85 14 __ STA P7 ; (v + 3)
1333 : e6 43 __ INC T4 + 0 
.s5:
1335 : a9 10 __ LDA #$10
1337 : 85 44 __ STA T5 + 0 
1339 : a5 14 __ LDA P7 ; (v + 3)
133b : f0 03 __ BEQ $1340 ; (nforml.s31 + 0)
133d : 4c 08 14 JMP $1408 ; (nforml.l28 + 0)
.s31:
1340 : a5 13 __ LDA P6 ; (v + 2)
1342 : d0 f9 __ BNE $133d ; (nforml.s5 + 8)
.s32:
1344 : a5 12 __ LDA P5 ; (v + 1)
1346 : d0 f5 __ BNE $133d ; (nforml.s5 + 8)
.s33:
1348 : c5 11 __ CMP P4 ; (v + 0)
134a : 90 f1 __ BCC $133d ; (nforml.s5 + 8)
.s6:
134c : a0 02 __ LDY #$02
134e : b1 0d __ LDA (P0),y ; (si + 0)
1350 : c9 ff __ CMP #$ff
1352 : d0 04 __ BNE $1358 ; (nforml.s27 + 0)
.s7:
1354 : a9 0f __ LDA #$0f
1356 : d0 05 __ BNE $135d ; (nforml.s41 + 0)
.s27:
1358 : 38 __ __ SEC
1359 : a9 10 __ LDA #$10
135b : f1 0d __ SBC (P0),y ; (si + 0)
.s41:
135d : c5 44 __ CMP T5 + 0 
135f : b0 0e __ BCS $136f ; (nforml.s8 + 0)
.s26:
1361 : a8 __ __ TAY
1362 : a9 30 __ LDA #$30
.l42:
1364 : a6 44 __ LDX T5 + 0 
1366 : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
1369 : c6 44 __ DEC T5 + 0 
136b : c4 44 __ CPY T5 + 0 
136d : 90 f5 __ BCC $1364 ; (nforml.l42 + 0)
.s8:
136f : a0 07 __ LDY #$07
1371 : b1 0d __ LDA (P0),y ; (si + 0)
1373 : f0 1d __ BEQ $1392 ; (nforml.s9 + 0)
.s24:
1375 : a0 04 __ LDY #$04
1377 : b1 0d __ LDA (P0),y ; (si + 0)
1379 : c9 10 __ CMP #$10
137b : d0 15 __ BNE $1392 ; (nforml.s9 + 0)
.s25:
137d : 88 __ __ DEY
137e : b1 0d __ LDA (P0),y ; (si + 0)
1380 : a8 __ __ TAY
1381 : a9 30 __ LDA #$30
1383 : a6 44 __ LDX T5 + 0 
1385 : 9d dc 9f STA $9fdc,x ; (si.left + 0)
1388 : 98 __ __ TYA
1389 : 69 16 __ ADC #$16
138b : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
138e : ca __ __ DEX
138f : ca __ __ DEX
1390 : 86 44 __ STX T5 + 0 
.s9:
1392 : a9 00 __ LDA #$00
1394 : 85 1b __ STA ACCU + 0 
1396 : a5 43 __ LDA T4 + 0 
1398 : f0 0c __ BEQ $13a6 ; (nforml.s10 + 0)
.s23:
139a : a9 2d __ LDA #$2d
.s22:
139c : a6 44 __ LDX T5 + 0 
139e : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
13a1 : c6 44 __ DEC T5 + 0 
13a3 : 4c b0 13 JMP $13b0 ; (nforml.s11 + 0)
.s10:
13a6 : a0 05 __ LDY #$05
13a8 : b1 0d __ LDA (P0),y ; (si + 0)
13aa : f0 04 __ BEQ $13b0 ; (nforml.s11 + 0)
.s21:
13ac : a9 2b __ LDA #$2b
13ae : d0 ec __ BNE $139c ; (nforml.s22 + 0)
.s11:
13b0 : a6 44 __ LDX T5 + 0 
13b2 : a0 06 __ LDY #$06
13b4 : b1 0d __ LDA (P0),y ; (si + 0)
13b6 : d0 29 __ BNE $13e1 ; (nforml.s17 + 0)
.l12:
13b8 : 8a __ __ TXA
13b9 : 18 __ __ CLC
13ba : a0 01 __ LDY #$01
13bc : 71 0d __ ADC (P0),y ; (si + 0)
13be : b0 04 __ BCS $13c4 ; (nforml.s15 + 0)
.s16:
13c0 : c9 11 __ CMP #$11
13c2 : 90 0a __ BCC $13ce ; (nforml.s13 + 0)
.s15:
13c4 : a0 00 __ LDY #$00
13c6 : b1 0d __ LDA (P0),y ; (si + 0)
13c8 : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
13cb : ca __ __ DEX
13cc : b0 ea __ BCS $13b8 ; (nforml.l12 + 0)
.s13:
13ce : e0 10 __ CPX #$10
13d0 : b0 0e __ BCS $13e0 ; (nforml.s3 + 0)
.s14:
13d2 : 88 __ __ DEY
.l39:
13d3 : bd de 9f LDA $9fde,x ; (buffer[0] + 0)
13d6 : 91 0f __ STA (P2),y ; (str + 0)
13d8 : c8 __ __ INY
13d9 : e8 __ __ INX
13da : e0 10 __ CPX #$10
13dc : 90 f5 __ BCC $13d3 ; (nforml.l39 + 0)
.s40:
13de : 84 1b __ STY ACCU + 0 
.s3:
13e0 : 60 __ __ RTS
.s17:
13e1 : e0 10 __ CPX #$10
13e3 : b0 1a __ BCS $13ff ; (nforml.l18 + 0)
.s20:
13e5 : a0 00 __ LDY #$00
.l37:
13e7 : bd de 9f LDA $9fde,x ; (buffer[0] + 0)
13ea : 91 0f __ STA (P2),y ; (str + 0)
13ec : c8 __ __ INY
13ed : e8 __ __ INX
13ee : e0 10 __ CPX #$10
13f0 : 90 f5 __ BCC $13e7 ; (nforml.l37 + 0)
.s38:
13f2 : 84 1b __ STY ACCU + 0 
13f4 : b0 09 __ BCS $13ff ; (nforml.l18 + 0)
.s19:
13f6 : 88 __ __ DEY
13f7 : b1 0d __ LDA (P0),y ; (si + 0)
13f9 : a4 1b __ LDY ACCU + 0 
13fb : 91 0f __ STA (P2),y ; (str + 0)
13fd : e6 1b __ INC ACCU + 0 
.l18:
13ff : a5 1b __ LDA ACCU + 0 
1401 : a0 01 __ LDY #$01
1403 : d1 0d __ CMP (P0),y ; (si + 0)
1405 : 90 ef __ BCC $13f6 ; (nforml.s19 + 0)
1407 : 60 __ __ RTS
.l28:
1408 : a0 04 __ LDY #$04
140a : b1 0d __ LDA (P0),y ; (si + 0)
140c : 85 03 __ STA WORK + 0 
140e : a5 11 __ LDA P4 ; (v + 0)
1410 : 85 1b __ STA ACCU + 0 
1412 : a5 12 __ LDA P5 ; (v + 1)
1414 : 85 1c __ STA ACCU + 1 
1416 : a5 13 __ LDA P6 ; (v + 2)
1418 : 85 1d __ STA ACCU + 2 
141a : a5 14 __ LDA P7 ; (v + 3)
141c : 85 1e __ STA ACCU + 3 
141e : a9 00 __ LDA #$00
1420 : 85 04 __ STA WORK + 1 
1422 : 85 05 __ STA WORK + 2 
1424 : 85 06 __ STA WORK + 3 
1426 : 20 5a 27 JSR $275a ; (divmod32 + 0)
1429 : a5 07 __ LDA WORK + 4 
142b : c9 0a __ CMP #$0a
142d : b0 04 __ BCS $1433 ; (nforml.s34 + 0)
.s29:
142f : a9 30 __ LDA #$30
1431 : 90 06 __ BCC $1439 ; (nforml.s30 + 0)
.s34:
1433 : a0 03 __ LDY #$03
1435 : b1 0d __ LDA (P0),y ; (si + 0)
1437 : e9 0a __ SBC #$0a
.s30:
1439 : 18 __ __ CLC
143a : 65 07 __ ADC WORK + 4 
143c : a6 44 __ LDX T5 + 0 
143e : 9d dd 9f STA $9fdd,x ; (si.prefix + 0)
1441 : c6 44 __ DEC T5 + 0 
1443 : a5 1b __ LDA ACCU + 0 
1445 : 85 11 __ STA P4 ; (v + 0)
1447 : a5 1c __ LDA ACCU + 1 
1449 : 85 12 __ STA P5 ; (v + 1)
144b : a5 1d __ LDA ACCU + 2 
144d : 85 13 __ STA P6 ; (v + 2)
144f : a5 1e __ LDA ACCU + 3 
1451 : 85 14 __ STA P7 ; (v + 3)
1453 : d0 b3 __ BNE $1408 ; (nforml.l28 + 0)
1455 : 4c 40 13 JMP $1340 ; (nforml.s31 + 0)
--------------------------------------------------------------------
nformf: ; nformf(const struct sinfo*,u8*,float,u8)->u8
; 199, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.c"
.s1:
1458 : a2 03 __ LDX #$03
145a : b5 53 __ LDA T7 + 0,x 
145c : 9d e5 9f STA $9fe5,x ; (nformf@stack + 0)
145f : ca __ __ DEX
1460 : 10 f8 __ BPL $145a ; (nformf.s1 + 2)
.s4:
1462 : a5 16 __ LDA P9 ; (f + 1)
1464 : 85 44 __ STA T0 + 1 
1466 : a5 17 __ LDA P10 ; (f + 2)
1468 : 85 45 __ STA T0 + 2 
146a : a5 18 __ LDA P11 ; (f + 3)
146c : 29 7f __ AND #$7f
146e : 05 17 __ ORA P10 ; (f + 2)
1470 : 05 16 __ ORA P9 ; (f + 1)
1472 : 05 15 __ ORA P8 ; (f + 0)
1474 : f0 21 __ BEQ $1497 ; (nformf.s5 + 0)
.s107:
1476 : 24 18 __ BIT P11 ; (f + 3)
1478 : 10 1d __ BPL $1497 ; (nformf.s5 + 0)
.s106:
147a : a9 2d __ LDA #$2d
147c : a0 00 __ LDY #$00
147e : 91 13 __ STA (P6),y ; (str + 0)
1480 : a5 18 __ LDA P11 ; (f + 3)
1482 : 49 80 __ EOR #$80
1484 : 85 10 __ STA P3 
1486 : 85 18 __ STA P11 ; (f + 3)
1488 : a5 15 __ LDA P8 ; (f + 0)
148a : 85 0d __ STA P0 
148c : a5 16 __ LDA P9 ; (f + 1)
148e : 85 0e __ STA P1 
1490 : a5 17 __ LDA P10 ; (f + 2)
1492 : 85 0f __ STA P2 
1494 : 4c ae 19 JMP $19ae ; (nformf.s104 + 0)
.s5:
1497 : a5 15 __ LDA P8 ; (f + 0)
1499 : 85 0d __ STA P0 
149b : a5 16 __ LDA P9 ; (f + 1)
149d : 85 0e __ STA P1 
149f : a5 17 __ LDA P10 ; (f + 2)
14a1 : 85 0f __ STA P2 
14a3 : a5 18 __ LDA P11 ; (f + 3)
14a5 : 85 10 __ STA P3 
14a7 : a0 05 __ LDY #$05
14a9 : b1 11 __ LDA (P4),y ; (si + 0)
14ab : f0 09 __ BEQ $14b6 ; (nformf.s6 + 0)
.s103:
14ad : a9 2b __ LDA #$2b
14af : a0 00 __ LDY #$00
14b1 : 91 13 __ STA (P6),y ; (str + 0)
14b3 : 4c ae 19 JMP $19ae ; (nformf.s104 + 0)
.s6:
14b6 : 20 bf 19 JSR $19bf ; (isinf.s4 + 0)
14b9 : a2 00 __ LDX #$00
14bb : 86 54 __ STX T9 + 0 
14bd : a8 __ __ TAY
14be : f0 05 __ BEQ $14c5 ; (nformf.s7 + 0)
.s101:
14c0 : a9 02 __ LDA #$02
14c2 : 4c 75 19 JMP $1975 ; (nformf.s102 + 0)
.s7:
14c5 : a5 11 __ LDA P4 ; (si + 0)
14c7 : 85 4b __ STA T2 + 0 
14c9 : a5 12 __ LDA P5 ; (si + 1)
14cb : 85 4c __ STA T2 + 1 
14cd : a0 02 __ LDY #$02
14cf : b1 11 __ LDA (P4),y ; (si + 0)
14d1 : c9 ff __ CMP #$ff
14d3 : d0 02 __ BNE $14d7 ; (nformf.s100 + 0)
.s8:
14d5 : a9 06 __ LDA #$06
.s100:
14d7 : 85 4d __ STA T3 + 0 
14d9 : 85 52 __ STA T6 + 0 
14db : a9 00 __ LDA #$00
14dd : 85 4f __ STA T4 + 0 
14df : 85 50 __ STA T4 + 1 
14e1 : a5 18 __ LDA P11 ; (f + 3)
14e3 : 85 46 __ STA T0 + 3 
14e5 : 29 7f __ AND #$7f
14e7 : 05 17 __ ORA P10 ; (f + 2)
14e9 : 05 16 __ ORA P9 ; (f + 1)
14eb : a6 15 __ LDX P8 ; (f + 0)
14ed : 86 43 __ STX T0 + 0 
14ef : 05 15 __ ORA P8 ; (f + 0)
14f1 : d0 03 __ BNE $14f6 ; (nformf.s67 + 0)
14f3 : 4c 2a 16 JMP $162a ; (nformf.s9 + 0)
.s67:
14f6 : a5 18 __ LDA P11 ; (f + 3)
14f8 : 10 03 __ BPL $14fd ; (nformf.s95 + 0)
14fa : 4c 7c 15 JMP $157c ; (nformf.l80 + 0)
.s95:
14fd : c9 44 __ CMP #$44
14ff : d0 0d __ BNE $150e ; (nformf.l99 + 0)
.s96:
1501 : a5 17 __ LDA P10 ; (f + 2)
1503 : c9 7a __ CMP #$7a
1505 : d0 07 __ BNE $150e ; (nformf.l99 + 0)
.s97:
1507 : a5 16 __ LDA P9 ; (f + 1)
1509 : d0 03 __ BNE $150e ; (nformf.l99 + 0)
.s98:
150b : 8a __ __ TXA
150c : f0 02 __ BEQ $1510 ; (nformf.l90 + 0)
.l99:
150e : 90 54 __ BCC $1564 ; (nformf.s68 + 0)
.l90:
1510 : 18 __ __ CLC
1511 : a5 4f __ LDA T4 + 0 
1513 : 69 03 __ ADC #$03
1515 : 85 4f __ STA T4 + 0 
1517 : 90 02 __ BCC $151b ; (nformf.s121 + 0)
.s120:
1519 : e6 50 __ INC T4 + 1 
.s121:
151b : a5 43 __ LDA T0 + 0 
151d : 85 1b __ STA ACCU + 0 
151f : a5 44 __ LDA T0 + 1 
1521 : 85 1c __ STA ACCU + 1 
1523 : a5 45 __ LDA T0 + 2 
1525 : 85 1d __ STA ACCU + 2 
1527 : a5 46 __ LDA T0 + 3 
1529 : 85 1e __ STA ACCU + 3 
152b : a9 00 __ LDA #$00
152d : 85 03 __ STA WORK + 0 
152f : 85 04 __ STA WORK + 1 
1531 : a9 7a __ LDA #$7a
1533 : 85 05 __ STA WORK + 2 
1535 : a9 44 __ LDA #$44
1537 : 85 06 __ STA WORK + 3 
1539 : 20 4b 23 JSR $234b ; (freg + 20)
153c : 20 31 25 JSR $2531 ; (crt_fdiv + 0)
153f : a5 1b __ LDA ACCU + 0 
1541 : 85 43 __ STA T0 + 0 
1543 : a5 1c __ LDA ACCU + 1 
1545 : 85 44 __ STA T0 + 1 
1547 : a6 1d __ LDX ACCU + 2 
1549 : 86 45 __ STX T0 + 2 
154b : a5 1e __ LDA ACCU + 3 
154d : 85 46 __ STA T0 + 3 
154f : 30 13 __ BMI $1564 ; (nformf.s68 + 0)
.s91:
1551 : c9 44 __ CMP #$44
1553 : d0 b9 __ BNE $150e ; (nformf.l99 + 0)
.s92:
1555 : e0 7a __ CPX #$7a
1557 : d0 b5 __ BNE $150e ; (nformf.l99 + 0)
.s93:
1559 : a5 1c __ LDA ACCU + 1 
155b : 38 __ __ SEC
155c : d0 b0 __ BNE $150e ; (nformf.l99 + 0)
.s94:
155e : a5 1b __ LDA ACCU + 0 
1560 : f0 ae __ BEQ $1510 ; (nformf.l90 + 0)
1562 : d0 aa __ BNE $150e ; (nformf.l99 + 0)
.s68:
1564 : a5 46 __ LDA T0 + 3 
1566 : 30 14 __ BMI $157c ; (nformf.l80 + 0)
.s86:
1568 : c9 3f __ CMP #$3f
156a : d0 0e __ BNE $157a ; (nformf.s85 + 0)
.s87:
156c : a5 45 __ LDA T0 + 2 
156e : c9 80 __ CMP #$80
1570 : d0 08 __ BNE $157a ; (nformf.s85 + 0)
.s88:
1572 : a5 44 __ LDA T0 + 1 
1574 : d0 04 __ BNE $157a ; (nformf.s85 + 0)
.s89:
1576 : a5 43 __ LDA T0 + 0 
1578 : f0 49 __ BEQ $15c3 ; (nformf.s69 + 0)
.s85:
157a : b0 47 __ BCS $15c3 ; (nformf.s69 + 0)
.l80:
157c : 38 __ __ SEC
157d : a5 4f __ LDA T4 + 0 
157f : e9 03 __ SBC #$03
1581 : 85 4f __ STA T4 + 0 
1583 : b0 02 __ BCS $1587 ; (nformf.s116 + 0)
.s115:
1585 : c6 50 __ DEC T4 + 1 
.s116:
1587 : a9 00 __ LDA #$00
1589 : 85 1b __ STA ACCU + 0 
158b : 85 1c __ STA ACCU + 1 
158d : a9 7a __ LDA #$7a
158f : 85 1d __ STA ACCU + 2 
1591 : a9 44 __ LDA #$44
1593 : 85 1e __ STA ACCU + 3 
1595 : a2 43 __ LDX #$43
1597 : 20 3b 23 JSR $233b ; (freg + 4)
159a : 20 69 24 JSR $2469 ; (crt_fmul + 0)
159d : a5 1b __ LDA ACCU + 0 
159f : 85 43 __ STA T0 + 0 
15a1 : a5 1c __ LDA ACCU + 1 
15a3 : 85 44 __ STA T0 + 1 
15a5 : a6 1d __ LDX ACCU + 2 
15a7 : 86 45 __ STX T0 + 2 
15a9 : a5 1e __ LDA ACCU + 3 
15ab : 85 46 __ STA T0 + 3 
15ad : 30 cd __ BMI $157c ; (nformf.l80 + 0)
.s81:
15af : c9 3f __ CMP #$3f
15b1 : 90 c9 __ BCC $157c ; (nformf.l80 + 0)
.s122:
15b3 : d0 0e __ BNE $15c3 ; (nformf.s69 + 0)
.s82:
15b5 : e0 80 __ CPX #$80
15b7 : 90 c3 __ BCC $157c ; (nformf.l80 + 0)
.s123:
15b9 : d0 08 __ BNE $15c3 ; (nformf.s69 + 0)
.s83:
15bb : a5 1c __ LDA ACCU + 1 
15bd : d0 bb __ BNE $157a ; (nformf.s85 + 0)
.s84:
15bf : a5 1b __ LDA ACCU + 0 
15c1 : d0 b7 __ BNE $157a ; (nformf.s85 + 0)
.s69:
15c3 : a5 46 __ LDA T0 + 3 
15c5 : 30 63 __ BMI $162a ; (nformf.s9 + 0)
.s75:
15c7 : c9 41 __ CMP #$41
15c9 : d0 0e __ BNE $15d9 ; (nformf.l79 + 0)
.s76:
15cb : a5 45 __ LDA T0 + 2 
15cd : c9 20 __ CMP #$20
15cf : d0 08 __ BNE $15d9 ; (nformf.l79 + 0)
.s77:
15d1 : a5 44 __ LDA T0 + 1 
15d3 : d0 04 __ BNE $15d9 ; (nformf.l79 + 0)
.s78:
15d5 : a5 43 __ LDA T0 + 0 
15d7 : f0 02 __ BEQ $15db ; (nformf.l70 + 0)
.l79:
15d9 : 90 4f __ BCC $162a ; (nformf.s9 + 0)
.l70:
15db : e6 4f __ INC T4 + 0 
15dd : d0 02 __ BNE $15e1 ; (nformf.s119 + 0)
.s118:
15df : e6 50 __ INC T4 + 1 
.s119:
15e1 : a5 43 __ LDA T0 + 0 
15e3 : 85 1b __ STA ACCU + 0 
15e5 : a5 44 __ LDA T0 + 1 
15e7 : 85 1c __ STA ACCU + 1 
15e9 : a5 45 __ LDA T0 + 2 
15eb : 85 1d __ STA ACCU + 2 
15ed : a5 46 __ LDA T0 + 3 
15ef : 85 1e __ STA ACCU + 3 
15f1 : a9 00 __ LDA #$00
15f3 : 85 03 __ STA WORK + 0 
15f5 : 85 04 __ STA WORK + 1 
15f7 : a9 20 __ LDA #$20
15f9 : 85 05 __ STA WORK + 2 
15fb : a9 41 __ LDA #$41
15fd : 85 06 __ STA WORK + 3 
15ff : 20 4b 23 JSR $234b ; (freg + 20)
1602 : 20 31 25 JSR $2531 ; (crt_fdiv + 0)
1605 : a5 1b __ LDA ACCU + 0 
1607 : 85 43 __ STA T0 + 0 
1609 : a5 1c __ LDA ACCU + 1 
160b : 85 44 __ STA T0 + 1 
160d : a6 1d __ LDX ACCU + 2 
160f : 86 45 __ STX T0 + 2 
1611 : a5 1e __ LDA ACCU + 3 
1613 : 85 46 __ STA T0 + 3 
1615 : 30 13 __ BMI $162a ; (nformf.s9 + 0)
.s71:
1617 : c9 41 __ CMP #$41
1619 : d0 be __ BNE $15d9 ; (nformf.l79 + 0)
.s72:
161b : e0 20 __ CPX #$20
161d : d0 ba __ BNE $15d9 ; (nformf.l79 + 0)
.s73:
161f : a5 1c __ LDA ACCU + 1 
1621 : 38 __ __ SEC
1622 : d0 b5 __ BNE $15d9 ; (nformf.l79 + 0)
.s74:
1624 : a5 1b __ LDA ACCU + 0 
1626 : f0 b3 __ BEQ $15db ; (nformf.l70 + 0)
1628 : d0 af __ BNE $15d9 ; (nformf.l79 + 0)
.s9:
162a : ad ee 9f LDA $9fee ; (sstack + 0)
162d : c9 65 __ CMP #$65
162f : d0 04 __ BNE $1635 ; (nformf.s11 + 0)
.s10:
1631 : a9 01 __ LDA #$01
1633 : d0 02 __ BNE $1637 ; (nformf.s12 + 0)
.s11:
1635 : a9 00 __ LDA #$00
.s12:
1637 : 85 55 __ STA T10 + 0 
1639 : a6 4d __ LDX T3 + 0 
163b : e8 __ __ INX
163c : 86 51 __ STX T5 + 0 
163e : ad ee 9f LDA $9fee ; (sstack + 0)
1641 : c9 67 __ CMP #$67
1643 : d0 13 __ BNE $1658 ; (nformf.s13 + 0)
.s63:
1645 : a5 50 __ LDA T4 + 1 
1647 : 30 08 __ BMI $1651 ; (nformf.s64 + 0)
.s66:
1649 : d0 06 __ BNE $1651 ; (nformf.s64 + 0)
.s65:
164b : a5 4f __ LDA T4 + 0 
164d : c9 04 __ CMP #$04
164f : 90 07 __ BCC $1658 ; (nformf.s13 + 0)
.s64:
1651 : a9 01 __ LDA #$01
1653 : 85 55 __ STA T10 + 0 
1655 : 4c db 18 JMP $18db ; (nformf.s53 + 0)
.s13:
1658 : a5 55 __ LDA T10 + 0 
165a : d0 f9 __ BNE $1655 ; (nformf.s64 + 4)
.s14:
165c : 24 50 __ BIT T4 + 1 
165e : 10 43 __ BPL $16a3 ; (nformf.s15 + 0)
.s52:
1660 : a5 43 __ LDA T0 + 0 
1662 : 85 1b __ STA ACCU + 0 
1664 : a5 44 __ LDA T0 + 1 
1666 : 85 1c __ STA ACCU + 1 
1668 : a5 45 __ LDA T0 + 2 
166a : 85 1d __ STA ACCU + 2 
166c : a5 46 __ LDA T0 + 3 
166e : 85 1e __ STA ACCU + 3 
.l108:
1670 : a9 00 __ LDA #$00
1672 : 85 03 __ STA WORK + 0 
1674 : 85 04 __ STA WORK + 1 
1676 : a9 20 __ LDA #$20
1678 : 85 05 __ STA WORK + 2 
167a : a9 41 __ LDA #$41
167c : 85 06 __ STA WORK + 3 
167e : 20 4b 23 JSR $234b ; (freg + 20)
1681 : 20 31 25 JSR $2531 ; (crt_fdiv + 0)
1684 : 18 __ __ CLC
1685 : a5 4f __ LDA T4 + 0 
1687 : 69 01 __ ADC #$01
1689 : 85 4f __ STA T4 + 0 
168b : a5 50 __ LDA T4 + 1 
168d : 69 00 __ ADC #$00
168f : 85 50 __ STA T4 + 1 
1691 : 30 dd __ BMI $1670 ; (nformf.l108 + 0)
.s109:
1693 : a5 1e __ LDA ACCU + 3 
1695 : 85 46 __ STA T0 + 3 
1697 : a5 1d __ LDA ACCU + 2 
1699 : 85 45 __ STA T0 + 2 
169b : a5 1c __ LDA ACCU + 1 
169d : 85 44 __ STA T0 + 1 
169f : a5 1b __ LDA ACCU + 0 
16a1 : 85 43 __ STA T0 + 0 
.s15:
16a3 : 18 __ __ CLC
16a4 : a5 4d __ LDA T3 + 0 
16a6 : 65 4f __ ADC T4 + 0 
16a8 : 18 __ __ CLC
16a9 : 69 01 __ ADC #$01
16ab : 85 51 __ STA T5 + 0 
16ad : c9 07 __ CMP #$07
16af : 90 14 __ BCC $16c5 ; (nformf.s51 + 0)
.s16:
16b1 : ad 66 28 LDA $2866 ; (fround5[0] + 24)
16b4 : 85 47 __ STA T1 + 0 
16b6 : ad 67 28 LDA $2867 ; (fround5[0] + 25)
16b9 : 85 48 __ STA T1 + 1 
16bb : ad 68 28 LDA $2868 ; (fround5[0] + 26)
16be : 85 49 __ STA T1 + 2 
16c0 : ad 69 28 LDA $2869 ; (fround5[0] + 27)
16c3 : b0 15 __ BCS $16da ; (nformf.s17 + 0)
.s51:
16c5 : 0a __ __ ASL
16c6 : 0a __ __ ASL
16c7 : aa __ __ TAX
16c8 : bd 4a 28 LDA $284a,x ; (p_sprite + 0)
16cb : 85 47 __ STA T1 + 0 
16cd : bd 4b 28 LDA $284b,x ; (seed + 0)
16d0 : 85 48 __ STA T1 + 1 
16d2 : bd 4c 28 LDA $284c,x ; (seed + 1)
16d5 : 85 49 __ STA T1 + 2 
16d7 : bd 4d 28 LDA $284d,x ; (giocharmap + 0)
.s17:
16da : 85 4a __ STA T1 + 3 
16dc : a5 43 __ LDA T0 + 0 
16de : 85 1b __ STA ACCU + 0 
16e0 : a5 44 __ LDA T0 + 1 
16e2 : 85 1c __ STA ACCU + 1 
16e4 : a5 45 __ LDA T0 + 2 
16e6 : 85 1d __ STA ACCU + 2 
16e8 : a5 46 __ LDA T0 + 3 
16ea : 85 1e __ STA ACCU + 3 
16ec : a2 47 __ LDX #$47
16ee : 20 3b 23 JSR $233b ; (freg + 4)
16f1 : 20 82 23 JSR $2382 ; (faddsub + 6)
16f4 : a5 1c __ LDA ACCU + 1 
16f6 : 85 16 __ STA P9 ; (f + 1)
16f8 : a5 1d __ LDA ACCU + 2 
16fa : 85 17 __ STA P10 ; (f + 2)
16fc : a6 1b __ LDX ACCU + 0 
16fe : a5 1e __ LDA ACCU + 3 
1700 : 85 18 __ STA P11 ; (f + 3)
1702 : 30 3a __ BMI $173e ; (nformf.s18 + 0)
.s46:
1704 : c9 41 __ CMP #$41
1706 : d0 0d __ BNE $1715 ; (nformf.s50 + 0)
.s47:
1708 : a5 17 __ LDA P10 ; (f + 2)
170a : c9 20 __ CMP #$20
170c : d0 07 __ BNE $1715 ; (nformf.s50 + 0)
.s48:
170e : a5 16 __ LDA P9 ; (f + 1)
1710 : d0 03 __ BNE $1715 ; (nformf.s50 + 0)
.s49:
1712 : 8a __ __ TXA
1713 : f0 02 __ BEQ $1717 ; (nformf.s45 + 0)
.s50:
1715 : 90 27 __ BCC $173e ; (nformf.s18 + 0)
.s45:
1717 : a9 00 __ LDA #$00
1719 : 85 03 __ STA WORK + 0 
171b : 85 04 __ STA WORK + 1 
171d : a9 20 __ LDA #$20
171f : 85 05 __ STA WORK + 2 
1721 : a9 41 __ LDA #$41
1723 : 85 06 __ STA WORK + 3 
1725 : 20 4b 23 JSR $234b ; (freg + 20)
1728 : 20 31 25 JSR $2531 ; (crt_fdiv + 0)
172b : a5 1c __ LDA ACCU + 1 
172d : 85 16 __ STA P9 ; (f + 1)
172f : a5 1d __ LDA ACCU + 2 
1731 : 85 17 __ STA P10 ; (f + 2)
1733 : a5 1e __ LDA ACCU + 3 
1735 : 85 18 __ STA P11 ; (f + 3)
1737 : a6 4d __ LDX T3 + 0 
1739 : ca __ __ DEX
173a : 86 52 __ STX T6 + 0 
173c : a6 1b __ LDX ACCU + 0 
.s18:
173e : 38 __ __ SEC
173f : a5 51 __ LDA T5 + 0 
1741 : e5 52 __ SBC T6 + 0 
1743 : 85 4d __ STA T3 + 0 
1745 : a5 51 __ LDA T5 + 0 
1747 : c9 15 __ CMP #$15
1749 : 90 04 __ BCC $174f ; (nformf.s19 + 0)
.s44:
174b : a9 14 __ LDA #$14
174d : 85 51 __ STA T5 + 0 
.s19:
174f : a5 4d __ LDA T3 + 0 
1751 : d0 08 __ BNE $175b ; (nformf.s21 + 0)
.s20:
1753 : a9 30 __ LDA #$30
1755 : a4 54 __ LDY T9 + 0 
1757 : 91 13 __ STA (P6),y ; (str + 0)
1759 : e6 54 __ INC T9 + 0 
.s21:
175b : a9 00 __ LDA #$00
175d : 85 56 __ STA T11 + 0 
175f : c5 4d __ CMP T3 + 0 
1761 : f0 6f __ BEQ $17d2 ; (nformf.l43 + 0)
.s23:
1763 : c9 07 __ CMP #$07
1765 : 90 04 __ BCC $176b ; (nformf.s24 + 0)
.l42:
1767 : a9 30 __ LDA #$30
1769 : b0 55 __ BCS $17c0 ; (nformf.l25 + 0)
.s24:
176b : 86 1b __ STX ACCU + 0 
176d : 86 43 __ STX T0 + 0 
176f : a5 16 __ LDA P9 ; (f + 1)
1771 : 85 1c __ STA ACCU + 1 
1773 : 85 44 __ STA T0 + 1 
1775 : a5 17 __ LDA P10 ; (f + 2)
1777 : 85 1d __ STA ACCU + 2 
1779 : 85 45 __ STA T0 + 2 
177b : a5 18 __ LDA P11 ; (f + 3)
177d : 85 1e __ STA ACCU + 3 
177f : 85 46 __ STA T0 + 3 
1781 : 20 c7 26 JSR $26c7 ; (f32_to_i16 + 0)
1784 : a5 1b __ LDA ACCU + 0 
1786 : 85 53 __ STA T7 + 0 
1788 : 20 13 27 JSR $2713 ; (sint16_to_float + 0)
178b : a2 43 __ LDX #$43
178d : 20 3b 23 JSR $233b ; (freg + 4)
1790 : a5 1e __ LDA ACCU + 3 
1792 : 49 80 __ EOR #$80
1794 : 85 1e __ STA ACCU + 3 
1796 : 20 82 23 JSR $2382 ; (faddsub + 6)
1799 : a9 00 __ LDA #$00
179b : 85 03 __ STA WORK + 0 
179d : 85 04 __ STA WORK + 1 
179f : a9 20 __ LDA #$20
17a1 : 85 05 __ STA WORK + 2 
17a3 : a9 41 __ LDA #$41
17a5 : 85 06 __ STA WORK + 3 
17a7 : 20 4b 23 JSR $234b ; (freg + 20)
17aa : 20 69 24 JSR $2469 ; (crt_fmul + 0)
17ad : a5 1c __ LDA ACCU + 1 
17af : 85 16 __ STA P9 ; (f + 1)
17b1 : a5 1d __ LDA ACCU + 2 
17b3 : 85 17 __ STA P10 ; (f + 2)
17b5 : a5 1e __ LDA ACCU + 3 
17b7 : 85 18 __ STA P11 ; (f + 3)
17b9 : 18 __ __ CLC
17ba : a5 53 __ LDA T7 + 0 
17bc : 69 30 __ ADC #$30
17be : a6 1b __ LDX ACCU + 0 
.l25:
17c0 : a4 54 __ LDY T9 + 0 
17c2 : 91 13 __ STA (P6),y ; (str + 0)
17c4 : e6 54 __ INC T9 + 0 
17c6 : e6 56 __ INC T11 + 0 
17c8 : a5 56 __ LDA T11 + 0 
17ca : c5 51 __ CMP T5 + 0 
17cc : b0 14 __ BCS $17e2 ; (nformf.s26 + 0)
.s22:
17ce : c5 4d __ CMP T3 + 0 
17d0 : d0 91 __ BNE $1763 ; (nformf.s23 + 0)
.l43:
17d2 : a9 2e __ LDA #$2e
17d4 : a4 54 __ LDY T9 + 0 
17d6 : 91 13 __ STA (P6),y ; (str + 0)
17d8 : e6 54 __ INC T9 + 0 
17da : a5 56 __ LDA T11 + 0 
17dc : c9 07 __ CMP #$07
17de : 90 8b __ BCC $176b ; (nformf.s24 + 0)
17e0 : b0 85 __ BCS $1767 ; (nformf.l42 + 0)
.s26:
17e2 : a5 55 __ LDA T10 + 0 
17e4 : f0 66 __ BEQ $184c ; (nformf.s124 + 0)
.s38:
17e6 : a0 03 __ LDY #$03
17e8 : b1 4b __ LDA (T2 + 0),y 
17ea : 69 03 __ ADC #$03
17ec : a4 54 __ LDY T9 + 0 
17ee : 91 13 __ STA (P6),y ; (str + 0)
17f0 : c8 __ __ INY
17f1 : 84 54 __ STY T9 + 0 
17f3 : 24 50 __ BIT T4 + 1 
17f5 : 30 06 __ BMI $17fd ; (nformf.s41 + 0)
.s39:
17f7 : a9 2b __ LDA #$2b
17f9 : 91 13 __ STA (P6),y ; (str + 0)
17fb : d0 11 __ BNE $180e ; (nformf.s40 + 0)
.s41:
17fd : a9 2d __ LDA #$2d
17ff : 91 13 __ STA (P6),y ; (str + 0)
1801 : 38 __ __ SEC
1802 : a9 00 __ LDA #$00
1804 : e5 4f __ SBC T4 + 0 
1806 : 85 4f __ STA T4 + 0 
1808 : a9 00 __ LDA #$00
180a : e5 50 __ SBC T4 + 1 
180c : 85 50 __ STA T4 + 1 
.s40:
180e : e6 54 __ INC T9 + 0 
1810 : a5 4f __ LDA T4 + 0 
1812 : 85 1b __ STA ACCU + 0 
1814 : a5 50 __ LDA T4 + 1 
1816 : 85 1c __ STA ACCU + 1 
1818 : a9 0a __ LDA #$0a
181a : 85 03 __ STA WORK + 0 
181c : a9 00 __ LDA #$00
181e : 85 04 __ STA WORK + 1 
1820 : 20 df 25 JSR $25df ; (divs16 + 0)
1823 : 18 __ __ CLC
1824 : a5 1b __ LDA ACCU + 0 
1826 : 69 30 __ ADC #$30
1828 : a4 54 __ LDY T9 + 0 
182a : 91 13 __ STA (P6),y ; (str + 0)
182c : e6 54 __ INC T9 + 0 
182e : a5 4f __ LDA T4 + 0 
1830 : 85 1b __ STA ACCU + 0 
1832 : a5 50 __ LDA T4 + 1 
1834 : 85 1c __ STA ACCU + 1 
1836 : a9 0a __ LDA #$0a
1838 : 85 03 __ STA WORK + 0 
183a : a9 00 __ LDA #$00
183c : 85 04 __ STA WORK + 1 
183e : 20 9a 26 JSR $269a ; (mods16 + 0)
1841 : 18 __ __ CLC
1842 : a5 05 __ LDA WORK + 2 
1844 : 69 30 __ ADC #$30
1846 : a4 54 __ LDY T9 + 0 
1848 : 91 13 __ STA (P6),y ; (str + 0)
184a : e6 54 __ INC T9 + 0 
.s124:
184c : a5 54 __ LDA T9 + 0 
.s27:
184e : a0 01 __ LDY #$01
1850 : d1 11 __ CMP (P4),y ; (si + 0)
1852 : b0 6b __ BCS $18bf ; (nformf.s3 + 0)
.s28:
1854 : a0 06 __ LDY #$06
1856 : b1 11 __ LDA (P4),y ; (si + 0)
1858 : f0 04 __ BEQ $185e ; (nformf.s29 + 0)
.s110:
185a : a6 54 __ LDX T9 + 0 
185c : 90 6e __ BCC $18cc ; (nformf.l36 + 0)
.s29:
185e : a5 54 __ LDA T9 + 0 
1860 : f0 3e __ BEQ $18a0 ; (nformf.s30 + 0)
.s35:
1862 : e9 00 __ SBC #$00
1864 : a8 __ __ TAY
1865 : a9 00 __ LDA #$00
1867 : e9 00 __ SBC #$00
1869 : aa __ __ TAX
186a : 98 __ __ TYA
186b : 18 __ __ CLC
186c : 65 13 __ ADC P6 ; (str + 0)
186e : 85 47 __ STA T1 + 0 
1870 : 8a __ __ TXA
1871 : 65 14 __ ADC P7 ; (str + 1)
1873 : 85 48 __ STA T1 + 1 
1875 : a9 01 __ LDA #$01
1877 : 85 4b __ STA T2 + 0 
1879 : a6 14 __ LDX P7 ; (str + 1)
187b : 38 __ __ SEC
.l111:
187c : a0 01 __ LDY #$01
187e : b1 11 __ LDA (P4),y ; (si + 0)
1880 : e5 4b __ SBC T2 + 0 
1882 : 85 4d __ STA T3 + 0 
1884 : 8a __ __ TXA
1885 : 69 ff __ ADC #$ff
1887 : 85 4e __ STA T3 + 1 
1889 : 88 __ __ DEY
188a : b1 47 __ LDA (T1 + 0),y 
188c : a4 13 __ LDY P6 ; (str + 0)
188e : 91 4d __ STA (T3 + 0),y 
1890 : a5 47 __ LDA T1 + 0 
1892 : d0 02 __ BNE $1896 ; (nformf.s114 + 0)
.s113:
1894 : c6 48 __ DEC T1 + 1 
.s114:
1896 : c6 47 __ DEC T1 + 0 
1898 : e6 4b __ INC T2 + 0 
189a : a5 54 __ LDA T9 + 0 
189c : c5 4b __ CMP T2 + 0 
189e : b0 dc __ BCS $187c ; (nformf.l111 + 0)
.s30:
18a0 : a9 00 __ LDA #$00
18a2 : 85 4d __ STA T3 + 0 
18a4 : 90 08 __ BCC $18ae ; (nformf.l31 + 0)
.s33:
18a6 : a9 20 __ LDA #$20
18a8 : a4 4d __ LDY T3 + 0 
18aa : 91 13 __ STA (P6),y ; (str + 0)
18ac : e6 4d __ INC T3 + 0 
.l31:
18ae : a0 01 __ LDY #$01
18b0 : b1 11 __ LDA (P4),y ; (si + 0)
18b2 : 38 __ __ SEC
18b3 : e5 54 __ SBC T9 + 0 
18b5 : 90 ef __ BCC $18a6 ; (nformf.s33 + 0)
.s34:
18b7 : c5 4d __ CMP T3 + 0 
18b9 : 90 02 __ BCC $18bd ; (nformf.s32 + 0)
.s112:
18bb : d0 e9 __ BNE $18a6 ; (nformf.s33 + 0)
.s32:
18bd : b1 11 __ LDA (P4),y ; (si + 0)
.s3:
18bf : 85 1b __ STA ACCU + 0 
18c1 : a2 03 __ LDX #$03
18c3 : bd e5 9f LDA $9fe5,x ; (nformf@stack + 0)
18c6 : 95 53 __ STA T7 + 0,x 
18c8 : ca __ __ DEX
18c9 : 10 f8 __ BPL $18c3 ; (nformf.s3 + 4)
18cb : 60 __ __ RTS
.l36:
18cc : 8a __ __ TXA
18cd : a0 01 __ LDY #$01
18cf : d1 11 __ CMP (P4),y ; (si + 0)
18d1 : b0 ea __ BCS $18bd ; (nformf.s32 + 0)
.s37:
18d3 : a8 __ __ TAY
18d4 : a9 20 __ LDA #$20
18d6 : 91 13 __ STA (P6),y ; (str + 0)
18d8 : e8 __ __ INX
18d9 : 90 f1 __ BCC $18cc ; (nformf.l36 + 0)
.s53:
18db : a5 51 __ LDA T5 + 0 
18dd : c9 07 __ CMP #$07
18df : 90 14 __ BCC $18f5 ; (nformf.s62 + 0)
.s54:
18e1 : ad 66 28 LDA $2866 ; (fround5[0] + 24)
18e4 : 85 47 __ STA T1 + 0 
18e6 : ad 67 28 LDA $2867 ; (fround5[0] + 25)
18e9 : 85 48 __ STA T1 + 1 
18eb : ad 68 28 LDA $2868 ; (fround5[0] + 26)
18ee : 85 49 __ STA T1 + 2 
18f0 : ad 69 28 LDA $2869 ; (fround5[0] + 27)
18f3 : b0 15 __ BCS $190a ; (nformf.s55 + 0)
.s62:
18f5 : 0a __ __ ASL
18f6 : 0a __ __ ASL
18f7 : aa __ __ TAX
18f8 : bd 4a 28 LDA $284a,x ; (p_sprite + 0)
18fb : 85 47 __ STA T1 + 0 
18fd : bd 4b 28 LDA $284b,x ; (seed + 0)
1900 : 85 48 __ STA T1 + 1 
1902 : bd 4c 28 LDA $284c,x ; (seed + 1)
1905 : 85 49 __ STA T1 + 2 
1907 : bd 4d 28 LDA $284d,x ; (giocharmap + 0)
.s55:
190a : 85 4a __ STA T1 + 3 
190c : a5 43 __ LDA T0 + 0 
190e : 85 1b __ STA ACCU + 0 
1910 : a5 44 __ LDA T0 + 1 
1912 : 85 1c __ STA ACCU + 1 
1914 : a5 45 __ LDA T0 + 2 
1916 : 85 1d __ STA ACCU + 2 
1918 : a5 46 __ LDA T0 + 3 
191a : 85 1e __ STA ACCU + 3 
191c : a2 47 __ LDX #$47
191e : 20 3b 23 JSR $233b ; (freg + 4)
1921 : 20 82 23 JSR $2382 ; (faddsub + 6)
1924 : a5 1c __ LDA ACCU + 1 
1926 : 85 16 __ STA P9 ; (f + 1)
1928 : a5 1d __ LDA ACCU + 2 
192a : 85 17 __ STA P10 ; (f + 2)
192c : a6 1b __ LDX ACCU + 0 
192e : a5 1e __ LDA ACCU + 3 
1930 : 85 18 __ STA P11 ; (f + 3)
1932 : 10 03 __ BPL $1937 ; (nformf.s57 + 0)
1934 : 4c 3e 17 JMP $173e ; (nformf.s18 + 0)
.s57:
1937 : c9 41 __ CMP #$41
1939 : d0 0d __ BNE $1948 ; (nformf.s61 + 0)
.s58:
193b : a5 17 __ LDA P10 ; (f + 2)
193d : c9 20 __ CMP #$20
193f : d0 07 __ BNE $1948 ; (nformf.s61 + 0)
.s59:
1941 : a5 16 __ LDA P9 ; (f + 1)
1943 : d0 03 __ BNE $1948 ; (nformf.s61 + 0)
.s60:
1945 : 8a __ __ TXA
1946 : f0 02 __ BEQ $194a ; (nformf.s56 + 0)
.s61:
1948 : 90 ea __ BCC $1934 ; (nformf.s55 + 42)
.s56:
194a : a9 00 __ LDA #$00
194c : 85 03 __ STA WORK + 0 
194e : 85 04 __ STA WORK + 1 
1950 : a9 20 __ LDA #$20
1952 : 85 05 __ STA WORK + 2 
1954 : a9 41 __ LDA #$41
1956 : 85 06 __ STA WORK + 3 
1958 : 20 4b 23 JSR $234b ; (freg + 20)
195b : 20 31 25 JSR $2531 ; (crt_fdiv + 0)
195e : a5 1c __ LDA ACCU + 1 
1960 : 85 16 __ STA P9 ; (f + 1)
1962 : a5 1d __ LDA ACCU + 2 
1964 : 85 17 __ STA P10 ; (f + 2)
1966 : a5 1e __ LDA ACCU + 3 
1968 : 85 18 __ STA P11 ; (f + 3)
196a : a6 1b __ LDX ACCU + 0 
196c : e6 4f __ INC T4 + 0 
196e : d0 c4 __ BNE $1934 ; (nformf.s55 + 42)
.s117:
1970 : e6 50 __ INC T4 + 1 
1972 : 4c 3e 17 JMP $173e ; (nformf.s18 + 0)
.s102:
1975 : 85 47 __ STA T1 + 0 
1977 : 8a __ __ TXA
1978 : 18 __ __ CLC
1979 : 65 13 __ ADC P6 ; (str + 0)
197b : 85 43 __ STA T0 + 0 
197d : a5 14 __ LDA P7 ; (str + 1)
197f : 69 00 __ ADC #$00
1981 : 85 44 __ STA T0 + 1 
1983 : a0 03 __ LDY #$03
1985 : b1 11 __ LDA (P4),y ; (si + 0)
1987 : 18 __ __ CLC
1988 : 69 08 __ ADC #$08
198a : a0 00 __ LDY #$00
198c : 91 43 __ STA (T0 + 0),y 
198e : 18 __ __ CLC
198f : a0 03 __ LDY #$03
1991 : b1 11 __ LDA (P4),y ; (si + 0)
1993 : 69 0d __ ADC #$0d
1995 : a0 01 __ LDY #$01
1997 : 91 43 __ STA (T0 + 0),y 
1999 : a0 03 __ LDY #$03
199b : b1 11 __ LDA (P4),y ; (si + 0)
199d : 18 __ __ CLC
199e : 69 05 __ ADC #$05
19a0 : a4 47 __ LDY T1 + 0 
19a2 : 91 13 __ STA (P6),y ; (str + 0)
19a4 : 18 __ __ CLC
19a5 : a5 54 __ LDA T9 + 0 
19a7 : 69 03 __ ADC #$03
19a9 : 85 54 __ STA T9 + 0 
19ab : 4c 4e 18 JMP $184e ; (nformf.s27 + 0)
.s104:
19ae : 20 bf 19 JSR $19bf ; (isinf.s4 + 0)
19b1 : a2 01 __ LDX #$01
19b3 : 86 54 __ STX T9 + 0 
19b5 : a8 __ __ TAY
19b6 : d0 03 __ BNE $19bb ; (nformf.s105 + 0)
19b8 : 4c c5 14 JMP $14c5 ; (nformf.s7 + 0)
.s105:
19bb : a9 03 __ LDA #$03
19bd : d0 b6 __ BNE $1975 ; (nformf.s102 + 0)
--------------------------------------------------------------------
isinf: ; isinf(float)->bool
;  26, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/math.h"
.s4:
19bf : 06 0f __ ASL P2 ; (f + 2)
19c1 : a5 10 __ LDA P3 ; (f + 3)
19c3 : 2a __ __ ROL
19c4 : c9 ff __ CMP #$ff
19c6 : d0 03 __ BNE $19cb ; (isinf.s6 + 0)
.s5:
19c8 : a9 01 __ LDA #$01
19ca : 60 __ __ RTS
.s6:
19cb : a9 00 __ LDA #$00
.s3:
19cd : 60 __ __ RTS
--------------------------------------------------------------------
19ce : __ __ __ BYT 93 00                                           : ..
--------------------------------------------------------------------
19d0 : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
19e0 : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
19f0 : __ __ __ BYT 23 23 23 23 23 23 23 23 00                      : ########.
--------------------------------------------------------------------
19f9 : __ __ __ BYT 23 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : #ooooooooooooooo
1a09 : __ __ __ BYT 6f 6f 6f 23 23 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : ooo##ooooooooooo
1a19 : __ __ __ BYT 6f 6f 6f 6f 6f 6f 6f 23 00                      : ooooooo#.
--------------------------------------------------------------------
1a22 : __ __ __ BYT 23 6f 23 23 23 23 6f 23 23 23 23 23 23 23 6f 23 : #o####o#######o#
1a32 : __ __ __ BYT 23 23 6f 23 23 6f 23 23 23 6f 23 23 23 23 23 23 : ##o##o###o######
1a42 : __ __ __ BYT 23 6f 23 23 23 23 6f 23 00                      : #o####o#.
--------------------------------------------------------------------
1a4b : __ __ __ BYT 23 6f 78 23 23 23 6f 23 23 23 23 23 23 23 6f 23 : #ox###o#######o#
1a5b : __ __ __ BYT 23 23 6f 23 23 6f 23 23 23 6f 23 23 23 23 23 23 : ##o##o###o######
1a6b : __ __ __ BYT 23 6f 23 23 23 78 6f 23 00                      : #o###xo#.
--------------------------------------------------------------------
1a74 : __ __ __ BYT 23 6f 23 23 23 23 6f 23 23 23 23 23 23 23 6f 23 : #o####o#######o#
1a84 : __ __ __ BYT 23 23 6f 23 23 6f 23 23 23 6f 23 23 23 23 23 23 : ##o##o###o######
1a94 : __ __ __ BYT 23 6f 23 23 23 23 6f 23 00                      : #o####o#.
--------------------------------------------------------------------
1a9d : __ __ __ BYT 23 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : #ooooooooooooooo
1aad : __ __ __ BYT 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : oooooooooooooooo
1abd : __ __ __ BYT 6f 6f 6f 6f 6f 6f 6f 23 00                      : ooooooo#.
--------------------------------------------------------------------
1ac6 : __ __ __ BYT 23 6f 23 23 23 23 6f 23 23 6f 23 23 23 23 23 23 : #o####o##o######
1ad6 : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 6f 23 : ##############o#
1ae6 : __ __ __ BYT 23 6f 23 23 23 23 6f 23 00                      : #o####o#.
--------------------------------------------------------------------
1aef : __ __ __ BYT 23 6f 23 23 23 23 6f 23 23 6f 23 23 23 23 23 23 : #o####o##o######
1aff : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 6f 23 : ##############o#
1b0f : __ __ __ BYT 23 6f 23 23 23 23 6f 23 00                      : #o####o#.
--------------------------------------------------------------------
1b18 : __ __ __ BYT 23 6f 6f 6f 6f 6f 6f 23 23 6f 6f 6f 6f 6f 6f 6f : #oooooo##ooooooo
1b28 : __ __ __ BYT 6f 6f 6f 23 23 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 23 : ooo##oooooooooo#
1b38 : __ __ __ BYT 23 6f 6f 6f 6f 6f 6f 23 00                      : #oooooo#.
--------------------------------------------------------------------
1b41 : __ __ __ BYT 23 23 23 23 23 23 6f 23 23 23 23 23 23 23 23 23 : ######o#########
1b51 : __ __ __ BYT 23 23 20 23 23 20 23 23 23 23 23 23 23 23 23 23 : ## ## ##########
1b61 : __ __ __ BYT 23 6f 23 23 23 23 23 23 00                      : #o######.
--------------------------------------------------------------------
1b6a : __ __ __ BYT 20 20 20 20 20 23 6f 23 23 20 20 20 20 20 20 20 :      #o##       
1b7a : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 23 :                #
1b8a : __ __ __ BYT 23 6f 23 20 20 20 20 20 00                      : #o#     .
--------------------------------------------------------------------
1b93 : __ __ __ BYT 23 23 23 23 23 23 6f 23 23 20 23 23 23 23 23 23 : ######o## ######
1ba3 : __ __ __ BYT 23 23 23 20 20 23 23 23 23 23 23 23 23 23 20 23 : ###  ######### #
1bb3 : __ __ __ BYT 23 6f 23 23 23 23 23 23 00                      : #o######.
--------------------------------------------------------------------
1bbc : __ __ __ BYT 23 6f 6f 6f 6f 6f 6f 6f 6f 20 23 6d 20 20 20 20 : #oooooooo #m    
1bcc : __ __ __ BYT 20 20 20 20 20 20 20 20 20 20 20 20 20 23 20 6f :              # o
1bdc : __ __ __ BYT 6f 6f 6f 6f 6f 6f 6f 23 00                      : ooooooo#.
--------------------------------------------------------------------
1be5 : __ __ __ BYT 23 23 23 23 23 23 6f 23 23 20 23 20 20 20 20 20 : ######o## #     
1bf5 : __ __ __ BYT 20 20 20 77 20 20 20 20 20 20 20 20 20 23 20 23 :    w         # #
1c05 : __ __ __ BYT 23 6f 23 23 23 23 23 23 00                      : #o######.
--------------------------------------------------------------------
1c0e : __ __ __ BYT 20 20 20 20 20 23 6f 23 23 20 23 23 23 23 23 23 :      #o## ######
1c1e : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 20 23 : ############## #
1c2e : __ __ __ BYT 23 6f 23 20 20 20 20 20 00                      : #o#     .
--------------------------------------------------------------------
1c37 : __ __ __ BYT 23 23 23 23 23 23 6f 23 23 20 23 23 23 23 23 23 : ######o## ######
1c47 : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 20 23 : ############## #
1c57 : __ __ __ BYT 23 6f 23 23 23 23 23 23 00                      : #o######.
--------------------------------------------------------------------
1c60 : __ __ __ BYT 23 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : #ooooooooooooooo
1c70 : __ __ __ BYT 6f 6f 6f 23 23 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : ooo##ooooooooooo
1c80 : __ __ __ BYT 6f 6f 6f 6f 6f 6f 6f 23 00                      : ooooooo#.
--------------------------------------------------------------------
1c89 : __ __ __ BYT 23 6f 23 23 23 23 6f 23 23 23 23 23 23 23 23 23 : #o####o#########
1c99 : __ __ __ BYT 23 23 6f 23 23 6f 23 23 23 23 23 23 23 23 23 23 : ##o##o##########
1ca9 : __ __ __ BYT 23 6f 23 23 23 23 6f 23 00                      : #o####o#.
--------------------------------------------------------------------
1cb2 : __ __ __ BYT 23 6f 78 23 23 6f 6f 6f 6f 6f 6f 6f 20 20 20 20 : #ox##ooooooo    
1cc2 : __ __ __ BYT 20 20 20 5e 20 20 20 20 20 20 20 20 6f 6f 6f 6f :    ^        oooo
1cd2 : __ __ __ BYT 6f 6f 6f 23 23 78 6f 23 00                      : ooo##xo#.
--------------------------------------------------------------------
1cdb : __ __ __ BYT 23 23 6f 23 23 6f 23 23 6f 23 23 23 23 23 23 23 : ##o##o##o#######
1ceb : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 6f : ###############o
1cfb : __ __ __ BYT 23 23 6f 23 23 6f 23 23 00                      : ##o##o##.
--------------------------------------------------------------------
1d04 : __ __ __ BYT 23 6f 6f 6f 6f 6f 23 23 6f 6f 6f 6f 6f 6f 6f 6f : #ooooo##oooooooo
1d14 : __ __ __ BYT 6f 6f 6f 23 23 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f 6f : ooo##ooooooooooo
1d24 : __ __ __ BYT 23 23 6f 6f 6f 6f 6f 23 00                      : ##ooooo#.
--------------------------------------------------------------------
1d2d : __ __ __ BYT 23 6f 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : #o##############
1d3d : __ __ __ BYT 23 23 6f 23 23 6f 23 23 23 23 23 23 23 23 23 23 : ##o##o##########
1d4d : __ __ __ BYT 23 23 23 23 23 23 6f 23 00                      : ######o#.
--------------------------------------------------------------------
1d56 : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
1d66 : __ __ __ BYT 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 : ################
1d76 : __ __ __ BYT 23 23 23 23 23 23 23 23 00                      : ########.
--------------------------------------------------------------------
get_v: ; get_v(i16,i16)->u8
;  54, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64fullscreenmaze.c"
.s4:
1d7f : a5 0d __ LDA P0 ; (x + 0)
1d81 : 85 1b __ STA ACCU + 0 
1d83 : a5 0e __ LDA P1 ; (x + 1)
1d85 : 85 1c __ STA ACCU + 1 
1d87 : a9 17 __ LDA #$17
1d89 : 20 ff 22 JSR $22ff ; (mul16by8 + 0)
1d8c : 18 __ __ CLC
1d8d : a9 9a __ LDA #$9a
1d8f : 65 1b __ ADC ACCU + 0 
1d91 : 85 1b __ STA ACCU + 0 
1d93 : a9 28 __ LDA #$28
1d95 : 65 1c __ ADC ACCU + 1 
1d97 : 85 1c __ STA ACCU + 1 
1d99 : a4 0f __ LDY P2 ; (y + 0)
1d9b : b1 1b __ LDA (ACCU + 0),y 
1d9d : c9 01 __ CMP #$01
1d9f : d0 03 __ BNE $1da4 ; (get_v.s5 + 0)
.s10:
1da1 : a9 a0 __ LDA #$a0
.s3:
1da3 : 60 __ __ RTS
.s5:
1da4 : c9 02 __ CMP #$02
1da6 : d0 03 __ BNE $1dab ; (get_v.s6 + 0)
.s9:
1da8 : a9 2e __ LDA #$2e
1daa : 60 __ __ RTS
.s6:
1dab : c9 03 __ CMP #$03
1dad : d0 03 __ BNE $1db2 ; (get_v.s7 + 0)
.s8:
1daf : a9 57 __ LDA #$57
1db1 : 60 __ __ RTS
.s7:
1db2 : a9 20 __ LDA #$20
1db4 : 60 __ __ RTS
--------------------------------------------------------------------
draw_hud: ; draw_hud()->void
;  75, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64fullscreenmaze.c"
.s4:
1db5 : a9 a2 __ LDA #$a2
1db7 : 8d f6 9f STA $9ff6 ; (sstack + 8)
1dba : a9 9f __ LDA #$9f
1dbc : 8d f7 9f STA $9ff7 ; (sstack + 9)
1dbf : a9 59 __ LDA #$59
1dc1 : 8d f8 9f STA $9ff8 ; (sstack + 10)
1dc4 : a9 1e __ LDA #$1e
1dc6 : 8d f9 9f STA $9ff9 ; (sstack + 11)
1dc9 : ad 42 28 LDA $2842 ; (sc + 0)
1dcc : 8d fa 9f STA $9ffa ; (sstack + 12)
1dcf : ad 43 28 LDA $2843 ; (sc + 1)
1dd2 : 8d fb 9f STA $9ffb ; (sstack + 13)
1dd5 : ad 44 28 LDA $2844 ; (li + 0)
1dd8 : 8d fc 9f STA $9ffc ; (sstack + 14)
1ddb : ad 45 28 LDA $2845 ; (li + 1)
1dde : 8d fd 9f STA $9ffd ; (sstack + 15)
1de1 : ad 46 28 LDA $2846 ; (pm + 0)
1de4 : 8d fe 9f STA $9ffe ; (sstack + 16)
1de7 : ad 47 28 LDA $2847 ; (pm + 1)
1dea : 8d ff 9f STA $9fff ; (sstack + 17)
1ded : 20 09 1e JSR $1e09 ; (sprintf.s1 + 0)
1df0 : a9 00 __ LDA #$00
1df2 : 85 13 __ STA P6 
1df4 : 85 15 __ STA P8 
1df6 : a9 01 __ LDA #$01
1df8 : 85 12 __ STA P5 
1dfa : a9 18 __ LDA #$18
1dfc : 85 14 __ STA P7 
1dfe : a9 9f __ LDA #$9f
1e00 : 85 17 __ STA P10 
1e02 : a9 a2 __ LDA #$a2
1e04 : 85 16 __ STA P9 
1e06 : 4c 7d 1e JMP $1e7d ; (draw_text.s4 + 0)
--------------------------------------------------------------------
sprintf: ; sprintf(u8*,const u8*)->i16
;  20, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdio.h"
.s1:
1e09 : a5 53 __ LDA T1 + 0 
1e0b : 8d ca 9f STA $9fca ; (sprintf@stack + 0)
1e0e : a5 54 __ LDA T1 + 1 
1e10 : 8d cb 9f STA $9fcb ; (sprintf@stack + 1)
.s4:
1e13 : ad f6 9f LDA $9ff6 ; (sstack + 8)
1e16 : 85 53 __ STA T1 + 0 
1e18 : 8d ef 9f STA $9fef ; (sstack + 1)
1e1b : a9 00 __ LDA #$00
1e1d : 8d f5 9f STA $9ff5 ; (sstack + 7)
1e20 : ad f7 9f LDA $9ff7 ; (sstack + 9)
1e23 : 85 54 __ STA T1 + 1 
1e25 : 8d f0 9f STA $9ff0 ; (sstack + 2)
1e28 : ad f8 9f LDA $9ff8 ; (sstack + 10)
1e2b : 8d f1 9f STA $9ff1 ; (sstack + 3)
1e2e : ad f9 9f LDA $9ff9 ; (sstack + 11)
1e31 : 8d f2 9f STA $9ff2 ; (sstack + 4)
1e34 : a9 fa __ LDA #$fa
1e36 : 8d f3 9f STA $9ff3 ; (sstack + 5)
1e39 : a9 9f __ LDA #$9f
1e3b : 8d f4 9f STA $9ff4 ; (sstack + 6)
1e3e : 20 3a 0d JSR $0d3a ; (sformat.s1 + 0)
1e41 : 38 __ __ SEC
1e42 : a5 1b __ LDA ACCU + 0 
1e44 : e5 53 __ SBC T1 + 0 
1e46 : 85 1b __ STA ACCU + 0 
1e48 : a5 1c __ LDA ACCU + 1 
1e4a : e5 54 __ SBC T1 + 1 
1e4c : 85 1c __ STA ACCU + 1 
.s3:
1e4e : ad ca 9f LDA $9fca ; (sprintf@stack + 0)
1e51 : 85 53 __ STA T1 + 0 
1e53 : ad cb 9f LDA $9fcb ; (sprintf@stack + 1)
1e56 : 85 54 __ STA T1 + 1 
1e58 : 60 __ __ RTS
--------------------------------------------------------------------
1e59 : __ __ __ BYT 53 43 4f 52 45 3a 20 25 2d 35 64 20 4c 49 56 45 : SCORE: %-5d LIVE
1e69 : __ __ __ BYT 53 3a 20 25 64 20 20 20 50 4f 57 45 52 3a 20 25 : S: %d   POWER: %
1e79 : __ __ __ BYT 2d 32 64 00                                     : -2d.
--------------------------------------------------------------------
draw_text: ; draw_text(i16,i16,const u8*)->void
;  66, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64fullscreenmaze.c"
.s4:
1e7d : a9 00 __ LDA #$00
1e7f : 85 43 __ STA T2 + 0 
1e81 : 85 44 __ STA T2 + 1 
1e83 : a5 16 __ LDA P9 ; (str + 0)
1e85 : 85 0d __ STA P0 
.l17:
1e87 : a5 17 __ LDA P10 ; (str + 1)
1e89 : 85 0e __ STA P1 
1e8b : 20 1b 1f JSR $1f1b ; (strlen.s4 + 0)
1e8e : a5 44 __ LDA T2 + 1 
1e90 : c5 1c __ CMP ACCU + 1 
1e92 : d0 08 __ BNE $1e9c ; (draw_text.s15 + 0)
.s12:
1e94 : a5 43 __ LDA T2 + 0 
1e96 : c5 1b __ CMP ACCU + 0 
.s13:
1e98 : b0 08 __ BCS $1ea2 ; (draw_text.s3 + 0)
1e9a : 90 07 __ BCC $1ea3 ; (draw_text.s5 + 0)
.s15:
1e9c : 45 1c __ EOR ACCU + 1 
1e9e : 10 f8 __ BPL $1e98 ; (draw_text.s13 + 0)
.s14:
1ea0 : b0 01 __ BCS $1ea3 ; (draw_text.s5 + 0)
.s3:
1ea2 : 60 __ __ RTS
.s5:
1ea3 : a5 43 __ LDA T2 + 0 
1ea5 : 85 1b __ STA ACCU + 0 
1ea7 : 18 __ __ CLC
1ea8 : a5 17 __ LDA P10 ; (str + 1)
1eaa : 65 44 __ ADC T2 + 1 
1eac : 85 1c __ STA ACCU + 1 
1eae : a4 16 __ LDY P9 ; (str + 0)
1eb0 : b1 1b __ LDA (ACCU + 0),y 
1eb2 : 85 1d __ STA ACCU + 2 
1eb4 : c9 41 __ CMP #$41
1eb6 : 90 17 __ BCC $1ecf ; (draw_text.s7 + 0)
.s10:
1eb8 : c9 5b __ CMP #$5b
1eba : b0 07 __ BCS $1ec3 ; (draw_text.s6 + 0)
.s11:
1ebc : e9 3f __ SBC #$3f
.s16:
1ebe : 85 1d __ STA ACCU + 2 
1ec0 : 4c cf 1e JMP $1ecf ; (draw_text.s7 + 0)
.s6:
1ec3 : c9 61 __ CMP #$61
1ec5 : 90 08 __ BCC $1ecf ; (draw_text.s7 + 0)
.s8:
1ec7 : c9 7b __ CMP #$7b
1ec9 : b0 04 __ BCS $1ecf ; (draw_text.s7 + 0)
.s9:
1ecb : e9 5f __ SBC #$5f
1ecd : 85 1d __ STA ACCU + 2 
.s7:
1ecf : 18 __ __ CLC
1ed0 : a5 12 __ LDA P5 ; (x + 0)
1ed2 : 65 43 __ ADC T2 + 0 
1ed4 : aa __ __ TAX
1ed5 : a5 13 __ LDA P6 ; (x + 1)
1ed7 : 65 44 __ ADC T2 + 1 
1ed9 : 85 1c __ STA ACCU + 1 
1edb : a5 14 __ LDA P7 ; (y + 0)
1edd : 0a __ __ ASL
1ede : 85 07 __ STA WORK + 4 
1ee0 : a5 15 __ LDA P8 ; (y + 1)
1ee2 : 2a __ __ ROL
1ee3 : 06 07 __ ASL WORK + 4 
1ee5 : 2a __ __ ROL
1ee6 : a8 __ __ TAY
1ee7 : 18 __ __ CLC
1ee8 : a5 07 __ LDA WORK + 4 
1eea : 65 14 __ ADC P7 ; (y + 0)
1eec : 85 1b __ STA ACCU + 0 
1eee : 98 __ __ TYA
1eef : 65 15 __ ADC P8 ; (y + 1)
1ef1 : 06 1b __ ASL ACCU + 0 
1ef3 : 2a __ __ ROL
1ef4 : 06 1b __ ASL ACCU + 0 
1ef6 : 2a __ __ ROL
1ef7 : 06 1b __ ASL ACCU + 0 
1ef9 : 2a __ __ ROL
1efa : a8 __ __ TAY
1efb : 8a __ __ TXA
1efc : 18 __ __ CLC
1efd : 65 1b __ ADC ACCU + 0 
1eff : 85 1b __ STA ACCU + 0 
1f01 : 98 __ __ TYA
1f02 : 65 1c __ ADC ACCU + 1 
1f04 : 18 __ __ CLC
1f05 : 69 04 __ ADC #$04
1f07 : 85 1c __ STA ACCU + 1 
1f09 : a5 1d __ LDA ACCU + 2 
1f0b : a0 00 __ LDY #$00
1f0d : 91 1b __ STA (ACCU + 0),y 
1f0f : e6 43 __ INC T2 + 0 
1f11 : f0 03 __ BEQ $1f16 ; (draw_text.s18 + 0)
1f13 : 4c 87 1e JMP $1e87 ; (draw_text.l17 + 0)
.s18:
1f16 : e6 44 __ INC T2 + 1 
1f18 : 4c 87 1e JMP $1e87 ; (draw_text.l17 + 0)
--------------------------------------------------------------------
strlen: ; strlen(const u8*)->i16
;  12, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/string.h"
.s4:
1f1b : a9 00 __ LDA #$00
1f1d : 85 1b __ STA ACCU + 0 
1f1f : 85 1c __ STA ACCU + 1 
1f21 : a8 __ __ TAY
1f22 : b1 0d __ LDA (P0),y ; (str + 0)
1f24 : f0 10 __ BEQ $1f36 ; (strlen.s3 + 0)
.s6:
1f26 : a2 00 __ LDX #$00
.l7:
1f28 : c8 __ __ INY
1f29 : d0 03 __ BNE $1f2e ; (strlen.s9 + 0)
.s8:
1f2b : e6 0e __ INC P1 ; (str + 1)
1f2d : e8 __ __ INX
.s9:
1f2e : b1 0d __ LDA (P0),y ; (str + 0)
1f30 : d0 f6 __ BNE $1f28 ; (strlen.l7 + 0)
.s5:
1f32 : 86 1c __ STX ACCU + 1 
1f34 : 84 1b __ STY ACCU + 0 
.s3:
1f36 : 60 __ __ RTS
--------------------------------------------------------------------
1f37 : __ __ __ BYT 59 4f 55 20 57 49 4e 21 00                      : YOU WIN!.
--------------------------------------------------------------------
1f40 : __ __ __ BYT 47 41 4d 45 20 4f 56 45 52 21 00                : GAME OVER!.
--------------------------------------------------------------------
kbhit: ; kbhit()->u8
;  79, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.s4:
1f4b : a5 c6 __ LDA $c6 
1f4d : 85 1b __ STA ACCU + 0 
.s3:
1f4f : a5 1b __ LDA ACCU + 0 
1f51 : 60 __ __ RTS
--------------------------------------------------------------------
getch: ; getch()->u8
;  83, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.h"
.l4:
1f52 : 20 e4 ff JSR $ffe4 
1f55 : 85 1b __ STA ACCU + 0 
1f57 : a5 1b __ LDA ACCU + 0 
1f59 : f0 f7 __ BEQ $1f52 ; (getch.l4 + 0)
.s5:
1f5b : 4c 5e 1f JMP $1f5e ; (convch.s4 + 0)
--------------------------------------------------------------------
convch: ; convch(u8)->u8
; 242, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/conio.c"
.s4:
1f5e : a8 __ __ TAY
1f5f : ad 4d 28 LDA $284d ; (giocharmap + 0)
1f62 : f0 27 __ BEQ $1f8b ; (convch.s5 + 0)
.s6:
1f64 : c0 0d __ CPY #$0d
1f66 : d0 03 __ BNE $1f6b ; (convch.s7 + 0)
.s16:
1f68 : a9 0a __ LDA #$0a
.s3:
1f6a : 60 __ __ RTS
.s7:
1f6b : c9 02 __ CMP #$02
1f6d : 90 1c __ BCC $1f8b ; (convch.s5 + 0)
.s8:
1f6f : 98 __ __ TYA
1f70 : c0 41 __ CPY #$41
1f72 : 90 17 __ BCC $1f8b ; (convch.s5 + 0)
.s9:
1f74 : c9 db __ CMP #$db
1f76 : b0 13 __ BCS $1f8b ; (convch.s5 + 0)
.s10:
1f78 : c9 c1 __ CMP #$c1
1f7a : 90 03 __ BCC $1f7f ; (convch.s11 + 0)
.s15:
1f7c : 49 a0 __ EOR #$a0
1f7e : a8 __ __ TAY
.s11:
1f7f : c9 7b __ CMP #$7b
1f81 : b0 08 __ BCS $1f8b ; (convch.s5 + 0)
.s12:
1f83 : c9 61 __ CMP #$61
1f85 : b0 06 __ BCS $1f8d ; (convch.s14 + 0)
.s13:
1f87 : c9 5b __ CMP #$5b
1f89 : 90 02 __ BCC $1f8d ; (convch.s14 + 0)
.s5:
1f8b : 98 __ __ TYA
1f8c : 60 __ __ RTS
.s14:
1f8d : 49 20 __ EOR #$20
1f8f : 60 __ __ RTS
--------------------------------------------------------------------
check_collisions: ; check_collisions()->void
; 106, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64fullscreenmaze.c"
.s4:
1f90 : a9 00 __ LDA #$00
1f92 : 85 45 __ STA T2 + 0 
.l5:
1f94 : 0a __ __ ASL
1f95 : 85 43 __ STA T0 + 0 
1f97 : a8 __ __ TAY
1f98 : ad 33 2c LDA $2c33 ; (px + 1)
1f9b : d9 37 2c CMP $2c37,y ; (gx[0] + 1)
1f9e : d0 47 __ BNE $1fe7 ; (check_collisions.s6 + 0)
.s13:
1fa0 : ad 32 2c LDA $2c32 ; (px + 0)
1fa3 : d9 36 2c CMP $2c36,y ; (gx[0] + 0)
1fa6 : d0 3f __ BNE $1fe7 ; (check_collisions.s6 + 0)
.s7:
1fa8 : ad 35 2c LDA $2c35 ; (py + 1)
1fab : d9 3b 2c CMP $2c3b,y ; (gy[0] + 1)
1fae : d0 37 __ BNE $1fe7 ; (check_collisions.s6 + 0)
.s12:
1fb0 : ad 34 2c LDA $2c34 ; (py + 0)
1fb3 : d9 3a 2c CMP $2c3a,y ; (gy[0] + 0)
1fb6 : d0 2f __ BNE $1fe7 ; (check_collisions.s6 + 0)
.s8:
1fb8 : ad 47 28 LDA $2847 ; (pm + 1)
1fbb : 30 05 __ BMI $1fc2 ; (check_collisions.s9 + 0)
.s11:
1fbd : 0d 46 28 ORA $2846 ; (pm + 0)
1fc0 : d0 2e __ BNE $1ff0 ; (check_collisions.s10 + 0)
.s9:
1fc2 : a9 00 __ LDA #$00
1fc4 : 8d 35 2c STA $2c35 ; (py + 1)
1fc7 : 8d 33 2c STA $2c33 ; (px + 1)
1fca : a9 51 __ LDA #$51
1fcc : 8d 4a 28 STA $284a ; (p_sprite + 0)
1fcf : a9 12 __ LDA #$12
1fd1 : 8d 34 2c STA $2c34 ; (py + 0)
1fd4 : ad 44 28 LDA $2844 ; (li + 0)
1fd7 : 18 __ __ CLC
1fd8 : 69 ff __ ADC #$ff
1fda : 8d 44 28 STA $2844 ; (li + 0)
1fdd : a9 13 __ LDA #$13
1fdf : 8d 32 2c STA $2c32 ; (px + 0)
1fe2 : b0 03 __ BCS $1fe7 ; (check_collisions.s6 + 0)
.s15:
1fe4 : ce 45 28 DEC $2845 ; (li + 1)
.s6:
1fe7 : e6 45 __ INC T2 + 0 
1fe9 : a5 45 __ LDA T2 + 0 
1feb : c9 02 __ CMP #$02
1fed : 90 a5 __ BCC $1f94 ; (check_collisions.l5 + 0)
.s3:
1fef : 60 __ __ RTS
.s10:
1ff0 : b9 36 2c LDA $2c36,y ; (gx[0] + 0)
1ff3 : 85 0d __ STA P0 
1ff5 : b9 37 2c LDA $2c37,y ; (gx[0] + 1)
1ff8 : 85 0e __ STA P1 
1ffa : b9 3a 2c LDA $2c3a,y ; (gy[0] + 0)
1ffd : 85 0f __ STA P2 
1fff : b9 3b 2c LDA $2c3b,y ; (gy[0] + 1)
2002 : 85 10 __ STA P3 
2004 : 20 7f 1d JSR $1d7f ; (get_v.s4 + 0)
2007 : aa __ __ TAX
2008 : a9 0c __ LDA #$0c
200a : a4 43 __ LDY T0 + 0 
200c : 99 3a 2c STA $2c3a,y ; (gy[0] + 0)
200f : a9 00 __ LDA #$00
2011 : 99 3b 2c STA $2c3b,y ; (gy[0] + 1)
2014 : 99 37 2c STA $2c37,y ; (gx[0] + 1)
2017 : a9 12 __ LDA #$12
2019 : 99 36 2c STA $2c36,y ; (gx[0] + 0)
201c : a5 0f __ LDA P2 
201e : 0a __ __ ASL
201f : 85 1b __ STA ACCU + 0 
2021 : a5 10 __ LDA P3 
2023 : 2a __ __ ROL
2024 : 06 1b __ ASL ACCU + 0 
2026 : 2a __ __ ROL
2027 : a8 __ __ TAY
2028 : 18 __ __ CLC
2029 : a5 1b __ LDA ACCU + 0 
202b : 65 0f __ ADC P2 
202d : 85 43 __ STA T0 + 0 
202f : 98 __ __ TYA
2030 : 65 10 __ ADC P3 
2032 : 06 43 __ ASL T0 + 0 
2034 : 2a __ __ ROL
2035 : 06 43 __ ASL T0 + 0 
2037 : 2a __ __ ROL
2038 : 06 43 __ ASL T0 + 0 
203a : 2a __ __ ROL
203b : a8 __ __ TAY
203c : 18 __ __ CLC
203d : a5 43 __ LDA T0 + 0 
203f : 65 0d __ ADC P0 
2041 : 85 43 __ STA T0 + 0 
2043 : 98 __ __ TYA
2044 : 65 0e __ ADC P1 
2046 : 18 __ __ CLC
2047 : 69 04 __ ADC #$04
2049 : 85 44 __ STA T0 + 1 
204b : 8a __ __ TXA
204c : a0 00 __ LDY #$00
204e : 91 43 __ STA (T0 + 0),y 
2050 : ad 42 28 LDA $2842 ; (sc + 0)
2053 : 18 __ __ CLC
2054 : 69 c8 __ ADC #$c8
2056 : 8d 42 28 STA $2842 ; (sc + 0)
2059 : 90 8c __ BCC $1fe7 ; (check_collisions.s6 + 0)
.s14:
205b : ee 43 28 INC $2843 ; (sc + 1)
205e : b0 87 __ BCS $1fe7 ; (check_collisions.s6 + 0)
--------------------------------------------------------------------
update_ghosts: ; update_ghosts()->void
; 124, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64fullscreenmaze.c"
.s1:
2060 : a5 53 __ LDA T11 + 0 
2062 : 8d e4 9f STA $9fe4 ; (update_ghosts@stack + 0)
2065 : a5 54 __ LDA T11 + 1 
2067 : 8d e5 9f STA $9fe5 ; (update_ghosts@stack + 1)
206a : a5 55 __ LDA T13 + 0 
206c : 8d e6 9f STA $9fe6 ; (update_ghosts@stack + 2)
.s4:
206f : ad 47 28 LDA $2847 ; (pm + 1)
2072 : 10 1f __ BPL $2093 ; (update_ghosts.s6 + 0)
.s5:
2074 : a9 00 __ LDA #$00
.s7:
2076 : 85 52 __ STA T12 + 0 
2078 : 8d 98 28 STA $2898 ; (skip_turn + 0)
207b : 8d 99 28 STA $2899 ; (skip_turn + 1)
.s8:
207e : ad 46 28 LDA $2846 ; (pm + 0)
2081 : 0d 47 28 ORA $2847 ; (pm + 1)
2084 : c9 01 __ CMP #$01
2086 : a9 00 __ LDA #$00
2088 : 85 47 __ STA T3 + 0 
208a : 69 ff __ ADC #$ff
208c : 29 01 __ AND #$01
208e : 85 55 __ STA T13 + 0 
2090 : 4c c2 20 JMP $20c2 ; (update_ghosts.l9 + 0)
.s6:
2093 : 0d 46 28 ORA $2846 ; (pm + 0)
2096 : f0 de __ BEQ $2076 ; (update_ghosts.s7 + 0)
.s47:
2098 : ad 98 28 LDA $2898 ; (skip_turn + 0)
209b : 0d 99 28 ORA $2899 ; (skip_turn + 1)
209e : c9 01 __ CMP #$01
20a0 : a9 01 __ LDA #$01
20a2 : 85 52 __ STA T12 + 0 
20a4 : a9 00 __ LDA #$00
20a6 : 8d 99 28 STA $2899 ; (skip_turn + 1)
20a9 : 69 ff __ ADC #$ff
20ab : 29 01 __ AND #$01
20ad : 8d 98 28 STA $2898 ; (skip_turn + 0)
20b0 : f0 cc __ BEQ $207e ; (update_ghosts.s8 + 0)
.s3:
20b2 : ad e4 9f LDA $9fe4 ; (update_ghosts@stack + 0)
20b5 : 85 53 __ STA T11 + 0 
20b7 : ad e5 9f LDA $9fe5 ; (update_ghosts@stack + 1)
20ba : 85 54 __ STA T11 + 1 
20bc : ad e6 9f LDA $9fe6 ; (update_ghosts@stack + 2)
20bf : 85 55 __ STA T13 + 0 
20c1 : 60 __ __ RTS
.l9:
20c2 : a9 ff __ LDA #$ff
20c4 : 85 48 __ STA T4 + 0 
20c6 : 85 49 __ STA T4 + 1 
20c8 : a5 55 __ LDA T13 + 0 
20ca : f0 0d __ BEQ $20d9 ; (update_ghosts.s10 + 0)
.s44:
20cc : a6 47 __ LDX T3 + 0 
20ce : ca __ __ DEX
20cf : d0 08 __ BNE $20d9 ; (update_ghosts.s10 + 0)
.s45:
20d1 : a9 e7 __ LDA #$e7
20d3 : 85 48 __ STA T4 + 0 
20d5 : a9 03 __ LDA #$03
20d7 : 85 49 __ STA T4 + 1 
.s10:
20d9 : a9 00 __ LDA #$00
20db : 85 4a __ STA T5 + 0 
20dd : 85 4b __ STA T5 + 1 
20df : 85 1b __ STA ACCU + 0 
20e1 : 85 1c __ STA ACCU + 1 
20e3 : a9 ff __ LDA #$ff
20e5 : 85 43 __ STA T1 + 0 
20e7 : 85 44 __ STA T1 + 1 
20e9 : a9 01 __ LDA #$01
20eb : 85 4c __ STA T6 + 0 
20ed : a5 47 __ LDA T3 + 0 
20ef : 0a __ __ ASL
20f0 : 85 4f __ STA T9 + 0 
20f2 : aa __ __ TAX
20f3 : bd 36 2c LDA $2c36,x ; (gx[0] + 0)
20f6 : 85 50 __ STA T10 + 0 
20f8 : bd 37 2c LDA $2c37,x ; (gx[0] + 1)
20fb : 85 51 __ STA T10 + 1 
20fd : bd 3a 2c LDA $2c3a,x ; (gy[0] + 0)
2100 : 85 4d __ STA T8 + 0 
2102 : bd 3b 2c LDA $2c3b,x ; (gy[0] + 1)
2105 : 85 4e __ STA T8 + 1 
.l12:
2107 : a6 4f __ LDX T9 + 0 
2109 : bd 36 2c LDA $2c36,x ; (gx[0] + 0)
210c : 18 __ __ CLC
210d : 65 1b __ ADC ACCU + 0 
210f : 85 45 __ STA T2 + 0 
2111 : bd 37 2c LDA $2c37,x ; (gx[0] + 1)
2114 : 65 1c __ ADC ACCU + 1 
2116 : 10 03 __ BPL $211b ; (update_ghosts.s13 + 0)
2118 : 4c 15 22 JMP $2215 ; (update_ghosts.s20 + 0)
.s13:
211b : 85 46 __ STA T2 + 1 
211d : d0 f9 __ BNE $2118 ; (update_ghosts.l12 + 17)
.s42:
211f : a5 45 __ LDA T2 + 0 
2121 : c9 28 __ CMP #$28
2123 : b0 f3 __ BCS $2118 ; (update_ghosts.l12 + 17)
.s14:
2125 : bd 3a 2c LDA $2c3a,x ; (gy[0] + 0)
2128 : 65 43 __ ADC T1 + 0 
212a : 85 43 __ STA T1 + 0 
212c : bd 3b 2c LDA $2c3b,x ; (gy[0] + 1)
212f : 65 44 __ ADC T1 + 1 
2131 : 30 e5 __ BMI $2118 ; (update_ghosts.l12 + 17)
.s15:
2133 : 85 44 __ STA T1 + 1 
2135 : d0 e1 __ BNE $2118 ; (update_ghosts.l12 + 17)
.s41:
2137 : a5 43 __ LDA T1 + 0 
2139 : c9 17 __ CMP #$17
213b : b0 db __ BCS $2118 ; (update_ghosts.l12 + 17)
.s16:
213d : a5 45 __ LDA T2 + 0 
213f : 85 1b __ STA ACCU + 0 
2141 : a5 46 __ LDA T2 + 1 
2143 : 85 1c __ STA ACCU + 1 
2145 : a9 17 __ LDA #$17
2147 : 20 ff 22 JSR $22ff ; (mul16by8 + 0)
214a : 18 __ __ CLC
214b : a9 9a __ LDA #$9a
214d : 65 1b __ ADC ACCU + 0 
214f : 85 1b __ STA ACCU + 0 
2151 : a9 28 __ LDA #$28
2153 : 65 1c __ ADC ACCU + 1 
2155 : 85 1c __ STA ACCU + 1 
2157 : a4 43 __ LDY T1 + 0 
2159 : b1 1b __ LDA (ACCU + 0),y 
215b : c9 01 __ CMP #$01
215d : f0 b9 __ BEQ $2118 ; (update_ghosts.l12 + 17)
.s17:
215f : 38 __ __ SEC
2160 : a5 45 __ LDA T2 + 0 
2162 : ed 32 2c SBC $2c32 ; (px + 0)
2165 : 85 0d __ STA P0 
2167 : a5 46 __ LDA T2 + 1 
2169 : ed 33 2c SBC $2c33 ; (px + 1)
216c : 85 0e __ STA P1 
216e : 20 9a 22 JSR $229a ; (abs.s4 + 0)
2171 : a5 1b __ LDA ACCU + 0 
2173 : 85 53 __ STA T11 + 0 
2175 : a5 1c __ LDA ACCU + 1 
2177 : 85 54 __ STA T11 + 1 
2179 : ad 34 2c LDA $2c34 ; (py + 0)
217c : 85 03 __ STA WORK + 0 
217e : ad 35 2c LDA $2c35 ; (py + 1)
2181 : 85 04 __ STA WORK + 1 
2183 : 38 __ __ SEC
2184 : a5 43 __ LDA T1 + 0 
2186 : e5 03 __ SBC WORK + 0 
2188 : 85 0d __ STA P0 
218a : a5 44 __ LDA T1 + 1 
218c : e5 04 __ SBC WORK + 1 
218e : 85 0e __ STA P1 
2190 : 20 9a 22 JSR $229a ; (abs.s4 + 0)
2193 : 18 __ __ CLC
2194 : a5 1b __ LDA ACCU + 0 
2196 : 65 53 __ ADC T11 + 0 
2198 : 85 1b __ STA ACCU + 0 
219a : a5 1c __ LDA ACCU + 1 
219c : 65 54 __ ADC T11 + 1 
219e : 85 1c __ STA ACCU + 1 
21a0 : a5 52 __ LDA T12 + 0 
21a2 : f0 2c __ BEQ $21d0 ; (update_ghosts.s18 + 0)
.s35:
21a4 : a5 49 __ LDA T4 + 1 
21a6 : c5 1c __ CMP ACCU + 1 
21a8 : d0 08 __ BNE $21b2 ; (update_ghosts.s40 + 0)
.s37:
21aa : a5 48 __ LDA T4 + 0 
21ac : c5 1b __ CMP ACCU + 0 
.s38:
21ae : 90 08 __ BCC $21b8 ; (update_ghosts.s36 + 0)
21b0 : b0 1e __ BCS $21d0 ; (update_ghosts.s18 + 0)
.s40:
21b2 : 45 1c __ EOR ACCU + 1 
21b4 : 10 f8 __ BPL $21ae ; (update_ghosts.s38 + 0)
.s39:
21b6 : 90 18 __ BCC $21d0 ; (update_ghosts.s18 + 0)
.s36:
21b8 : a5 43 __ LDA T1 + 0 
21ba : 85 4d __ STA T8 + 0 
21bc : a5 44 __ LDA T1 + 1 
21be : 85 4e __ STA T8 + 1 
21c0 : a5 45 __ LDA T2 + 0 
21c2 : 85 50 __ STA T10 + 0 
21c4 : a5 46 __ LDA T2 + 1 
21c6 : 85 51 __ STA T10 + 1 
21c8 : a5 1b __ LDA ACCU + 0 
21ca : 85 48 __ STA T4 + 0 
21cc : a5 1c __ LDA ACCU + 1 
21ce : 85 49 __ STA T4 + 1 
.s18:
21d0 : a5 55 __ LDA T13 + 0 
21d2 : f0 08 __ BEQ $21dc ; (update_ghosts.s19 + 0)
.s28:
21d4 : a6 47 __ LDX T3 + 0 
21d6 : ca __ __ DEX
21d7 : d0 03 __ BNE $21dc ; (update_ghosts.s19 + 0)
21d9 : 4c 77 22 JMP $2277 ; (update_ghosts.s29 + 0)
.s19:
21dc : a5 47 __ LDA T3 + 0 
21de : d0 35 __ BNE $2215 ; (update_ghosts.s20 + 0)
.s26:
21e0 : 18 __ __ CLC
21e1 : a5 4a __ LDA T5 + 0 
21e3 : 69 01 __ ADC #$01
21e5 : 85 53 __ STA T11 + 0 
21e7 : a5 4b __ LDA T5 + 1 
21e9 : 69 00 __ ADC #$00
21eb : 85 54 __ STA T11 + 1 
21ed : 20 b4 22 JSR $22b4 ; (rand.s4 + 0)
21f0 : a5 53 __ LDA T11 + 0 
21f2 : 85 03 __ STA WORK + 0 
21f4 : e6 4a __ INC T5 + 0 
21f6 : a5 54 __ LDA T11 + 1 
21f8 : 85 04 __ STA WORK + 1 
21fa : 85 4b __ STA T5 + 1 
21fc : 20 19 26 JSR $2619 ; (divmod + 0)
21ff : a5 05 __ LDA WORK + 2 
2201 : 05 06 __ ORA WORK + 3 
2203 : d0 10 __ BNE $2215 ; (update_ghosts.s20 + 0)
.s27:
2205 : a5 45 __ LDA T2 + 0 
2207 : 85 50 __ STA T10 + 0 
2209 : a5 46 __ LDA T2 + 1 
220b : 85 51 __ STA T10 + 1 
220d : a5 43 __ LDA T1 + 0 
220f : 85 4d __ STA T8 + 0 
2211 : a5 44 __ LDA T1 + 1 
2213 : 85 4e __ STA T8 + 1 
.s20:
2215 : e6 4c __ INC T6 + 0 
2217 : a5 4c __ LDA T6 + 0 
2219 : c9 05 __ CMP #$05
221b : 90 24 __ BCC $2241 ; (update_ghosts.s22 + 0)
.s21:
221d : a5 4d __ LDA T8 + 0 
221f : a6 4f __ LDX T9 + 0 
2221 : 9d 3a 2c STA $2c3a,x ; (gy[0] + 0)
2224 : a5 4e __ LDA T8 + 1 
2226 : 9d 3b 2c STA $2c3b,x ; (gy[0] + 1)
2229 : a5 50 __ LDA T10 + 0 
222b : 9d 36 2c STA $2c36,x ; (gx[0] + 0)
222e : a5 51 __ LDA T10 + 1 
2230 : 9d 37 2c STA $2c37,x ; (gx[0] + 1)
2233 : e6 47 __ INC T3 + 0 
2235 : a5 47 __ LDA T3 + 0 
2237 : c9 02 __ CMP #$02
2239 : b0 03 __ BCS $223e ; (update_ghosts.s21 + 33)
223b : 4c c2 20 JMP $20c2 ; (update_ghosts.l9 + 0)
223e : 4c b2 20 JMP $20b2 ; (update_ghosts.s3 + 0)
.s22:
2241 : a9 00 __ LDA #$00
2243 : 85 1b __ STA ACCU + 0 
2245 : 85 1c __ STA ACCU + 1 
2247 : a5 4c __ LDA T6 + 0 
2249 : c9 02 __ CMP #$02
224b : d0 0b __ BNE $2258 ; (update_ghosts.s23 + 0)
.s25:
224d : a9 01 __ LDA #$01
224f : 85 43 __ STA T1 + 0 
2251 : a9 00 __ LDA #$00
2253 : 85 44 __ STA T1 + 1 
2255 : 4c 07 21 JMP $2107 ; (update_ghosts.l12 + 0)
.s23:
2258 : a9 00 __ LDA #$00
225a : 85 43 __ STA T1 + 0 
225c : 85 44 __ STA T1 + 1 
225e : a5 4c __ LDA T6 + 0 
2260 : c9 03 __ CMP #$03
2262 : f0 0d __ BEQ $2271 ; (update_ghosts.s24 + 0)
.s11:
2264 : c9 04 __ CMP #$04
2266 : d0 ed __ BNE $2255 ; (update_ghosts.s25 + 8)
.s43:
2268 : e6 1b __ INC ACCU + 0 
226a : a9 00 __ LDA #$00
.s46:
226c : 85 1c __ STA ACCU + 1 
226e : 4c 07 21 JMP $2107 ; (update_ghosts.l12 + 0)
.s24:
2271 : a9 ff __ LDA #$ff
2273 : c6 1b __ DEC ACCU + 0 
2275 : d0 f5 __ BNE $226c ; (update_ghosts.s46 + 0)
.s29:
2277 : a5 1c __ LDA ACCU + 1 
2279 : c5 49 __ CMP T4 + 1 
227b : d0 07 __ BNE $2284 ; (update_ghosts.s34 + 0)
.s31:
227d : a5 1b __ LDA ACCU + 0 
227f : c5 48 __ CMP T4 + 0 
2281 : 4c 88 22 JMP $2288 ; (update_ghosts.s32 + 0)
.s34:
2284 : 45 49 __ EOR T4 + 1 
2286 : 30 0d __ BMI $2295 ; (update_ghosts.s33 + 0)
.s32:
2288 : b0 8b __ BCS $2215 ; (update_ghosts.s20 + 0)
.s30:
228a : a5 1b __ LDA ACCU + 0 
228c : 85 48 __ STA T4 + 0 
228e : a5 1c __ LDA ACCU + 1 
2290 : 85 49 __ STA T4 + 1 
2292 : 4c 05 22 JMP $2205 ; (update_ghosts.s27 + 0)
.s33:
2295 : b0 f3 __ BCS $228a ; (update_ghosts.s30 + 0)
2297 : 4c 15 22 JMP $2215 ; (update_ghosts.s20 + 0)
--------------------------------------------------------------------
abs: ; abs(i16)->i16
;  46, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdlib.h"
.s4:
229a : 24 0e __ BIT P1 ; (n + 1)
229c : 10 0d __ BPL $22ab ; (abs.s5 + 0)
.s6:
229e : 38 __ __ SEC
229f : a9 00 __ LDA #$00
22a1 : e5 0d __ SBC P0 ; (n + 0)
22a3 : 85 0d __ STA P0 ; (n + 0)
22a5 : a9 00 __ LDA #$00
22a7 : e5 0e __ SBC P1 ; (n + 1)
22a9 : 85 0e __ STA P1 ; (n + 1)
.s5:
22ab : a5 0d __ LDA P0 ; (n + 0)
22ad : 85 1b __ STA ACCU + 0 
22af : a5 0e __ LDA P1 ; (n + 1)
22b1 : 85 1c __ STA ACCU + 1 
.s3:
22b3 : 60 __ __ RTS
--------------------------------------------------------------------
rand: ; rand()->u16
;  68, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64/oscar64/include/stdlib.h"
.s4:
22b4 : ad 4c 28 LDA $284c ; (seed + 1)
22b7 : 4a __ __ LSR
22b8 : ad 4b 28 LDA $284b ; (seed + 0)
22bb : 6a __ __ ROR
22bc : aa __ __ TAX
22bd : a9 00 __ LDA #$00
22bf : 6a __ __ ROR
22c0 : 4d 4b 28 EOR $284b ; (seed + 0)
22c3 : 85 1b __ STA ACCU + 0 
22c5 : 8a __ __ TXA
22c6 : 4d 4c 28 EOR $284c ; (seed + 1)
22c9 : 85 1c __ STA ACCU + 1 
22cb : 4a __ __ LSR
22cc : 45 1b __ EOR ACCU + 0 
22ce : 8d 4b 28 STA $284b ; (seed + 0)
22d1 : 85 1b __ STA ACCU + 0 
22d3 : 45 1c __ EOR ACCU + 1 
22d5 : 8d 4c 28 STA $284c ; (seed + 1)
22d8 : 85 1c __ STA ACCU + 1 
.s3:
22da : 60 __ __ RTS
--------------------------------------------------------------------
wait_frames: ; wait_frames(i16)->void
;  47, "/home/amigojapan/Documents/GitHub/BASIC/BASICPROGRAMS/oscar64Cprograms/pacmanoscar64fullscreenmaze.c"
.s4:
22db : a5 0e __ LDA P1 ; (frames + 1)
22dd : 30 04 __ BMI $22e3 ; (wait_frames.s3 + 0)
.s7:
22df : 05 0d __ ORA P0 ; (frames + 0)
22e1 : d0 01 __ BNE $22e4 ; (wait_frames.s10 + 0)
.s3:
22e3 : 60 __ __ RTS
.s10:
22e4 : a4 0e __ LDY P1 ; (frames + 1)
.l5:
22e6 : a9 ff __ LDA #$ff
.l8:
22e8 : cd 12 d0 CMP $d012 
22eb : d0 fb __ BNE $22e8 ; (wait_frames.l8 + 0)
.l9:
22ed : cd 12 d0 CMP $d012 
22f0 : f0 fb __ BEQ $22ed ; (wait_frames.l9 + 0)
.s6:
22f2 : a5 0d __ LDA P0 ; (frames + 0)
22f4 : d0 01 __ BNE $22f7 ; (wait_frames.s12 + 0)
.s11:
22f6 : 88 __ __ DEY
.s12:
22f7 : c6 0d __ DEC P0 ; (frames + 0)
22f9 : d0 eb __ BNE $22e6 ; (wait_frames.l5 + 0)
.s13:
22fb : 98 __ __ TYA
22fc : d0 e8 __ BNE $22e6 ; (wait_frames.l5 + 0)
22fe : 60 __ __ RTS
--------------------------------------------------------------------
mul16by8: ; mul16by8
22ff : 4a __ __ LSR
2300 : f0 2e __ BEQ $2330 ; (mul16by8 + 49)
2302 : a2 00 __ LDX #$00
2304 : a0 00 __ LDY #$00
2306 : 90 13 __ BCC $231b ; (mul16by8 + 28)
2308 : a4 1b __ LDY ACCU + 0 
230a : a6 1c __ LDX ACCU + 1 
230c : b0 0d __ BCS $231b ; (mul16by8 + 28)
230e : 85 02 __ STA $02 
2310 : 18 __ __ CLC
2311 : 98 __ __ TYA
2312 : 65 1b __ ADC ACCU + 0 
2314 : a8 __ __ TAY
2315 : 8a __ __ TXA
2316 : 65 1c __ ADC ACCU + 1 
2318 : aa __ __ TAX
2319 : a5 02 __ LDA $02 
231b : 06 1b __ ASL ACCU + 0 
231d : 26 1c __ ROL ACCU + 1 
231f : 4a __ __ LSR
2320 : 90 f9 __ BCC $231b ; (mul16by8 + 28)
2322 : d0 ea __ BNE $230e ; (mul16by8 + 15)
2324 : 18 __ __ CLC
2325 : 98 __ __ TYA
2326 : 65 1b __ ADC ACCU + 0 
2328 : 85 1b __ STA ACCU + 0 
232a : 8a __ __ TXA
232b : 65 1c __ ADC ACCU + 1 
232d : 85 1c __ STA ACCU + 1 
232f : 60 __ __ RTS
2330 : b0 04 __ BCS $2336 ; (mul16by8 + 55)
2332 : 85 1b __ STA ACCU + 0 
2334 : 85 1c __ STA ACCU + 1 
2336 : 60 __ __ RTS
--------------------------------------------------------------------
freg: ; freg
2337 : b1 19 __ LDA (IP + 0),y 
2339 : c8 __ __ INY
233a : aa __ __ TAX
233b : b5 00 __ LDA $00,x 
233d : 85 03 __ STA WORK + 0 
233f : b5 01 __ LDA $01,x 
2341 : 85 04 __ STA WORK + 1 
2343 : b5 02 __ LDA $02,x 
2345 : 85 05 __ STA WORK + 2 
2347 : b5 03 __ LDA WORK + 0,x 
2349 : 85 06 __ STA WORK + 3 
234b : a5 05 __ LDA WORK + 2 
234d : 0a __ __ ASL
234e : a5 06 __ LDA WORK + 3 
2350 : 2a __ __ ROL
2351 : 85 08 __ STA WORK + 5 
2353 : f0 06 __ BEQ $235b ; (freg + 36)
2355 : a5 05 __ LDA WORK + 2 
2357 : 09 80 __ ORA #$80
2359 : 85 05 __ STA WORK + 2 
235b : a5 1d __ LDA ACCU + 2 
235d : 0a __ __ ASL
235e : a5 1e __ LDA ACCU + 3 
2360 : 2a __ __ ROL
2361 : 85 07 __ STA WORK + 4 
2363 : f0 06 __ BEQ $236b ; (freg + 52)
2365 : a5 1d __ LDA ACCU + 2 
2367 : 09 80 __ ORA #$80
2369 : 85 1d __ STA ACCU + 2 
236b : 60 __ __ RTS
236c : 06 1e __ ASL ACCU + 3 
236e : a5 07 __ LDA WORK + 4 
2370 : 6a __ __ ROR
2371 : 85 1e __ STA ACCU + 3 
2373 : b0 06 __ BCS $237b ; (freg + 68)
2375 : a5 1d __ LDA ACCU + 2 
2377 : 29 7f __ AND #$7f
2379 : 85 1d __ STA ACCU + 2 
237b : 60 __ __ RTS
--------------------------------------------------------------------
faddsub: ; faddsub
237c : a5 06 __ LDA WORK + 3 
237e : 49 80 __ EOR #$80
2380 : 85 06 __ STA WORK + 3 
2382 : a9 ff __ LDA #$ff
2384 : c5 07 __ CMP WORK + 4 
2386 : f0 04 __ BEQ $238c ; (faddsub + 16)
2388 : c5 08 __ CMP WORK + 5 
238a : d0 11 __ BNE $239d ; (faddsub + 33)
238c : a5 1e __ LDA ACCU + 3 
238e : 09 7f __ ORA #$7f
2390 : 85 1e __ STA ACCU + 3 
2392 : a9 80 __ LDA #$80
2394 : 85 1d __ STA ACCU + 2 
2396 : a9 00 __ LDA #$00
2398 : 85 1b __ STA ACCU + 0 
239a : 85 1c __ STA ACCU + 1 
239c : 60 __ __ RTS
239d : 38 __ __ SEC
239e : a5 07 __ LDA WORK + 4 
23a0 : e5 08 __ SBC WORK + 5 
23a2 : f0 38 __ BEQ $23dc ; (faddsub + 96)
23a4 : aa __ __ TAX
23a5 : b0 25 __ BCS $23cc ; (faddsub + 80)
23a7 : e0 e9 __ CPX #$e9
23a9 : b0 0e __ BCS $23b9 ; (faddsub + 61)
23ab : a5 08 __ LDA WORK + 5 
23ad : 85 07 __ STA WORK + 4 
23af : a9 00 __ LDA #$00
23b1 : 85 1b __ STA ACCU + 0 
23b3 : 85 1c __ STA ACCU + 1 
23b5 : 85 1d __ STA ACCU + 2 
23b7 : f0 23 __ BEQ $23dc ; (faddsub + 96)
23b9 : a5 1d __ LDA ACCU + 2 
23bb : 4a __ __ LSR
23bc : 66 1c __ ROR ACCU + 1 
23be : 66 1b __ ROR ACCU + 0 
23c0 : e8 __ __ INX
23c1 : d0 f8 __ BNE $23bb ; (faddsub + 63)
23c3 : 85 1d __ STA ACCU + 2 
23c5 : a5 08 __ LDA WORK + 5 
23c7 : 85 07 __ STA WORK + 4 
23c9 : 4c dc 23 JMP $23dc ; (faddsub + 96)
23cc : e0 18 __ CPX #$18
23ce : b0 33 __ BCS $2403 ; (faddsub + 135)
23d0 : a5 05 __ LDA WORK + 2 
23d2 : 4a __ __ LSR
23d3 : 66 04 __ ROR WORK + 1 
23d5 : 66 03 __ ROR WORK + 0 
23d7 : ca __ __ DEX
23d8 : d0 f8 __ BNE $23d2 ; (faddsub + 86)
23da : 85 05 __ STA WORK + 2 
23dc : a5 1e __ LDA ACCU + 3 
23de : 29 80 __ AND #$80
23e0 : 85 1e __ STA ACCU + 3 
23e2 : 45 06 __ EOR WORK + 3 
23e4 : 30 31 __ BMI $2417 ; (faddsub + 155)
23e6 : 18 __ __ CLC
23e7 : a5 1b __ LDA ACCU + 0 
23e9 : 65 03 __ ADC WORK + 0 
23eb : 85 1b __ STA ACCU + 0 
23ed : a5 1c __ LDA ACCU + 1 
23ef : 65 04 __ ADC WORK + 1 
23f1 : 85 1c __ STA ACCU + 1 
23f3 : a5 1d __ LDA ACCU + 2 
23f5 : 65 05 __ ADC WORK + 2 
23f7 : 85 1d __ STA ACCU + 2 
23f9 : 90 08 __ BCC $2403 ; (faddsub + 135)
23fb : 66 1d __ ROR ACCU + 2 
23fd : 66 1c __ ROR ACCU + 1 
23ff : 66 1b __ ROR ACCU + 0 
2401 : e6 07 __ INC WORK + 4 
2403 : a5 07 __ LDA WORK + 4 
2405 : c9 ff __ CMP #$ff
2407 : f0 83 __ BEQ $238c ; (faddsub + 16)
2409 : 4a __ __ LSR
240a : 05 1e __ ORA ACCU + 3 
240c : 85 1e __ STA ACCU + 3 
240e : b0 06 __ BCS $2416 ; (faddsub + 154)
2410 : a5 1d __ LDA ACCU + 2 
2412 : 29 7f __ AND #$7f
2414 : 85 1d __ STA ACCU + 2 
2416 : 60 __ __ RTS
2417 : 38 __ __ SEC
2418 : a5 1b __ LDA ACCU + 0 
241a : e5 03 __ SBC WORK + 0 
241c : 85 1b __ STA ACCU + 0 
241e : a5 1c __ LDA ACCU + 1 
2420 : e5 04 __ SBC WORK + 1 
2422 : 85 1c __ STA ACCU + 1 
2424 : a5 1d __ LDA ACCU + 2 
2426 : e5 05 __ SBC WORK + 2 
2428 : 85 1d __ STA ACCU + 2 
242a : b0 19 __ BCS $2445 ; (faddsub + 201)
242c : 38 __ __ SEC
242d : a9 00 __ LDA #$00
242f : e5 1b __ SBC ACCU + 0 
2431 : 85 1b __ STA ACCU + 0 
2433 : a9 00 __ LDA #$00
2435 : e5 1c __ SBC ACCU + 1 
2437 : 85 1c __ STA ACCU + 1 
2439 : a9 00 __ LDA #$00
243b : e5 1d __ SBC ACCU + 2 
243d : 85 1d __ STA ACCU + 2 
243f : a5 1e __ LDA ACCU + 3 
2441 : 49 80 __ EOR #$80
2443 : 85 1e __ STA ACCU + 3 
2445 : a5 1d __ LDA ACCU + 2 
2447 : 30 ba __ BMI $2403 ; (faddsub + 135)
2449 : 05 1c __ ORA ACCU + 1 
244b : 05 1b __ ORA ACCU + 0 
244d : f0 0f __ BEQ $245e ; (faddsub + 226)
244f : c6 07 __ DEC WORK + 4 
2451 : f0 0b __ BEQ $245e ; (faddsub + 226)
2453 : 06 1b __ ASL ACCU + 0 
2455 : 26 1c __ ROL ACCU + 1 
2457 : 26 1d __ ROL ACCU + 2 
2459 : 10 f4 __ BPL $244f ; (faddsub + 211)
245b : 4c 03 24 JMP $2403 ; (faddsub + 135)
245e : a9 00 __ LDA #$00
2460 : 85 1b __ STA ACCU + 0 
2462 : 85 1c __ STA ACCU + 1 
2464 : 85 1d __ STA ACCU + 2 
2466 : 85 1e __ STA ACCU + 3 
2468 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul: ; crt_fmul
2469 : a5 1b __ LDA ACCU + 0 
246b : 05 1c __ ORA ACCU + 1 
246d : 05 1d __ ORA ACCU + 2 
246f : f0 0e __ BEQ $247f ; (crt_fmul + 22)
2471 : a5 03 __ LDA WORK + 0 
2473 : 05 04 __ ORA WORK + 1 
2475 : 05 05 __ ORA WORK + 2 
2477 : d0 09 __ BNE $2482 ; (crt_fmul + 25)
2479 : 85 1b __ STA ACCU + 0 
247b : 85 1c __ STA ACCU + 1 
247d : 85 1d __ STA ACCU + 2 
247f : 85 1e __ STA ACCU + 3 
2481 : 60 __ __ RTS
2482 : a5 1e __ LDA ACCU + 3 
2484 : 45 06 __ EOR WORK + 3 
2486 : 29 80 __ AND #$80
2488 : 85 1e __ STA ACCU + 3 
248a : a9 ff __ LDA #$ff
248c : c5 07 __ CMP WORK + 4 
248e : f0 42 __ BEQ $24d2 ; (crt_fmul + 105)
2490 : c5 08 __ CMP WORK + 5 
2492 : f0 3e __ BEQ $24d2 ; (crt_fmul + 105)
2494 : a9 00 __ LDA #$00
2496 : 85 09 __ STA WORK + 6 
2498 : 85 0a __ STA WORK + 7 
249a : 85 0b __ STA WORK + 8 
249c : a4 1b __ LDY ACCU + 0 
249e : a5 03 __ LDA WORK + 0 
24a0 : d0 06 __ BNE $24a8 ; (crt_fmul + 63)
24a2 : a5 04 __ LDA WORK + 1 
24a4 : f0 0a __ BEQ $24b0 ; (crt_fmul + 71)
24a6 : d0 05 __ BNE $24ad ; (crt_fmul + 68)
24a8 : 20 03 25 JSR $2503 ; (crt_fmul8 + 0)
24ab : a5 04 __ LDA WORK + 1 
24ad : 20 03 25 JSR $2503 ; (crt_fmul8 + 0)
24b0 : a5 05 __ LDA WORK + 2 
24b2 : 20 03 25 JSR $2503 ; (crt_fmul8 + 0)
24b5 : 38 __ __ SEC
24b6 : a5 0b __ LDA WORK + 8 
24b8 : 30 06 __ BMI $24c0 ; (crt_fmul + 87)
24ba : 06 09 __ ASL WORK + 6 
24bc : 26 0a __ ROL WORK + 7 
24be : 2a __ __ ROL
24bf : 18 __ __ CLC
24c0 : 29 7f __ AND #$7f
24c2 : 85 0b __ STA WORK + 8 
24c4 : a5 07 __ LDA WORK + 4 
24c6 : 65 08 __ ADC WORK + 5 
24c8 : 90 19 __ BCC $24e3 ; (crt_fmul + 122)
24ca : e9 7f __ SBC #$7f
24cc : b0 04 __ BCS $24d2 ; (crt_fmul + 105)
24ce : c9 ff __ CMP #$ff
24d0 : d0 15 __ BNE $24e7 ; (crt_fmul + 126)
24d2 : a5 1e __ LDA ACCU + 3 
24d4 : 09 7f __ ORA #$7f
24d6 : 85 1e __ STA ACCU + 3 
24d8 : a9 80 __ LDA #$80
24da : 85 1d __ STA ACCU + 2 
24dc : a9 00 __ LDA #$00
24de : 85 1b __ STA ACCU + 0 
24e0 : 85 1c __ STA ACCU + 1 
24e2 : 60 __ __ RTS
24e3 : e9 7e __ SBC #$7e
24e5 : 90 15 __ BCC $24fc ; (crt_fmul + 147)
24e7 : 4a __ __ LSR
24e8 : 05 1e __ ORA ACCU + 3 
24ea : 85 1e __ STA ACCU + 3 
24ec : a9 00 __ LDA #$00
24ee : 6a __ __ ROR
24ef : 05 0b __ ORA WORK + 8 
24f1 : 85 1d __ STA ACCU + 2 
24f3 : a5 0a __ LDA WORK + 7 
24f5 : 85 1c __ STA ACCU + 1 
24f7 : a5 09 __ LDA WORK + 6 
24f9 : 85 1b __ STA ACCU + 0 
24fb : 60 __ __ RTS
24fc : a9 00 __ LDA #$00
24fe : 85 1e __ STA ACCU + 3 
2500 : f0 d8 __ BEQ $24da ; (crt_fmul + 113)
2502 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fmul8: ; crt_fmul8
2503 : 38 __ __ SEC
2504 : 6a __ __ ROR
2505 : 90 1e __ BCC $2525 ; (crt_fmul8 + 34)
2507 : aa __ __ TAX
2508 : 18 __ __ CLC
2509 : 98 __ __ TYA
250a : 65 09 __ ADC WORK + 6 
250c : 85 09 __ STA WORK + 6 
250e : a5 0a __ LDA WORK + 7 
2510 : 65 1c __ ADC ACCU + 1 
2512 : 85 0a __ STA WORK + 7 
2514 : a5 0b __ LDA WORK + 8 
2516 : 65 1d __ ADC ACCU + 2 
2518 : 6a __ __ ROR
2519 : 85 0b __ STA WORK + 8 
251b : 8a __ __ TXA
251c : 66 0a __ ROR WORK + 7 
251e : 66 09 __ ROR WORK + 6 
2520 : 4a __ __ LSR
2521 : f0 0d __ BEQ $2530 ; (crt_fmul8 + 45)
2523 : b0 e2 __ BCS $2507 ; (crt_fmul8 + 4)
2525 : 66 0b __ ROR WORK + 8 
2527 : 66 0a __ ROR WORK + 7 
2529 : 66 09 __ ROR WORK + 6 
252b : 4a __ __ LSR
252c : 90 f7 __ BCC $2525 ; (crt_fmul8 + 34)
252e : d0 d7 __ BNE $2507 ; (crt_fmul8 + 4)
2530 : 60 __ __ RTS
--------------------------------------------------------------------
crt_fdiv: ; crt_fdiv
2531 : a5 1b __ LDA ACCU + 0 
2533 : 05 1c __ ORA ACCU + 1 
2535 : 05 1d __ ORA ACCU + 2 
2537 : d0 03 __ BNE $253c ; (crt_fdiv + 11)
2539 : 85 1e __ STA ACCU + 3 
253b : 60 __ __ RTS
253c : a5 1e __ LDA ACCU + 3 
253e : 45 06 __ EOR WORK + 3 
2540 : 29 80 __ AND #$80
2542 : 85 1e __ STA ACCU + 3 
2544 : a5 08 __ LDA WORK + 5 
2546 : f0 62 __ BEQ $25aa ; (crt_fdiv + 121)
2548 : a5 07 __ LDA WORK + 4 
254a : c9 ff __ CMP #$ff
254c : f0 5c __ BEQ $25aa ; (crt_fdiv + 121)
254e : a9 00 __ LDA #$00
2550 : 85 09 __ STA WORK + 6 
2552 : 85 0a __ STA WORK + 7 
2554 : 85 0b __ STA WORK + 8 
2556 : a2 18 __ LDX #$18
2558 : a5 1b __ LDA ACCU + 0 
255a : c5 03 __ CMP WORK + 0 
255c : a5 1c __ LDA ACCU + 1 
255e : e5 04 __ SBC WORK + 1 
2560 : a5 1d __ LDA ACCU + 2 
2562 : e5 05 __ SBC WORK + 2 
2564 : 90 13 __ BCC $2579 ; (crt_fdiv + 72)
2566 : a5 1b __ LDA ACCU + 0 
2568 : e5 03 __ SBC WORK + 0 
256a : 85 1b __ STA ACCU + 0 
256c : a5 1c __ LDA ACCU + 1 
256e : e5 04 __ SBC WORK + 1 
2570 : 85 1c __ STA ACCU + 1 
2572 : a5 1d __ LDA ACCU + 2 
2574 : e5 05 __ SBC WORK + 2 
2576 : 85 1d __ STA ACCU + 2 
2578 : 38 __ __ SEC
2579 : 26 09 __ ROL WORK + 6 
257b : 26 0a __ ROL WORK + 7 
257d : 26 0b __ ROL WORK + 8 
257f : ca __ __ DEX
2580 : f0 0a __ BEQ $258c ; (crt_fdiv + 91)
2582 : 06 1b __ ASL ACCU + 0 
2584 : 26 1c __ ROL ACCU + 1 
2586 : 26 1d __ ROL ACCU + 2 
2588 : b0 dc __ BCS $2566 ; (crt_fdiv + 53)
258a : 90 cc __ BCC $2558 ; (crt_fdiv + 39)
258c : 38 __ __ SEC
258d : a5 0b __ LDA WORK + 8 
258f : 30 06 __ BMI $2597 ; (crt_fdiv + 102)
2591 : 06 09 __ ASL WORK + 6 
2593 : 26 0a __ ROL WORK + 7 
2595 : 2a __ __ ROL
2596 : 18 __ __ CLC
2597 : 29 7f __ AND #$7f
2599 : 85 0b __ STA WORK + 8 
259b : a5 07 __ LDA WORK + 4 
259d : e5 08 __ SBC WORK + 5 
259f : 90 1a __ BCC $25bb ; (crt_fdiv + 138)
25a1 : 18 __ __ CLC
25a2 : 69 7f __ ADC #$7f
25a4 : b0 04 __ BCS $25aa ; (crt_fdiv + 121)
25a6 : c9 ff __ CMP #$ff
25a8 : d0 15 __ BNE $25bf ; (crt_fdiv + 142)
25aa : a5 1e __ LDA ACCU + 3 
25ac : 09 7f __ ORA #$7f
25ae : 85 1e __ STA ACCU + 3 
25b0 : a9 80 __ LDA #$80
25b2 : 85 1d __ STA ACCU + 2 
25b4 : a9 00 __ LDA #$00
25b6 : 85 1c __ STA ACCU + 1 
25b8 : 85 1b __ STA ACCU + 0 
25ba : 60 __ __ RTS
25bb : 69 7f __ ADC #$7f
25bd : 90 15 __ BCC $25d4 ; (crt_fdiv + 163)
25bf : 4a __ __ LSR
25c0 : 05 1e __ ORA ACCU + 3 
25c2 : 85 1e __ STA ACCU + 3 
25c4 : a9 00 __ LDA #$00
25c6 : 6a __ __ ROR
25c7 : 05 0b __ ORA WORK + 8 
25c9 : 85 1d __ STA ACCU + 2 
25cb : a5 0a __ LDA WORK + 7 
25cd : 85 1c __ STA ACCU + 1 
25cf : a5 09 __ LDA WORK + 6 
25d1 : 85 1b __ STA ACCU + 0 
25d3 : 60 __ __ RTS
25d4 : a9 00 __ LDA #$00
25d6 : 85 1e __ STA ACCU + 3 
25d8 : 85 1d __ STA ACCU + 2 
25da : 85 1c __ STA ACCU + 1 
25dc : 85 1b __ STA ACCU + 0 
25de : 60 __ __ RTS
--------------------------------------------------------------------
divs16: ; divs16
25df : 24 1c __ BIT ACCU + 1 
25e1 : 10 0d __ BPL $25f0 ; (divs16 + 17)
25e3 : 20 fd 25 JSR $25fd ; (negaccu + 0)
25e6 : 24 04 __ BIT WORK + 1 
25e8 : 10 0d __ BPL $25f7 ; (divs16 + 24)
25ea : 20 0b 26 JSR $260b ; (negtmp + 0)
25ed : 4c 19 26 JMP $2619 ; (divmod + 0)
25f0 : 24 04 __ BIT WORK + 1 
25f2 : 10 f9 __ BPL $25ed ; (divs16 + 14)
25f4 : 20 0b 26 JSR $260b ; (negtmp + 0)
25f7 : 20 19 26 JSR $2619 ; (divmod + 0)
25fa : 4c fd 25 JMP $25fd ; (negaccu + 0)
--------------------------------------------------------------------
negaccu: ; negaccu
25fd : 38 __ __ SEC
25fe : a9 00 __ LDA #$00
2600 : e5 1b __ SBC ACCU + 0 
2602 : 85 1b __ STA ACCU + 0 
2604 : a9 00 __ LDA #$00
2606 : e5 1c __ SBC ACCU + 1 
2608 : 85 1c __ STA ACCU + 1 
260a : 60 __ __ RTS
--------------------------------------------------------------------
negtmp: ; negtmp
260b : 38 __ __ SEC
260c : a9 00 __ LDA #$00
260e : e5 03 __ SBC WORK + 0 
2610 : 85 03 __ STA WORK + 0 
2612 : a9 00 __ LDA #$00
2614 : e5 04 __ SBC WORK + 1 
2616 : 85 04 __ STA WORK + 1 
2618 : 60 __ __ RTS
--------------------------------------------------------------------
divmod: ; divmod
2619 : a5 1c __ LDA ACCU + 1 
261b : d0 31 __ BNE $264e ; (divmod + 53)
261d : a5 04 __ LDA WORK + 1 
261f : d0 1e __ BNE $263f ; (divmod + 38)
2621 : 85 06 __ STA WORK + 3 
2623 : a2 04 __ LDX #$04
2625 : 06 1b __ ASL ACCU + 0 
2627 : 2a __ __ ROL
2628 : c5 03 __ CMP WORK + 0 
262a : 90 02 __ BCC $262e ; (divmod + 21)
262c : e5 03 __ SBC WORK + 0 
262e : 26 1b __ ROL ACCU + 0 
2630 : 2a __ __ ROL
2631 : c5 03 __ CMP WORK + 0 
2633 : 90 02 __ BCC $2637 ; (divmod + 30)
2635 : e5 03 __ SBC WORK + 0 
2637 : 26 1b __ ROL ACCU + 0 
2639 : ca __ __ DEX
263a : d0 eb __ BNE $2627 ; (divmod + 14)
263c : 85 05 __ STA WORK + 2 
263e : 60 __ __ RTS
263f : a5 1b __ LDA ACCU + 0 
2641 : 85 05 __ STA WORK + 2 
2643 : a5 1c __ LDA ACCU + 1 
2645 : 85 06 __ STA WORK + 3 
2647 : a9 00 __ LDA #$00
2649 : 85 1b __ STA ACCU + 0 
264b : 85 1c __ STA ACCU + 1 
264d : 60 __ __ RTS
264e : a5 04 __ LDA WORK + 1 
2650 : d0 1f __ BNE $2671 ; (divmod + 88)
2652 : a5 03 __ LDA WORK + 0 
2654 : 30 1b __ BMI $2671 ; (divmod + 88)
2656 : a9 00 __ LDA #$00
2658 : 85 06 __ STA WORK + 3 
265a : a2 10 __ LDX #$10
265c : 06 1b __ ASL ACCU + 0 
265e : 26 1c __ ROL ACCU + 1 
2660 : 2a __ __ ROL
2661 : c5 03 __ CMP WORK + 0 
2663 : 90 02 __ BCC $2667 ; (divmod + 78)
2665 : e5 03 __ SBC WORK + 0 
2667 : 26 1b __ ROL ACCU + 0 
2669 : 26 1c __ ROL ACCU + 1 
266b : ca __ __ DEX
266c : d0 f2 __ BNE $2660 ; (divmod + 71)
266e : 85 05 __ STA WORK + 2 
2670 : 60 __ __ RTS
2671 : a9 00 __ LDA #$00
2673 : 85 05 __ STA WORK + 2 
2675 : 85 06 __ STA WORK + 3 
2677 : a0 10 __ LDY #$10
2679 : 18 __ __ CLC
267a : 26 1b __ ROL ACCU + 0 
267c : 26 1c __ ROL ACCU + 1 
267e : 26 05 __ ROL WORK + 2 
2680 : 26 06 __ ROL WORK + 3 
2682 : 38 __ __ SEC
2683 : a5 05 __ LDA WORK + 2 
2685 : e5 03 __ SBC WORK + 0 
2687 : aa __ __ TAX
2688 : a5 06 __ LDA WORK + 3 
268a : e5 04 __ SBC WORK + 1 
268c : 90 04 __ BCC $2692 ; (divmod + 121)
268e : 86 05 __ STX WORK + 2 
2690 : 85 06 __ STA WORK + 3 
2692 : 88 __ __ DEY
2693 : d0 e5 __ BNE $267a ; (divmod + 97)
2695 : 26 1b __ ROL ACCU + 0 
2697 : 26 1c __ ROL ACCU + 1 
2699 : 60 __ __ RTS
--------------------------------------------------------------------
mods16: ; mods16
269a : 24 1c __ BIT ACCU + 1 
269c : 10 10 __ BPL $26ae ; (mods16 + 20)
269e : 20 fd 25 JSR $25fd ; (negaccu + 0)
26a1 : 24 04 __ BIT WORK + 1 
26a3 : 10 03 __ BPL $26a8 ; (mods16 + 14)
26a5 : 20 0b 26 JSR $260b ; (negtmp + 0)
26a8 : 20 19 26 JSR $2619 ; (divmod + 0)
26ab : 4c b9 26 JMP $26b9 ; (negtmpb + 0)
26ae : 24 04 __ BIT WORK + 1 
26b0 : 10 03 __ BPL $26b5 ; (mods16 + 27)
26b2 : 20 0b 26 JSR $260b ; (negtmp + 0)
26b5 : 4c 19 26 JMP $2619 ; (divmod + 0)
26b8 : 60 __ __ RTS
--------------------------------------------------------------------
negtmpb: ; negtmpb
26b9 : 38 __ __ SEC
26ba : a9 00 __ LDA #$00
26bc : e5 05 __ SBC WORK + 2 
26be : 85 05 __ STA WORK + 2 
26c0 : a9 00 __ LDA #$00
26c2 : e5 06 __ SBC WORK + 3 
26c4 : 85 06 __ STA WORK + 3 
26c6 : 60 __ __ RTS
--------------------------------------------------------------------
f32_to_i16: ; f32_to_i16
26c7 : 20 5b 23 JSR $235b ; (freg + 36)
26ca : a5 07 __ LDA WORK + 4 
26cc : c9 7f __ CMP #$7f
26ce : b0 07 __ BCS $26d7 ; (f32_to_i16 + 16)
26d0 : a9 00 __ LDA #$00
26d2 : 85 1b __ STA ACCU + 0 
26d4 : 85 1c __ STA ACCU + 1 
26d6 : 60 __ __ RTS
26d7 : e9 8e __ SBC #$8e
26d9 : 90 16 __ BCC $26f1 ; (f32_to_i16 + 42)
26db : 24 1e __ BIT ACCU + 3 
26dd : 30 09 __ BMI $26e8 ; (f32_to_i16 + 33)
26df : a9 ff __ LDA #$ff
26e1 : 85 1b __ STA ACCU + 0 
26e3 : a9 7f __ LDA #$7f
26e5 : 85 1c __ STA ACCU + 1 
26e7 : 60 __ __ RTS
26e8 : a9 00 __ LDA #$00
26ea : 85 1b __ STA ACCU + 0 
26ec : a9 80 __ LDA #$80
26ee : 85 1c __ STA ACCU + 1 
26f0 : 60 __ __ RTS
26f1 : aa __ __ TAX
26f2 : a5 1c __ LDA ACCU + 1 
26f4 : 46 1d __ LSR ACCU + 2 
26f6 : 6a __ __ ROR
26f7 : e8 __ __ INX
26f8 : d0 fa __ BNE $26f4 ; (f32_to_i16 + 45)
26fa : 24 1e __ BIT ACCU + 3 
26fc : 10 0e __ BPL $270c ; (f32_to_i16 + 69)
26fe : 38 __ __ SEC
26ff : 49 ff __ EOR #$ff
2701 : 69 00 __ ADC #$00
2703 : 85 1b __ STA ACCU + 0 
2705 : a9 00 __ LDA #$00
2707 : e5 1d __ SBC ACCU + 2 
2709 : 85 1c __ STA ACCU + 1 
270b : 60 __ __ RTS
270c : 85 1b __ STA ACCU + 0 
270e : a5 1d __ LDA ACCU + 2 
2710 : 85 1c __ STA ACCU + 1 
2712 : 60 __ __ RTS
--------------------------------------------------------------------
sint16_to_float: ; sint16_to_float
2713 : 24 1c __ BIT ACCU + 1 
2715 : 30 03 __ BMI $271a ; (sint16_to_float + 7)
2717 : 4c 31 27 JMP $2731 ; (uint16_to_float + 0)
271a : 38 __ __ SEC
271b : a9 00 __ LDA #$00
271d : e5 1b __ SBC ACCU + 0 
271f : 85 1b __ STA ACCU + 0 
2721 : a9 00 __ LDA #$00
2723 : e5 1c __ SBC ACCU + 1 
2725 : 85 1c __ STA ACCU + 1 
2727 : 20 31 27 JSR $2731 ; (uint16_to_float + 0)
272a : a5 1e __ LDA ACCU + 3 
272c : 09 80 __ ORA #$80
272e : 85 1e __ STA ACCU + 3 
2730 : 60 __ __ RTS
--------------------------------------------------------------------
uint16_to_float: ; uint16_to_float
2731 : a5 1b __ LDA ACCU + 0 
2733 : 05 1c __ ORA ACCU + 1 
2735 : d0 05 __ BNE $273c ; (uint16_to_float + 11)
2737 : 85 1d __ STA ACCU + 2 
2739 : 85 1e __ STA ACCU + 3 
273b : 60 __ __ RTS
273c : a2 8e __ LDX #$8e
273e : a5 1c __ LDA ACCU + 1 
2740 : 30 06 __ BMI $2748 ; (uint16_to_float + 23)
2742 : ca __ __ DEX
2743 : 06 1b __ ASL ACCU + 0 
2745 : 2a __ __ ROL
2746 : 10 fa __ BPL $2742 ; (uint16_to_float + 17)
2748 : 0a __ __ ASL
2749 : 85 1d __ STA ACCU + 2 
274b : a5 1b __ LDA ACCU + 0 
274d : 85 1c __ STA ACCU + 1 
274f : 8a __ __ TXA
2750 : 4a __ __ LSR
2751 : 85 1e __ STA ACCU + 3 
2753 : a9 00 __ LDA #$00
2755 : 85 1b __ STA ACCU + 0 
2757 : 66 1d __ ROR ACCU + 2 
2759 : 60 __ __ RTS
--------------------------------------------------------------------
divmod32: ; divmod32
275a : a9 00 __ LDA #$00
275c : 85 07 __ STA WORK + 4 
275e : 85 08 __ STA WORK + 5 
2760 : 85 09 __ STA WORK + 6 
2762 : 85 0a __ STA WORK + 7 
2764 : a5 05 __ LDA WORK + 2 
2766 : 05 06 __ ORA WORK + 3 
2768 : f0 4b __ BEQ $27b5 ; (divmod32 + 91)
276a : a0 10 __ LDY #$10
276c : a5 1e __ LDA ACCU + 3 
276e : 85 08 __ STA WORK + 5 
2770 : a5 1d __ LDA ACCU + 2 
2772 : 85 07 __ STA WORK + 4 
2774 : a9 00 __ LDA #$00
2776 : 85 1d __ STA ACCU + 2 
2778 : 85 1e __ STA ACCU + 3 
277a : 18 __ __ CLC
277b : 26 1b __ ROL ACCU + 0 
277d : 26 1c __ ROL ACCU + 1 
277f : 26 07 __ ROL WORK + 4 
2781 : 26 08 __ ROL WORK + 5 
2783 : 26 09 __ ROL WORK + 6 
2785 : 26 0a __ ROL WORK + 7 
2787 : a5 07 __ LDA WORK + 4 
2789 : c5 03 __ CMP WORK + 0 
278b : a5 08 __ LDA WORK + 5 
278d : e5 04 __ SBC WORK + 1 
278f : a5 09 __ LDA WORK + 6 
2791 : e5 05 __ SBC WORK + 2 
2793 : aa __ __ TAX
2794 : a5 0a __ LDA WORK + 7 
2796 : e5 06 __ SBC WORK + 3 
2798 : 90 11 __ BCC $27ab ; (divmod32 + 81)
279a : 86 09 __ STX WORK + 6 
279c : 85 0a __ STA WORK + 7 
279e : a5 07 __ LDA WORK + 4 
27a0 : e5 03 __ SBC WORK + 0 
27a2 : 85 07 __ STA WORK + 4 
27a4 : a5 08 __ LDA WORK + 5 
27a6 : e5 04 __ SBC WORK + 1 
27a8 : 85 08 __ STA WORK + 5 
27aa : 38 __ __ SEC
27ab : 88 __ __ DEY
27ac : d0 cd __ BNE $277b ; (divmod32 + 33)
27ae : 26 1b __ ROL ACCU + 0 
27b0 : 26 1c __ ROL ACCU + 1 
27b2 : a4 02 __ LDY $02 
27b4 : 60 __ __ RTS
27b5 : a5 1d __ LDA ACCU + 2 
27b7 : 05 1e __ ORA ACCU + 3 
27b9 : d0 0c __ BNE $27c7 ; (divmod32 + 109)
27bb : 20 19 26 JSR $2619 ; (divmod + 0)
27be : a5 05 __ LDA WORK + 2 
27c0 : 85 07 __ STA WORK + 4 
27c2 : a5 06 __ LDA WORK + 3 
27c4 : 85 08 __ STA WORK + 5 
27c6 : 60 __ __ RTS
27c7 : a0 20 __ LDY #$20
27c9 : a5 04 __ LDA WORK + 1 
27cb : d0 27 __ BNE $27f4 ; (divmod32 + 154)
27cd : 18 __ __ CLC
27ce : 26 1b __ ROL ACCU + 0 
27d0 : 26 1c __ ROL ACCU + 1 
27d2 : 26 1d __ ROL ACCU + 2 
27d4 : 26 1e __ ROL ACCU + 3 
27d6 : 2a __ __ ROL
27d7 : 90 05 __ BCC $27de ; (divmod32 + 132)
27d9 : e5 03 __ SBC WORK + 0 
27db : 38 __ __ SEC
27dc : b0 06 __ BCS $27e4 ; (divmod32 + 138)
27de : c5 03 __ CMP WORK + 0 
27e0 : 90 02 __ BCC $27e4 ; (divmod32 + 138)
27e2 : e5 03 __ SBC WORK + 0 
27e4 : 88 __ __ DEY
27e5 : d0 e7 __ BNE $27ce ; (divmod32 + 116)
27e7 : 85 07 __ STA WORK + 4 
27e9 : 26 1b __ ROL ACCU + 0 
27eb : 26 1c __ ROL ACCU + 1 
27ed : 26 1d __ ROL ACCU + 2 
27ef : 26 1e __ ROL ACCU + 3 
27f1 : a4 02 __ LDY $02 
27f3 : 60 __ __ RTS
27f4 : a5 1e __ LDA ACCU + 3 
27f6 : d0 10 __ BNE $2808 ; (divmod32 + 174)
27f8 : a6 1d __ LDX ACCU + 2 
27fa : 86 1e __ STX ACCU + 3 
27fc : a6 1c __ LDX ACCU + 1 
27fe : 86 1d __ STX ACCU + 2 
2800 : a6 1b __ LDX ACCU + 0 
2802 : 86 1c __ STX ACCU + 1 
2804 : 85 1b __ STA ACCU + 0 
2806 : a0 18 __ LDY #$18
2808 : 18 __ __ CLC
2809 : 26 1b __ ROL ACCU + 0 
280b : 26 1c __ ROL ACCU + 1 
280d : 26 1d __ ROL ACCU + 2 
280f : 26 1e __ ROL ACCU + 3 
2811 : 26 07 __ ROL WORK + 4 
2813 : 26 08 __ ROL WORK + 5 
2815 : 90 0c __ BCC $2823 ; (divmod32 + 201)
2817 : a5 07 __ LDA WORK + 4 
2819 : e5 03 __ SBC WORK + 0 
281b : aa __ __ TAX
281c : a5 08 __ LDA WORK + 5 
281e : e5 04 __ SBC WORK + 1 
2820 : 38 __ __ SEC
2821 : b0 0c __ BCS $282f ; (divmod32 + 213)
2823 : 38 __ __ SEC
2824 : a5 07 __ LDA WORK + 4 
2826 : e5 03 __ SBC WORK + 0 
2828 : aa __ __ TAX
2829 : a5 08 __ LDA WORK + 5 
282b : e5 04 __ SBC WORK + 1 
282d : 90 04 __ BCC $2833 ; (divmod32 + 217)
282f : 86 07 __ STX WORK + 4 
2831 : 85 08 __ STA WORK + 5 
2833 : 88 __ __ DEY
2834 : d0 d3 __ BNE $2809 ; (divmod32 + 175)
2836 : 26 1b __ ROL ACCU + 0 
2838 : 26 1c __ ROL ACCU + 1 
283a : 26 1d __ ROL ACCU + 2 
283c : 26 1e __ ROL ACCU + 3 
283e : a4 02 __ LDY $02 
2840 : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
2841 : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
sc:
2842 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
li:
2844 : __ __ __ BYT 03 00                                           : ..
--------------------------------------------------------------------
pm:
2846 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
te:
2848 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
p_sprite:
284a : __ __ __ BYT 51                                              : Q
--------------------------------------------------------------------
seed:
284b : __ __ __ BYT 00 7a                                           : .z
--------------------------------------------------------------------
giocharmap:
284d : __ __ __ BYT 01                                              : .
--------------------------------------------------------------------
fround5:
284e : __ __ __ BYT 00 00 00 3f cd cc 4c 3d 0a d7 a3 3b 6f 12 03 3a : ...?..L=...;o..:
285e : __ __ __ BYT 17 b7 51 38 ac c5 a7 36 bd 37 06 35             : ..Q8...6.7.5
--------------------------------------------------------------------
map_data:
286a : __ __ __ BYT d0 19 f9 19 22 1a 4b 1a 74 1a 9d 1a c6 1a ef 1a : ....".K.t.......
287a : __ __ __ BYT 18 1b 41 1b 6a 1b 93 1b bc 1b e5 1b 0e 1c 37 1c : ..A.j.........7.
288a : __ __ __ BYT 60 1c 89 1c b2 1c db 1c 04 1d 2d 1d 56 1d       : `.........-.V.
--------------------------------------------------------------------
skip_turn:
2898 : __ __ __ BYT 00 00                                           : ..
--------------------------------------------------------------------
b:
289a : __ __ __ BSS	920
--------------------------------------------------------------------
px:
2c32 : __ __ __ BSS	2
--------------------------------------------------------------------
py:
2c34 : __ __ __ BSS	2
--------------------------------------------------------------------
gx:
2c36 : __ __ __ BSS	4
--------------------------------------------------------------------
gy:
2c3a : __ __ __ BSS	4
