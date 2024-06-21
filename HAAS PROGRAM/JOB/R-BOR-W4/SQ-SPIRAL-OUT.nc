%
O00032 (BOR-SQ-SPIRAL-OUT) (BOR-SQ-SPIRAL-OUTSIDE) (BOR-SQUARE-SPIRAL)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 10. ] 
 
M06 T14 D14 
G43 H14 Z300. 
S800. M03 
#10= 1000. (PODA4A mm.) 
F500 

(PARAM) 
#1= 0. (NAHALO Z) 
#2= -1. (KONEC Z) 
#3= 0.5 (SHAG Z) (LET) 
#4= 63. / 2 (R FREZY) 
#5= 0. (OFFN) (LET) 

#6= 147. (X) (ALL DETAL) 
#7= 100. (Y) 
#8= 0. (FASKA) 
#12= 20. (OTSTUP) 
#13= 0. (TEST Z) 

(PARAM) 

M08 F#10 
G01 Z [ #12 + #1 ] X [ #6 / 2. + #4 * 2 (OTYEZD X) ] Y [ #7 / 2. + #4 * 2 (OTYEZD Y) ] 

WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 

#16= #6 / 2. + #4 * 2 (LET X) 
#17= #7 / 2. + #4 * 2 (LET Y) 
G01 Z [ #12 + #1 ] X [ #16 (OTYEZD X) ] Y [ #17 (OTYEZD Y) ] 
Z#1 

#18= #16 / #4 
IF [ #16 / #4 GT #17 / #4 ] THEN #18= #17 / #4 

WHILE [ #18 GT 0. ] DO2 IF [ #18 LT 0. ] THEN #18= 0. 
#18= #18 - 1. 
(LET) #16= - [ #16 - #4 ] 
(LET) #17= - [ #17 - #4 ] 
X #16 
Y #17 
#18= #18 - 1. 
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