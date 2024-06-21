%
O00030 (MERA)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T15 D15 M06 (FREZA D16) 
G43 H15 Z150. 
T11 
S3000 M03 
#10= 1000. (PODA4A mm.) 
 
#1= 28. (NA4ALO 22.) 
#2= 0.03 (KONEZ) 
#3= 1. (SHAG 0.5 ) 
#4= 16. / 2 (R INSTR) 
#5= -0.05 (OFFN0. -0.03) 

#6= 70. (X) 
#7= 80. (Y) 
#8= 10. (RADIUS) 
#9= #7 / 2. - #4 - 10. (OTYEZD) 

G00 X [ 0. ] Y [ #9 ] 
G00 Z50. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ 0. ] Y [ #9 ] 
G01 Z [ #1 ] 
G01 G41 Y [ #7 / 2. - #5 ] F [ #10 / 2. ] 
G01 X [ - #6 / 2. + #8 ] F [ #10 ] 
G03 X [ - #6 / 2. + #5 ] Y [ #7 / 2. - #8 ] R [ #8 - #5 ] 
G01 Y [ - #7 / 2. + #8 ] 
G03 X [ - #6 / 2. + #8 ] Y [ - #7 / 2. + #5 ] R [ #8 - #5 ] 
G01 X [ #6 / 2. - #8 ] 
G03 X [ #6 / 2. - #5 ] Y [ - #7 / 2. + #8 ] R [ #8 - #5 ] 
G01 Y [ #7 / 2. - #8 ] 
G03 X [ #6 / 2. - #8 ] Y [ #7 / 2. - #5 ] R [ #8 - #5 ] 
G01 X [ 0. ] 
G01 G40 Y [ #9 ] 

END1 
G00 Z200. M09 
M05 
G52 X0. Y0. Z0. 
M99 



%