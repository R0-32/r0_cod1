%
O00035 (KONTUR PRYAMOUGOLNIKA  S UGLA)
G00 G17 G40 G49 G80 G90 
G55 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T3 D03 M06 
G43 H03 Z150. 
S1200. M03 
F750. (PODA4A mm.) 
 
#1= -5. (NA4ALO) 
#2= -38. (KONEZ) 
#3= 5. (SHAG) 
#4= 44. / 2 (R INSTR) 
#5= 0. (OFFN!!! TABLICA!!!) 

#6= 85. -0.2 (X) 
#7= 80. -0.2 (Y) 
#8= 0.1 (FASKA) 


G00 X [ - #6 / 2. - #4 -10. ] Y [ #7 / 2. + #4 ] 
G00 Z80. M08 
G01 Z#1 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 


G01 X [ - #6 / 2. - #4 -10. ] Y [ #7 / 2. + #4 ] 
G01 Z [ #1 ] 
G01 G41 Y [ #7 / 2. ] 
G01 X [ #6 / 2. - #8 ] 
G01 X [ #6 / 2. ] Y [ #7 / 2. - #8 ] 
G01 Y [ - #7 / 2. + #8 ] 
G01 X [ #6 / 2. - #8 ] Y [ - #7 / 2. ] 
G01 X [ - #6 / 2. + #8 ] 
G01 X [ - #6 / 2. ] Y [ - #7 / 2. + #8 ] 
G01 Y [ #7 / 2. - #8 ] 
G01 X [ - #6 / 2. + #8 ] Y [ #7 / 2 ] 
G01 G40 X [ - #6 / 2. - #4 -10. ] Y [ #7 / 2. + 10. + #4 ] 

END1 
M09 
G00 Z150. M05 
G52 X0. Y0. Z0. 
G53 Y0 Z0 
M30 





%