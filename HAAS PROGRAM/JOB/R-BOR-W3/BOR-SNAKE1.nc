%
O00011 (SNAKE-1) (R-BOR-SNAKE)
G00 G17 G40 G49 G80 G90
G54 
G52 X500. Y0. Z100. 

M06 T2 D02 
G43 H02 Z100. 
S500 M03 F500 

(PARAM) 
#10= 500. (PODAHA) 
#1= 0. (NAHALO Z) 
#2= -8. (KONEC Z) 
#3= 1. (SHAG Z) (LET) 
#4= 32.5 / 2 (R FREZY) 
#5= 0. (OFFN) (LET) 

#6= 328. (X) (ALL DETAL) 
#7= 234. (Y) 
#8= 0. (FASKA) 
#9= 0. (OTYEZD Y) 
#11= 0. (OTYEZD X) 
#12= 10. (OTSTUP) 
#13= 0. (TEST Z) 

#14= #7 / 2. (Y STEP1) 
#15= - 1. (Y STEP CHANGE) 
#16= #15 * #14 (Y STEP2) 

#17= #6 / 2. (X/2) (END2) 
#18= #4 (X STEP CHANGE) 
(PARAM) 
(CONS) #19= - [ #17 ] (X STEP 1) 
(CONS) 

M08 F#10 

G00 Z [ #13 + #12 ] X [ #19 - #12 ] Y [ #14 + #12 ] 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

(LET) #19= - [ #17 ] (X STEP 1) 
G00 Z [ #13 + #12 ] X [ #19 - #12 ] Y [ #14 + #12 ] 
G01 Z#1 

WHILE [ #19 LT #20 ] DO2 
IF [ #19 GT #20 ] THEN #19= #20 

G01 
(LET) #19= #19 + #18 (X STEP2) X [ #19 ] Y [ #14 ] 
Y [ #16 ] 
(LET) #19= #19 + #18 (X STEP2) X [ #19 ] Y [ #16 ] 
Y [ #14 ] 

END2 

G00 Z#13 
END1 

(BOT) 
M06 
M09 
M30


%