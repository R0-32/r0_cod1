%
O00005 (TOREC RR93)
G00 G17 G40 G49 G80 G90 
G54 

G52 X [ -93. ] Y [ 0 ] Z [ 0. ] 

T4 D04 M06 
G43 H04 Z200. 
S1000 M03 
#10= 1200. (PODA4A mm.) 
 
#1= 23. (NA4ALO) 
#2= -1.5 (KONEZ) 
#3= 0.5 (SHAG) 
#4= 40. / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= - #4 - #5 
#8= -235. / 2. - #4 + 5. 
#9= 10. / 2. + #4 - 5. 

G00 Y [ #8 ] X [ #7 ] 
G00 Z100. M08 
G01 Z#1 F1000. 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2. 
IF [ #1 LT #2 ] THEN #1= #2 
 
G01 Y [ #8 ] X [ #7 ] F#10 
G01 Z [ #1 + #3 ] 
G01 Y [ #9 ] 
G01 Z [ #1 ] 
G01 Y [ #8 ] 

END1 
G00 Z200. 
G52 X0. Y0. Z0. 
G53 Y0 Z0 
M30 



%