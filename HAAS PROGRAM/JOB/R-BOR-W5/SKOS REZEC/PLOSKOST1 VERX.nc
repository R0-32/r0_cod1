%
O00001 (PLOSKOST1 VERXxxxx)

G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T3 D03 M06 
G43 H03 Z300. 
S1300 M03 
#10= 3800. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -20. (KONEZ) 
#3= 0.3 (SHAG) 
#4= 42. / 2. (R INSTR) 
#5= 0. (OFFN) 

#7= 200.5 (X) 
#8= 40. / 2. (Y) 

G00 X [ #4 + 20. ] Y10. 
G00 Z [ #1 + 20. ] M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ #4 + 20. ] Y10. 

G01 Z#1 
G01 X - [ #7 - #4 ] 
G01 Y -15. 

G01 X [ #4 + 20. ] 
G00 Y15. 
END1 

M09 
G00 Z200. 
G52 X0. Y0. Z0. 
M30 


%