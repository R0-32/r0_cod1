%
O00010 (BOR-STINKA1)
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

M06 T17 D17 
G43 H17 Z100. 
S800 M03 

(PARAM) 
#10= 80. (PODAHA) 
#1= 0. (NAHALO Z) 
#2= -15. (KONEC Z) 
#4= 6.8 / 2 (R FREZY) 
#6= 430. (X) 
#7= 230. (Y) 
#8= 90. (SHAG PO Y) 
#9= 190. (SHAG PO X) 
#11= 25. (PODSTUP) (LET) 
#12= 20. (OTSTUP) 
(PARAM) 
M08 F#10 

G00 Z [ #12 + #1 ] X [ #12 (OTYEZD X) ] Y [ 0. (OTYEZD Y) ] 

G00 X - [ #11 ] Y [ #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 

G00 X - [ #11 + #9 ] Y [ #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 

G00 X - [ #11 + #9 + #9 ] Y [ #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 

G00 X - [ #11 + #9 + #9 ] Y [ #8 - #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 

G00 X - [ #11 + #9 + #9 ] Y [ #8 - #8 - #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 

G00 X - [ #11 + #9 ] Y [ #8 - #8 - #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 

G00 X - [ #11 ] Y [ #8 - #8 - #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 

G00 X - [ #11 ] Y [ #8 - #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 

(BOT) 
G00 Z200. M09 
M05 
G52 X0. Y0. Z0. 
G53 Y0 
M30 


%