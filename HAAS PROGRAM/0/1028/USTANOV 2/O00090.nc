%
O00090 (FASKA KONTUR)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ -94. + 41.5 ] Y [ 39. / 2. ] Z [ 44. ] 

T18 D18 M06 
G43 H18 Z150. 
S3000 M03 
F1000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -0.5 -0.5 (KONEZ) 
#3= 2. (SHAG) 
#4= 10. / 2 (R INSTR) 
#5= 0. (OFFN!!! TABLICA!!!) 

#6= 26. + 1. (X) 
#7= 39. + 1. (Y) 
#8= 0.5 (FASKA) 


G00 X [ - #6 / 2. - #4 -10. ] Y [ #7 / 2. + #4 ] 
G00 Z20. 
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
G00 Z100. 
G52 X0. Y0. Z0. 
M99 

%