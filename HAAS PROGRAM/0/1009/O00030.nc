%
O00030 (LISKA)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0 ] 

T18 D18 M06
G43 H18 Z250. 
S4500. M03
#7= 300. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -0.2 (KONEZ) 
#3= 0.1 (SHAG) 
#4= 0. (D FREZ) 

G00 X [ 0. ] Y [ 155. ] 
G00 Z80. M08 
F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 Z#1 

G01 Y [ -155. ] 

G00 Z20. 

G00 Y [ 155. ] 

END1 

M09 
G00 Z250. M05 
G00 G53 Y0 
G52 X0. Y0. Z0. 
M99 



%