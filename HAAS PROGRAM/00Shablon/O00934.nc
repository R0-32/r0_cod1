%
O00934 (SV.OTV.RAD.PROIZVOL.) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T16 D16 M06
G43 H16 Z150. 
S2500 M03

#1= 20. (NA4ALO UGLA) 
#5= 8. (KOLI4ESTVO) 
#7= 155. (DIAMETR RASPOLOGENIJA) 
#3= 20. (SHAG UGLA) 
M97 P5 L#5 
#1= 20. (NA4ALO UGLA) 
#5= 8. (KOLI4ESTVO) 
#7= -155. (DIAMETR RASPOLOGENIJA) 
#3= 20. (SHAG UGLA) 
M97 P5 L#5 

G69 G94 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30

N5 G95 
M01 
M03 
G00 Z50. 
G68 X0. Y0. R#1 
G00 X0. Y [ #7 / 2 ] 
G00 Z2. M08 
G01 Z-2. F0.04 
G01 Z-4.5 F0.02 
G00 Z2. M09 
G00 Z50. 
#1= #1 + #3 
M99 





%