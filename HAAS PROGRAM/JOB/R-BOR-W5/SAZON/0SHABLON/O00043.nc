%
O00043 (SHPONKA)

G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T17 D17 M06 
G43 H17 Z50. 
S2000. M03 
#10= 1000. (PODA4A mm.) 
 
#1= -7. (NA4ALO) 
#2= -17. (KONEZ) 
#3= 0.25 (SHAG) 
#4= 25. / 2 (R INSTR) 

#7= 24. / 2. (X) 
#8= 18. / 2. (Y) 
#9= 22. / 2. + #4 + 2. 

G00 X [ 0. ] Y [ #9 ] 
G00 Z10. 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G01 X [ 0. ] Y [ #9 ] 
G01 Z [ #1 ] 
G01 G41 Y [ #8 ] 
G01 X [ #7 - #8 ] 
G02 X [ #7 - #8 ] Y [ - #8 ] R [ #8 ] 
G01 X [ - #7 + #8 ] Y [ - #8 ] 
G02 X [ - #7 + #8 ] Y [ #8 ] R [ #8 ] 
G01 X [ 0. ] 
G01 G40 Y [ #9 ] 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30 






%