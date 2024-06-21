%
O00005 (FREZ RR PO PLOSK)
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T11 D11 M06
G43 H11 Z250. 
S700. F700. M03 

#1= 6. (NA4ALO) 
#2= -0.03 (KONEZ) 
#3= 0.5 (SHAG) 
#4= 80. (D FREZ) 
#5= 0. (SMECHENIE) 
#8= 120. (DLINA  X  ) 
#9= 30. (SHIRINA  Y  ) 

G00 X [ - #4 / 2. - #8 / 2. -10. ] Y [ - #9 / 2. + #4 / 2. -2. ] 
G00 Z80. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
IF [ #1 EQ #2 ] S1200. F400. 

G00 X [ - #4 / 2. - #8 / 2. -10. ] Y [ - #9 / 2 + #4 / 2 - 2. ] 
G00 Z [ #1 ] 
G01 X [ #8 / 2. + #4 / 2. + 10. ] 
G00 Z [ #1 + 20. ] 

END1 

M09 
G00 Z250. M05 
G00 G53 Y0 
G52 X0. Y0. Z0. 
M30 




%