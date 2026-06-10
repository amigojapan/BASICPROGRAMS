10 print chr$(147):rem clear screen
20 gosub 1000
30 gosub 2000
40 gosub 2300
50 if te=0 then print "you win!":end
60 if li=0 then print "game over!":end
70 ox=px:oy=py:g1x=gx(1):g1y=gy(1):g2x=gx(2):g2y=gy(2)
100 get a$:if a$="" then 100
110 dx=0:dy=0:if a$="w" then dy=-1:p$=chr$(81)
120 if a$="s" then dy=1:p$=chr$(81)
130 if a$="a" then dx=-1:p$=chr$(81)
140 if a$="d" then dx=1:p$=chr$(81)
150 if dx=0 and dy=0 then 100
160 nx=px+dx:ny=py+dy:if b(nx,ny)=1 then 100
170 px=nx:py=ny:x=ox:y=oy:gosub 6200
180 if b(px,py)=2 then sc=sc+10:b(px,py)=0:te=te-1
190 if b(px,py)=3 then sc=sc+50:b(px,py)=0:te=te-1:pm=10
200 gosub 4000:gosub 3000:gosub 4000
210 if pm>0 then pm=pm-1
220 gosub 2200:gosub 2300:goto 50
1000 dim b(18,13),gx(2),gy(2):sc=0:li=3:pm=0:te=0:p$=chr$(81):restore
1010 for y=0 to 13:read r$:for x=0 to 18
1020 c$=mid$(r$,x+1,1):if c$="#" then b(x,y)=1
1030 if c$="o" then b(x,y)=2:te=te+1
1040 if c$="x" then b(x,y)=3:te=te+1
1050 if c$="^" then px=x:py=y
1060 if c$="m" then gx(1)=x:gy(1)=y
1070 if c$="w" then gx(2)=x:gy(2)=y
1080 next x:next y:return
2000 for y=0 to 13
2005 for x=0 to 18:gosub 6000:poke 1024+y*40+x,v:next x:next y:return

#cut here

2200 x=ox:y=oy:gosub 6200:x=g1x:y=g1y:gosub 6200:x=g2x:y=g2y:gosub 6200
2205 x=px:y=py:gosub 6100:x=gx(1):y=gy(1):gosub 6100:x=gx(2):y=gy(2):gosub 6100
2210 return
2300 print chr$(19):for i=1 to 18:print:next i
2305 print "score:";sc;" lives:";li;" power:";pm:return
3000 for i=1 to 2:bd=-1:if pm=0 and i=2 then bd=999
3010 bx=gx(i):by=gy(i):v=0:n=0
3020 for d=1 to 4:cx=0:cy=0:if d=1 then cy=-1:if d=2 then cy=1
3030 if d=3 then cx=-1:if d=4 then cx=1
3040 tx=gx(i)+cx:ty=gy(i)+cy:if tx<0 or tx>18 or ty<0 or ty>13 then 3100
3050 if b(tx,ty)=1 then 3100
3060 v=1:md=abs(tx-px)+abs(ty-py)
3070 if pm>0 and md>bd then bd=md:bx=tx:by=ty
3080 if pm=0 and i=2 and md<bd then bd=md:bx=tx:by=ty
3090 if i=1 then n=n+1:if rnd(1)<(1/n) then bx=tx:by=ty
3100 next d:x=gx(i):y=gy(i):gosub 6200:gx(i)=bx:gy(i)=by:next i:return
4000 for i=1 to 2:if px<>gx(i) or py<>gy(i) then 4020
4010 if pm>0 then x=gx(i):y=gy(i):gosub 6200:sc=sc+200:gx(i)=1:gy(i)=10:goto 4020
4015 li=li-1:px=1:py=1:p$=chr$(81)
4020 next i:return
6000 v=32:if b(x,y)=1 then v=160
6010 if b(x,y)=2 then v=46
6020 if b(x,y)=3 then v=87:return
6030 return
6100 gosub 6000:v1=v:if x=gx(1) and y=gy(1) then v1=161
6110 if x=gx(2) and y=gy(2) then v1=162
6120 if x=px and y=py then v1=asc(p$)
6130 poke 1024+y*40+x,v1:return
6200 gosub 6000:poke 1024+y*40+x,v:return
5000 data "###################"
5010 data "#^ooooooooooooooox#"
5020 data "#o#######o#######o#"
5030 data "#ooooooooooooooooo#"
5040 data "#o#o#####o#####o#o#"
5050 data "#o#o##ooooooo##o#o#"
5060 data "#o#o##o#####o##o#o#"
5070 data "#o#o##o#####o##o#o#"
5080 data "#o#o##ooooooo##o#o#"
5090 data "#o#o###########o#o#"
5100 data "#moooooooooooooooo#"
5110 data "#o###############o#"
5120 data "#wooooooooooooooox#"
5130 data "###################"