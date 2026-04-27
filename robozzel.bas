10 REM ** Level Data (5 columns × 4 rows per level + coords) **
20 DATA "....."  : REM Level 1 row1
30 DATA "..*.."
40 DATA "..^.."
50 DATA "....."
60 DATA 2,2,0   : REM start X,Y,Dir for level1 (0-based)
70 DATA "....." : REM Level 2 ...
80 DATA ".*.*."
90 DATA "..^.."
100 DATA "....."
110 DATA 2,2,0
120 REM (Continue DATA for all 30 levels...)
130 
140 DIM R$(4)       : REM Grid rows
150 DIM SX,SY,SD     : REM Start x,y,dir (0-based)
160 DIM PX,PY,PD     : REM Player x,y,dir (1-based internally)
170 DIM SF(10),SP(10): REM Call stack: SF=function, SP=position in string
180 DIM ST          : REM Stack top
190 DIM N,LVLIDX,STARS : N for loops, LVLIDX=current level index, STARS count of stars

200 REM ** Load Level **
210 RESTORE LVLIDX*5+1 : REM assume 5 DATA lines per level (4 grid + 1 coords)
220 READ R$(1),R$(2),R$(3),R$(4)
230 READ SX,SY,SD
240 PX = SX+1 : PY = SY+1 : PD = SD
250 REM Count stars
260 STARS=0
270 FOR I=1 TO 4: FOR J=1 TO 5
280 IF MID$(R$(I),J,1)="*" THEN STARS=STARS+1
290 NEXT J,I
300 RETURN

400 REM ** Draw Grid **
410 PRINT "Level "; LVLIDX+1
420 FOR I=1 TO 4: PRINT R$(I) : NEXT I
430 RETURN

500 REM ** Clear Program (set empty) **
510 MAIN$="" : F1$="" : F2$="" : F3$="" : F4$=""
520 PRINT "Program cleared."
530 RETURN

600 REM ** Main Loop: command prompt **
610 PRINT : INPUT "CMD> "; A$
620 A$ = UPPER$(A$)
630 IF A$="RUN" THEN GOSUB 900: GOTO 610
640 IF A$="CLEAR" THEN GOSUB 500: GOTO 410
645 IF A$="CLS" THEN PRINT CHR$(147): GOTO 410
650 IF A$="HELP" THEN PRINT "Commands: 0-4 to set code; RUN; CLEAR; CLS": GOTO 610
660 IF A$<>""
670   C=VAL(LEFT$(A$,1))
670   IF C>=0 AND C<=4 THEN 
680     CODE$ = MID$(A$,2)
690     IF C=0 THEN MAIN$=CODE$
695     IF C=1 THEN F1$=CODE$
700     IF C=2 THEN F2$=CODE$
705     IF C=3 THEN F3$=CODE$
710     IF C=4 THEN F4$=CODE$
715     PRINT "Set F";C;" = ";CODE$
720     GOTO 610
730 ENDIF
740 PRINT "Unknown command."
750 GOTO 610

900 REM ** Run Program Logic **
910 REM Copy grid to workspace (modify R$ in place)
920 ST=1: SF(1)=0: SP(1)=1
930 WHILE ST>0
940   FN=SF(ST)
945   IF FN=0 THEN C$=MAIN$ ELSE IF FN=1 THEN C$=F1$ ELSE IF FN=2 THEN C$=F2$
946   IF FN=3 THEN C$=F3$ ELSE IF FN=4 THEN C$=F4$
950   POS = SP(ST)
960   IF POS > LEN(C$) THEN ST=ST-1: IF ST=0 THEN GOTO 1100 ELSE  GOTO 940
970   CMD$ = MID$(C$,POS,1)
980   SP(ST)=POS+1
990   IF CMD$=" " OR CMD$="" THEN GOTO 940
1000  TILE$ = MID$(R$(PY),PX,1)
1010  REM Color match: if tile is colored and cmd is a color or '^'
1020  IF (CMD$="r" AND TILE$<>"r") OR (CMD$="g" AND TILE$<>"g") OR (CMD$="b" AND TILE$<>"b") THEN GOTO 940
1030  IF CMD$="^" OR CMD$="r" OR CMD$="g" OR CMD$="b" THEN
1040     REM Compute movement
1050     NX=PX: NY=PY
1060     IF PD=0 THEN NY=PY-1
1070     IF PD=1 THEN NX=PX+1
1080     IF PD=2 THEN NY=PY+1
1090     IF PD=3 THEN NX=PX-1
1100    REM Check boundaries
1110    IF NX<1 OR NX>5 OR NY<1 OR NY>4 THEN PRINT "CRASHED!": GOTO 1200
1120    REM Move player
1130    IF MID$(R$(NY),NX,1)="*" THEN STARS=STARS-1
1140    REM Clear old player pos
1150    R$(PY) = LEFT$(R$(PY),PX-1) + "." + MID$(R$(PY),PX+1)
1160    PX=NX: PY=NY
1170    R$(PY) = LEFT$(R$(PY),PX-1) + "^" + MID$(R$(PY),PX+1)
1180    GOTO 940
1190  ENDIF
1200  IF CMD$="<" THEN PD=(PD+3) MOD 4: GOTO 940
1210  IF CMD$=">" THEN PD=(PD+1) MOD 4: GOTO 940
1220  CVAL = VAL(CMD$) : IF CVAL>=1 AND CVAL<=4 THEN ST=ST+1: SF(ST)=CVAL: SP(ST)=1
1230  GOTO 940
1240 WEND

1100 REM ** End of Run Loop **
1110 PRINT "Program End."
1120 IF STARS=0 THEN LVLIDX=LVLIDX+1: IF LVLIDX=MaxLevel THEN LVLIDX=0
1130 PRINT "Level Complete! Next level."
1135 GOSUB 200: GOSUB 400: RETURN
1140 PRINT "Failed: Missed Stars. Retry."
1150 GOTO 400

1200 REM End execution on crash
1210 RETURN
