%
O00929 (LISKA Y2) 
G00 G17 G40 G49 G80 G90
G54 

T2 D02 M06
G43 H02 Z100. 
S3500 M03
#7= 500. (PODA4A mm.) 
#8= [ 30. + 16. ] (DLINA X) 
#9= [ 36. -0.09 ] (DLINA Y) 
#10= 16. (D FREZI) 

G52 X0. Y [ #9 / 2 + #10 / 2 ] Z0. 
M97 P5 
M01 
M03 
G52 X0. Y [ - #9 / 2 - #10 / 2 ] Z0. 
M97 P5 

G53 G00 Y0 
G52 X0. Y0. Z0. 
M30 

N5 
#1= 0. (NA4ALO) 
#2= -10. (KONEZ) 
#3= 0.5 (SHAG) 

G00 Y0. X [ #8 / 2 ] Z100. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 

G00 Y0. X [ #8 / 2 ] 
G00 Z [ #1 + #3 ] 
G01 X [ - #8 / 2 ] 
G00 Z#1 
G01 X [ #8 / 2 ] 

END1 
G00 Z100. M09 
M30 





%