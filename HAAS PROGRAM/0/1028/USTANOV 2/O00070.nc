%
O00070 (R10 LEVO)
(FR D44) 
(z0 -- NA4ALO RAD.) 
(x0 -- CENTROM FR. NA4ALO RAD.) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ -94. + 28.5 ] Y [ 39. / 2. ] Z [ 44. -26. ] 
G101 X0. 

T4 D04 M06 
G43 H04 Z150. 
S900. M03 
#7= 1300. (PODA4A mm.) 
 
#1= 0. (NA4ALO UGLA) 
#2= 90. (KONEZ UGLA) 
#3= 2. (SHAG UGLA) 
#4= 63.1 / 2. (D-fr.) 
#5= 1. (r PLASTINI) 
#6= 10. (R OBRABOTKI) 
#8= 39. / 2. (Y) 
 
G00 Y [ - #8 - #4 - 5. ] X [ #4 ] 
G00 Z [ 10. ] F#7 
M08 

#9= [ #6 - #5 ] 
WHILE [ #1 LT #2 ] DO1 
#1= #1 + #3 * 2 
IF [ #1 GT #2 ] THEN #1= #2 

#20= [ - SIN[ #1 - #3 ] * #9 - #5 ] (Z) 
#21= [ #6 - COS[ #1 - #3 ] * #9 - #5 ] (X) 
#10= [ - SIN[ #1 ] * #9 - #5 ] (Z) 
#11= [ #6 - COS[ #1 ] * #9 - #5 ] (X) 

G01 X [ + #21 + #4 ] Z#20 
G01 Y [ #8 + #4 + 5. ] 

G01 X [ + #11 + #4 ] Z#10 
G01 Y [ - #8 - #4 - 5. ] 

END1 
G00 Z150. M09 
G100 X0. 
G52 X0. Y0. Z0. 
M99 


%