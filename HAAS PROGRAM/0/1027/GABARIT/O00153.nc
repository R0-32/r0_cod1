%
O00153 (RR750 MONOLIT)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T13 D13 M06 
G43 H13 
S1500 M03 
#10= 450. (PODA4A mm.) 
 
#1= 16.4 - 35. (NA4ALO) 
#4= 20. / 2 (R INSTR) 
#5= 0. (OFFN) 

#6= 46. 
#7= 750. / 2. + #4 + #5 (X+) 
#8= -750. / 2. - #4 - #5 (X-) 

G00 X [ #7 ] Y [ #6 / 2. + #4 + 5. ] Z [ 150. ] 
G00 Z30. M08 
G01 Z#1 F3000. 
G01 Y [ - #6 / 2. - #4 - 5. ] F#10 
G00 Z100. 
G00 X [ #8 ] 
G00 Z30. 
G01 Z#1 F3000. 
G01 Y [ #6 / 2. + #4 + 5. ] F#10 

M09 
G00 Z150. 
M05 
G52 X0. Y0. Z0. 
M99


%