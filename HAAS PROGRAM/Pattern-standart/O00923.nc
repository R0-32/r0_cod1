%
O00923 (FASKA NARUGA) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T3 D03 M06
G43 H03 Z100. 
S2000 M03
#7= 1000. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -1.5 (KONEZ) 
#3= 0.1 (SHAG) 
#6= 257.5 (D-OTV.) 
#4= 16. (D-FREZI) 
#5= 0. (OFFN) 

G00 X0. Y [ #6 / 2 + #4 / 2 + 15. ] 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
#5= #5 + #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ #6 / 2 + #4 / 2 + 15. ] 
G01 Z#1 
G01 X0. Y [ #6 / 2 + #5 ] G41 
G02 I0. J [ - #6 / 2 - #5 ] 
G01 X0. Y [ #6 / 2 + #4 / 2 + 15. ] G40 

END1 
G01 X0. Y [ #6 / 2 + #4 / 2 + 15. ] 

G00 Z100. M09 
G53 Y0. 
G52 X0. Y0. Z0. 
M30




%