%
O00004 (RAD. MERA NARUGA VDOL X) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ -16. ] Z [ -1. ] 

T7 D07 M06 
G43 H07 Z150. 
S1800 M03 
#7= 2000. (PODA4A mm.) 
 
#1= 3. (NA4ALO UGLA) 
#2= 84. (KONEZ UGLA) 
#3= 6. (SHAG UGLA) 
#4= 32. (D-fr.) 
#5= 0.8 (r PLASTINI) 
#6= 6. (R OBRABOTKI) 
#8= 660. + 50. (DLINA X) 
 
G00 Y0. X [ - #8 / 2 ] 
G00 Z [ 10. ] M08 F#7 
 
#9= [ #6 + #5 ] 
WHILE [ #1 LT #2 ] DO1 
#1= #1 + #3 * 2 
IF [ #1 GT #2 ] THEN #1= #2 
#20= [ - #6 + COS[ #1 - #3 ] * #9 - #5 ] (Z) 
#21= [ SIN[ #1 - #3 ] * #9 - #5 ] (Y) 
#10= [ - #6 + COS[ #1 ] * #9 - #5 ] (Z) 
#11= [ SIN[ #1 ] * #9 - #5 ] (Y) 

G00 Y [ - #21 - #4 / 2 ] Z#20 
G01 X [ #8 / 2 ] 
G00 Y [ - #11 - #4 / 2 ] Z#10 
G01 X [ - #8 / 2 ] 
 
END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30




%