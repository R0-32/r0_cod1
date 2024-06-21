%
O00010 (R-BOR-SNAKE)
G00 G17 G40 G49 G80 G90
G54 

G52 X0. Y0. Z0. 

M06 T2 D02 
G43 H02 Z100. 
S500 M03 F500 


(CONS) 
#10= 500. (PODAHA) 
#1= 0. (NAHALO Z) 
#2= -8. (KONEC Z) 
#3= 1. (SHAG Z) (LET) 
#4= 10. / 2 (R FREZY) 
#5= 0. (OFFN) (LET) 

#6= 80. (X) (FULL ZAGOTOVKA) 
#7= 80. (Y) 
#8= 0. (FASCA) 
#9= 0. (OTYEZD Y) 
#11= 0. (OTYEZD X) 
#12= 40. (OTSTUP) 
#13= 50. (TEST Z) 
(CONS) 

M08 F#10 

G00 Z #13 
G00 X [ -60. + #12 ] Y [ 40. + #12 ] 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X-60. Y40. Z #1 
G01 X-60. Y40. Z#1 
G01 X-60. Y-40. 
X-50. Y-40. 
X-50. Y40. 
X-40. Y40. 
X-40. Y-40. 
X-30. Y-40. 
X-30. Y40. 
X-20. Y40. 
X-20. Y-40. 
X-10. Y-40. 
X-10. Y40. 
X0. Y40. 
X0. Y-40. 

G00 Z#13 

END1 
(INSIDE ARKA) 
(PODVAL) 
M06 
M09 
M30 


%