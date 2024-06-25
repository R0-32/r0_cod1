%
O00916 (KANAVKA VDOL X) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T2 D02 M06
G43 H02 Z100. 
S6500 M03
#7= 400. (PODA4A mm.) 

#1= 0.5 (NA4ALO) 
#2= -4. (KONEZ) 
#3= 0.25 (SHAG) 
#4= 3. (D-FREZI) 
#8= 40. (DLINA Y) 

G00 Y0 X [ #8 / 2 + #4 / 2 + 3. ] 
G00 Z10. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 

G00 Y0 X [ #8 / 2 + #4 / 2 + 3. ] 
G00 Z [ #1 + #3 ] 
G01 X [ - #8 / 2 - #4 / 2 - 3. ] 
G00 Z#1 
G01 X [ #8 / 2 + #4 / 2 + 3. ] 

END1 
G00 Z100. M09 
G53 Y0 
G52 X0. Y0. Z0. 
M30




%