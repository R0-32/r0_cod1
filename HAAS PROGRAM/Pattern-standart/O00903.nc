%
O00903 (PAZ VDOL Y) 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 66. ] Z [ 0. ] 

T2 D02 M06
G43 H02 Z100. 
S4500 M03
#7= 350. (PODA4A mm.   V CIKLE EST MNOGITELI) 

#1= 0. (NA4ALO) 
#2= -0.625 (KONEZ) 
#3= 0.2 (SHAG) 
#4= 8. (D-FREZI) 
#5= -0.15 (OFFN) 
#6= 16. (SHIRINA PAZA) 
#8= 35. (DLINA Y) 

G00 X0. Y [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z25. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ - #6 / 2 + #4 / 2 + #5 ] Y [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z [ #1 ] 
G01 Y [ - #8 / 2 - #4 / 2 - 10. ] F [ #7 * 1. ] 
G00 X [ #6 / 2 - #4 / 2 - #5 ] 
G01 Y [ #8 / 2 + #4 / 2 + 10. ] F [ #7 * 1. ] 

END1 
G00 Z100. 
G52 X0. Y0. Z0. 
M30 





%