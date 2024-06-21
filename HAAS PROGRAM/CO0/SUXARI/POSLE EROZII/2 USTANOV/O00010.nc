%
O00010 (PAZIK RR18)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 3. + 20. / 2. ] Y [ -12. - 18. / 2. ] Z [ 0 ] 

T15 D15 M06 
G43 H15 Z150. 
S3000 M03 
#10= 2000. (PODA4A mm.) 
 
#1= 36. (NA4ALO 36.) 
#2= 0.03 (KONEZ) 
#3= 0.25 (SHAG) 
#4= 16. / 2 (R INSTR) 
#5= -0.08 (OFFN) 

#7= 0. 
#8= 25. + #4 
#9= -18. / 2. + #4 + #5 
#6= 18. / 2. - #4 - #5 

G00 X [ #7 ] Y [ #9 ] 
G00 Z50. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
IF [ #1 EQ #2 ] F500. 

G01 X [ #7 ] Y [ #9 ] 
G01 Z [ #1 ] 
G01 X [ #8 ] 
G01 Y [ #6 ] 
G01 X [ #7 ] 

END1 
G00 Z150. M09 
M05 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30 



%