%
O00920 (SV.OTV.) 
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T8 D08 M06
G43 H08 Z150. 
S750 M03

G00 X [ 0. ] Y [ 340. / 2 ] 
M97 P5 
M01 
M03 
G00 X [ 0. ] Y [ -340. / 2 ] 
M97 P5 

G69 G94 
G00 Z150. M09 
G52 X0. Y0. Z0. 
#10000= #3020 
#10001= #3012 
#10003= #10003 + #10002 
M30

N5 G95 
G00 Z100. 
G00 Z2. M08 
G01 Z-3. F0.05 
G01 Z-28. F0.1 
G00 Z2. M09 
G00 Z100. 
M99





%