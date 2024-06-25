%
O00924 (LISKA X2) 
G00 G17 G40 G49 G80 G90
G54 

T6 D06 M06
G43 H06 Z100. M31 
S1500 M03
#7= 1000. (PODA4A mm.) 

G52 X [ 46. / 2 + 63. / 2 ] Y0. Z-3. 
M97 P5 
M01 
M03 
G52 X [ -46. / 2 - 63. / 2 ] Y0. Z-3. 
M97 P5 

G53 G00 Y0 
G52 X0. Y0. Z0. 
M30 

N5 
#1= -43. (NA4ALO) 
#2= -57. (KONEZ) 
#3= 2. (SHAG) 
#8= 60. (DLINA Y) 

G00 X0. Y [ #8 / 2 ] Z100. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X0. Y [ #8 / 2 ] 
G00 Z [ #1 + #3 ] 
G01 Y [ - #8 / 2 ] 
G00 Z#1 
G01 Y [ #8 / 2 ] 

END1 
G00 Z100. M09 
M99 





%