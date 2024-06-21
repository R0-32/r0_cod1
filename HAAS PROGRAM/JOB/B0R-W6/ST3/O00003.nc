%
O00003 (KONTYR X Y)

G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 1 ] 

T3 D03 M06 

G43 H03 Z100. 
S1500. M03 
#10= 3000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -65.5 (KONEZ) 
#3= 0.3 (SHAG) 
#4= 42. / 2. (R INSTR) 
#5= 0. (OFFN) 

#7= 280.5 / 2. (X) 
#8= 167.5 / 2. (Y) 

G00 X [ #7 + #4 + 10. ] Y - [ #8 + #4 ] 
G00 Z20. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
G01 X [ #7 + #4 + 10. ] Y - [ #8 + #4 ] 

G01 Z#1 
G01 X - [ #7 + #4 ] 
G01 Y [ #8 + #4 ] 
G01 X [ #7 + #4 ] 
G01 Y - [ #8 + #4 ] 
G01 X [ #7 + #4 ] 
END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30 




%