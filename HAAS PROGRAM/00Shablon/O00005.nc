%
O00005 (RAD. MERA NUTRO VDOL Y) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. / 2 ] Y [ 0. ] Z [ 0. ] 

T6 D06 M06 
G43 H06 Z150. 
S750 M03 
#7= 750. (PODA4A mm.) 
 
#1= 0. (NA4ALO UGLA) 
#2= 90. (KONEZ UGLA) 
#3= 6. (SHAG UGLA) 
#4= 63. (D-fr.) 
#5= 1. (r PLASTINI) 
#6= 20. (R OBRABOTKI) 
#8= 180. + 65. (DLINA Y) 
 
G00 X [ - #4 / 2 ] Y [ #8 / 2 ] 
G00 Z [ 30. ] M08 F#7 
 
#9= [ #6 - #5 ] 
WHILE [ #1 LT #2 ] DO1 
#1= #1 + #3 * 2 
IF [ #1 GT #2 ] THEN #1= #2 
#20= [ - SIN[ #1 - #3 ] * #9 - #5 ] (Z) 
#21= [ #6 - COS[ #1 - #3 ] * #9 - #5 ] (X) 
#10= [ - SIN[ #1 ] * #9 - #5 ] (Z) 
#11= [ #6 - COS[ #1 ] * #9 - #5 ] (X) 

G00 X [ - #21 - #4 / 2 ] Z#20 
G01 Y [ - #8 / 2 ] 
G00 X [ - #11 - #4 / 2 ] Z#10 
G01 Y [ #8 / 2 ] 
 
END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30




%