%
O00926 (PAZ VDOL X BEZKOR) 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ -22.5 -25. ] Z0. 

T5 D05 M06
G43 H05 Z150. 
S1200 M03
#7= 1200. (PODA4A mm.) 

#1= 0.5 (NA4ALO) 
#2= -33. (KONEZ) 
#3= 1. (SHAG) 
#4= 50.45 (D-FREZI) 
#6= 52. (SHIRINA Y) 
#8= 62. + 63. (DLINNA X) 
#5= 0. (OFFN) 

G00 X [ - #8 / 2 ] Y [ - #6 / 2 + #4 / 2 + #5 ] 
G00 Z10. M08 
G00 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ - #8 / 2 ] Y [ - #6 / 2 + #4 / 2 + #5 ] 
G00 Z#1 
G01 X [ #8 / 2 ] 
G00 Y [ #6 / 2 - #4 / 2 - #5 ] 
G01 X [ - #8 / 2 ] 

END1 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30




%