%
O00004 (RAD V UGLAH)
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T19 D19 M06 
G43 H19 Z150. 
S2500 M03

#1= - 90. (NA4ALO UGLA) 
#5= 6. (KOLI4ESTVO) 
#7= 80. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 

M97 P5 L#5 

G69 G94 
G00 Z300. M09 
G00 G53 Z0. 
G52 X0. Y0. Z0. 
M30

N5 G95 
M01 
M03 
G68 X0. Y0. R#1 
G00 X0. Y [ #7 / 2 ] 
G00 Z150. 
G00 Z2. M08 
G01 Z-10. F0.03 
G00 Z0 
G04 P0.5 
G00 Z-9. 
G01 Z-18. F0.03 
G00 Z2. 
G00 Z150. 
#1= #1 + #3 
M99 



%