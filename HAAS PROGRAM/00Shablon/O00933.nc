%
O00933 (SV.OTV.DUGA) 
G00 G17 G40 G49 G80 G90
G55 
G52 X0. Y0. Z0. 

T2 D02 M06
G43 H02 Z150. 
S700 M03

#1= -45. -1.7 (NA4ALO UGLA) 
#5= 2. (KOLI4ESTVO) 
#7= 302.5 (DIAMETR RASPOLOGENIJA) 
#3= 3.4 (SHAG UGLA) 
M97 P5 L#5 

#1= 45. -1.7 (NA4ALO UGLA) 
#5= 2. (KOLI4ESTVO) 
#7= 302.5 (DIAMETR RASPOLOGENIJA) 
#3= 3.4 (SHAG UGLA) 
M97 P5 L#5 


G69 G94 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30

N5 G95 
M01 
M03 
G68 X0. Y0. R#1 
G00 X0. Y [ #7 / 2 ] 
G00 Z100. 
G00 Z2. M08 
G01 Z-4. F0.04 
G01 Z-60. F0.09 
G00 Z2. M09 
G00 Z100. 
#1= #1 + #3 
M99




%