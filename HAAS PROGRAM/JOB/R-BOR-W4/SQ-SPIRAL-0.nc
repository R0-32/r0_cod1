%
O00030 (BOR-W4-SQ-SPIRAL-TO-0)
G00 G17 G40 G49 G80 G90
G54 
G52 X400. Y-50. Z10. 

M06 T2 D02 
G43 H02 Z100. 
S1200 M03 F500 

(PARAM) 
#10= 500. (PODAHA) 
#1= 4. (NAHALO Z) 
#2= 1. (KONEC Z) 
#3= 0.5 (SHAG Z) (LET) 
#4= 40. / 2 (R FREZY) 
#5= 0. (OFFN) (LET) 

#6= 150. (X) (ALL DETAL) 
#7= 180. (Y) 
#8= 0. (FASKA) 
#9= #6 / 2. + #4 (OTYEZD X) 
#11= #7 / 2. + #4 (OTYEZD Y) 
#12= 20. (OTSTUP) 
#13= 0. (TEST Z) 

(PARAM) 

M08 F#10 
G01 Z [ #12 + #1 ] X #9 Y #11 

WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 

G01 Z [ #12 + #1 ] X #9 Y #11 
Z#1 

#16= #9 (LET X) 
#17= #11 (LET Y) 
IF [ #9 GT #11 ] THEN #16= #11 AND #17= #9 
WHILE [ #16 NE 0. ] DO2 
(LET) #16= - [ #16 - #4 ] 
(LET) #17= - [ #17 - #4 ] 
X #16 
Y #17 
(LET) #16= - [ #16 + #4 ] 
(LET) #17= - [ #17 + #4 ] 
X #16 
Y #17 
END2 

G01 Z 100. 
END1 

(BOT) 
M06 
M09 
M30 




%