%
O00015 (VERX CHISTO)
(D63 PLYNGER) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T22 D22 M06 
G43 H22 Z200. 
S900. M03 
#10= 700. (PODA4A mm.) 
 
#1= 2.5 (NA4ALO) 
#2= 0. (KONEZ) 
#3= 0.5 (SHAG) 
#4= 0. / 2. (R INSTR) 
#5= 0. (OFFN) 

#7= - #4 -85. 
#8= #4 
#9= #4 + 85. 

G00 X [ #7 ] Y [ #8 ] 
G00 Z5. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2. 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #7 ] Y [ #8 ] 
G00 Z [ #1 + #3 ] 
G01 X [ #9 ] 
G00 Z [ #1 ] 
G01 X [ #7 ] 

END1 
G00 Z200. M09 
G52 X0. Y0. Z0. 

M99 

%