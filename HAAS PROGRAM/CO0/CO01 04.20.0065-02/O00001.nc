%
O00001 (R-R  22)
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ -30. ] Z [ 0. ] 

T4 D04 M06
G43 H04 Z250. 
S650. M03
#7= 800. (PODA4A mm.) 

#1= 3.5 (NA4ALO) 
#2= 0. (KONEZ) 
#3= 0.5 (SHAG) 
#4= 80. (D FREZ) 
#5= 0. (SMECHENIE) 
#8= 0. (DLINA  X  ) 
#9= 60. (SHIRINA Y  ) 

G00 X [ 25. ] Y [ #9 / 2. + #4 / 2. + 10. ] 
G00 Z80. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ 25. ] Y [ #9 / 2. + #4 / 2. + 10. ] 
G00 Z [ #1 ] 
G01 Y [ - #9 / 2. ] F [ #7 ] 
G00 Z [ #1 + 20. ] 

END1 

M09 
G00 Z250. M05 
G52 X0. Y0. Z0. 
M99 




%