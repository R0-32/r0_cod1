%
O00030 (BOR-STENKA-WHILE) (BOR-STINKA1)
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

(Y0 V CENTRE PO Y; X0 KOSANIEM S PRAVA) 
(-0----0----0-) 
(-I------------I-) 
(-0----------0-) 
(-I------------I-) 
(-0----0----0-) 

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
#13= 25. (PODSTUP) 
#11= #13 (LET) 
#12= 20. (OTSTUP) 
(PARAM) 
M08 F#10 

G00 Z [ #12 + #1 ] X [ #12 (OTYEZD X) ] Y [ 0. (OTYEZD Y) ] 

G00 X - [ #11 ] Y [ #8 - #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 

#11= #11 - #9 
WHILE [ #11 LT #6 -25. ] DO1 
#11= #11 + #9 
IF [ #11 GT #6 -25. ] #11= #6 -25. 
G00 X - [ #11 ] Y [ #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 
END1 

G00 X - [ #11 ] Y [ #8 - #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 


#11= #11 + #9 
WHILE [ #11 GT #13 ] DO1 
#11= #11 - #9 
IF [ #11 LT #13 ] #11= #13 
G00 X - [ #11 ] Y - [ #8 ] 
G00 Z 1. 
G01 Z #2 
G00 Z100. 
END1 

(BOT) 
G00 Z200. M09 
M05 
G52 X0. Y0. Z0. 
G53 Y0 
M30

%