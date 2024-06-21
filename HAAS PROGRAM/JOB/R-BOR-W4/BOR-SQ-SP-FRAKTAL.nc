%
O00025 (BOR-CENTER-FRAKTAL)
G00 G17 G40 G49 G80 G90
G54 

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
#7= 100. (Y) 
#8= 0. (FASKA) 
#9= 0. (OTYEZD Y) 
#11= 0. (OTYEZD X) 
#12= 20. (OTSTUP) 
#13= 0. (TEST Z) 

#15= 0. (CHANGE Y) 
#16= 0. (END PO Y) 
#17= #6 / 2 + #4 (END2 PO X) 
(PARAM) 

M08 F#10 
G01 Z [ #12 + #1 ] X 0. Y 0. 

WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 

G01 Z [ #12 + #1 ] X 0. Y 0. 
(LET) #14= 0. (START PO Y) 
(LET) #19= 0. (START PO X) 
Z#1 

#20= #20 + 10. 
G68 R#20 

WHILE [ #19 LT #17 ] DO2 IF [ #19 GT #17 ] THEN #19= #17 
(LET) #19= #19 + #4 
(LET) #14= #14 + #4 
X#19 
Y#14 
(LET) #19= - [ #19 + #4 ] 
(LET) #14= - [ #14 + #4 ] 
X#19 
Y#14 
(LET) #19= - 1 * #19 
(LET) #14= - 1 * #14 
END2 

G01 Z 100. 
END1 

(BOT) 
M06 
M09 
M30 




%