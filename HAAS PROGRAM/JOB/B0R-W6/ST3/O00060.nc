%
O00060 (RASFREZEROVKA OTV)
G00 G17 G40 G49 G80 G90
G55 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T16 D16 M06 
G43 H16 Z200. 
S2200 M03 
#7= 1000 (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -20. (KONEZ) 
#3= 0.3 (SHAG) 
#6= 17.3 (D-OTV.) 
#4= 12. (D-FREZI) 
#5= 0. (OFFN) 

G00 X0. Y0. 
G00 Z50. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] Z#1 

END1 
G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] 
G01 X0. Y0. 

G00 Z200. 
G52 X0. Y0. Z0. 
M30



%