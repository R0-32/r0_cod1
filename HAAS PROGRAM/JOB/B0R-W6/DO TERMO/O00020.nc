%
O00020 (18x191)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0 ] Z [ 0. ] 

T3 D03 M06 
G43 H03 Z150. 
S1200. M03 
#10= 4000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -20.5 (KONEZ) 
#3= 0.3 (SHAG) 
#4= 42. / 2 (R INSTR) 
#5= 0. (OFFN) 

#6= 191. / 2. + #4 + #5 
#7= -191. / 2. - #4 - #5 
#8= 18. / 2. + #4 + #5 
#9= -18. / 2. - #4 - #5 

G00 X [ #6 ] Y [ #8 + 10. ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ #6 ] Y [ #8 + 10. ] 
G01 Z [ #1 ] 
G01 Y [ #9 ] 
G01 X [ #7 ] 
G01 Y [ #8 ] 
G01 X [ #6 ] 

END1 
G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M30 




%