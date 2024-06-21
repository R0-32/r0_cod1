%
O00010 (B0R FREZ IMYA)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T11 D11 M06
G43 H11 Z250. 
S700. M03
#7= 700. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -1.7 (KONEZ) 
#3= 0.5 (SHAG) 
#4= 80. / 2. (D FREZ) 
#5= 0. (SMECHENIE) 
#8= 200. / 2. (DLINA  X  ) 
#9= 40. / 2. (SHIRINA  Y  ) 

G00 X [ - [ #4 ] - [ #8 ] -10. ] Y [ - [ #9 ] + [ #4 ] -2. ] 
G00 Z80. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ - [ #4 ] - [ #8 ] -10. ] Y [ - [ #9 ] + [ #4 ] -2. ] 
G00 Z [ #1 ] 
G01 X [ 0. ] Y [ 0. ] F [ #7 ] 

(B0R PARAM) 
#21= 30. (STANDART 1) 
#22= 20. (ST2) 
#23= 10. (ST3) 

G01 
X#21 Y#22 
X - #22 Y#22 
X - #22 Y #23 
X - #21 Y 0. 

(B) 

G00 Z [ #1 + 20. ] 

END1 

M09 
G00 Z250. M05 
G00 G53 Y0 
G52 X0. Y0. Z0. 
M30 

%