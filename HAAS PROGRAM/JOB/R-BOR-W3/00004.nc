%
O00004 (R-BOR-SNAKE-FLEX-CENTER) (0) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z10. 

M06 T2 D02 
G43 H02 Z100. 
S1200 M03 F500 

(PARAM) 
#10= 500. (PODAHA) 
#1= 4. (NAHALO Z) 
#2= 1. (KONEC Z) 
#3= 0.5 (SHAG Z) (LET) 
#4= 43. / 2 (R FREZY) 
#5= 0. (OFFN) (LET) 

#6= 110. (X) (ALL DETAL) 
#7= 54. (Y) 
#8= 0. (FASKA) 
#9= 0. (OTYEZD Y) 
#11= 0. (OTYEZD X) 
#12= 10. (OTSTUP) 
#13= 0. (TEST Z) 

#14= #7 / 2. (Y STEP1) 
#15= - 1. (Y STEP CHANGE) 
#16= #15 * #14 (Y STEP2) 

#17= #6 / 2. (X/2) (END2) 
(PARAM) 
(CONS) #19= - [ #17 ] (X STEP 1) 

M08 F#10 

G01 Z [ #13 + #12 ] X [ #19 ] Y [ #14 ] 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

(LET) #19= - [ #17 ] (X STEP 1) 
G01 Z [ #13 + #12 ] X [ #19 ] Y [ #14 ] 
G01 Z#1 

WHILE [ #19 LT #17 ] DO2 
IF [ #19 GT #17 ] THEN #19= #17 

G01 
(LET) #19= #19 + #4 
(X STEP2) X [ #19 ] Y [ #14 ] 
Y [ #16 ] 
(LET) #19= #19 + #4 
(X STEP2) X [ #19 ] Y [ #16 ] 
Y [ #14 ] 

END2 
G01 Z 100. 
END1 

(BOT) 
M06 
M09 
M30



%