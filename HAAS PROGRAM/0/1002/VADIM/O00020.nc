%
O00020 (RR DOR)
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ -45. ] Y [ 0. ] Z [ 0. ] 

T5 D05 M06
S2200. M03 G43 H05 Z100. 
#7= 500. (PODA4A mm.) 

#1= 0.1 (NA4ALO) 
#2= -7.6 (KONEZ) 
#3= 9. (SHAG) 
#4= 12. (D FREZ) 
#5= 0. (SMECHENIE) 
#8= 70. (DLINA  X  ) 
#9= 15.2 (SHIRINA Y ) 
#7= 500. (PODA4A) 

G00 X [ - #4 / 2. - #8 / 2. -10. ] Y [ - #9 / 2. + #4 / 2. ] 
G00 Z80. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ - #4 / 2. - #8 / 2. -10. ] Y [ - #9 / 2 + #4 / 2 ] 
G00 Z [ #1 ] 
G01 X [ #8 / 2. + #4 / 2. + 10. ] F [ #7 ] 
G00 Z [ #1 + 20. ] 

END1 

M09 
G00 Z300. M05 
G00 G53 Y0 
G52 X0. Y0. Z0. 
M99 



%