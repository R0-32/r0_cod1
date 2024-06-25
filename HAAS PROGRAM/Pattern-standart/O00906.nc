%
O00906 (OTV.WHILE) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T4 D04 M06
G43 H04 Z100. 
S900 M03
#7= 1000. (PODA4A mm.) 

#1= 0.5 (NA4ALO) 
#2= 0. (KONEZ) 
#3= 0.5 (SHAG) 
#6= 50. (D-OTV.) 
#5= 0. (OFFN) 

G00 X0. Y0. 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y0. 
G01 Z#1 
G01 X0. Y [ #6 / 2. - #5 ] G41 
G03 I 0. J [ - #6 / 2. + #5 ] 
G01 X0. Y0. G40 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30




%