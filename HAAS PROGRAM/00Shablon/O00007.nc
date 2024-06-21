%
O00007 (RAD. MERA NUTRO VDOL X) 
(z0 -- NA4ALO RAD.) 
(y0 -- CENTROM FR. NA4ALO RAD.) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 8. ] Z [ 3. + 0. ] 
/ G52 X [ 0. ] Y [ -8. ] Z [ 3. + 0. ] 
/ G101 Y0 

T2 D02 M06 
G43 H02 Z150. 
S3300 M03 
#7= 660. (PODA4A mm.) 
 
#1= 0. (NA4ALO UGLA) 
#2= 90. (KONEZ UGLA) 
#3= 5. (SHAG UGLA) 
#4= 10. (D-fr.) 
#5= 5. (r PLASTINI) 
#6= 8. (R OBRABOTKI) 
#8= 60. + 15. (DLINA X) 
 
G00 Y [ - #4 / 2 ] X [ #8 / 2 ] 
G00 Z [ 30. ] M08 F#7 
 
#9= [ #6 - #5 ] 
WHILE [ #1 LT #2 ] DO1 
#1= #1 + #3 * 2 
IF [ #1 GT #2 ] THEN #1= #2 
#20= [ - SIN[ #1 - #3 ] * #9 - #5 ] (Z) 
#21= [ #6 - COS[ #1 - #3 ] * #9 - #5 ] (Y) 
#10= [ - SIN[ #1 ] * #9 - #5 ] (Z) 
#11= [ #6 - COS[ #1 ] * #9 - #5 ] (Y) 

G00 Y [ - #21 - #4 / 2 ] Z#20 
G01 X [ - #8 / 2 ] 
G00 Y [ - #11 - #4 / 2 ] Z#10 
G01 X [ #8 / 2 ] 
 
END1 
G00 Z150. M09 
G100 X0 Y0 Z0 
G52 X0. Y0. Z0. 
M30




%