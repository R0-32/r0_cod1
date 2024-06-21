%
O00100 (FASKI 0.25x45)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T4 D04 M06 
G43 H04 Z50. 
S2000 M03 
#10= 1500. (PODA4A mm.) 
 
#1= 19.5 - 1. (NA4ALO) 
#4= 65. / 2 (R INSTR) 
#5= 0.25 (FASKA) 

#6= 46. / 2. + #4 - #5 
#9= -46. / 2. - #4 + #5 
#7= 760. / 2. + #4 + 10. 
#8= -760. / 2. - #4 - 10. 

G00 X [ #8 ] Y [ #6 ] 
G00 Z#1 
G01 X [ #7 ] F#10 
G00 Y [ #9 ] 
G01 X [ #8 ] 

G00 Z150. 
M05 
G52 X0. Y0. Z0. 
M99 


%