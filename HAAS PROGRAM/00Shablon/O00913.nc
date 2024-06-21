%
O00913 (PAZ VDOL X BEZ RAD) 
G00 G17 G40 G49 G80 G90
G54 
G52 X-350. Y0. Z0. 

T19 D19 M06
G43 H19 Z150. 
S4500 M03
#7= 1750. (PODA4A mm.) 

#1= -40. (NA4ALO) 
#2= -44.5 (KONEZ) 
#3= 0.5 (SHAG) 
#4= 16. (D-FREZI) 
#5= 0. (OFFN) 
#6= 17.5 (SHIRINA PAZA) 
#8= 700. (DLINA X) 

G00 Y0 X [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z10. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 Y [ #6 / 2 - #4 / 2 - #5 ] X [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z#1 
G01 X [ - #8 / 2 - #4 / 2 -10. ] 
G00 Y [ - #6 / 2 + #4 / 2 + #5 ] 
G00 Z#1 
G01 X [ #8 / 2 + #4 / 2 + 10. ] 

END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30




%