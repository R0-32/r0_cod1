%
O00040 (MERA VERH+RR17+0.5)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T8 D08 M06 
G43 H08 Z150. 
S1500 M03 
#10= 800. (PODA4A mm.) 
 
#4= 50.2 / 2 (R INSTR) 

#7= -149. / 2. - #4 + 34. 
#8= 149. / 2. - 47. / 2. 
#9= 40. / 2. + #4 + 5. 
#6= -40. / 2. - #4 - 5. 

G00 X [ #8 ] Y [ #6 ] 
G00 Z [ 0. ] M08 
G01 Y [ #9 ] F [ 500. ] 

G00 X [ #7 ] 
G00 Z [ -17. - 0.1 ] 
G01 Y [ #6 ] F [ #10 ] 
G00 X [ #7 + 34. ] 
G01 Y [ #9 ] F [ #10 ] 

G00 Z50. 
G52 X0. Y0. Z0. 
M99 




%