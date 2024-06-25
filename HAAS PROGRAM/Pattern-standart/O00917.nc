%
O00917 (E-GRAV) 
G00 G17 G40 G49 G50 G69 G80 G90
G54 
G52 X0. Y0. Z0. 

T1 D01 M06
G43 H01 Z100. 
S7000 M03

#11= 0. (X) 
#12= -12. (Y) 
#13= 5. (J) 

G101 X0 

G00 X0. Y0. 
G00 Z20. 

#1= -0.1 (NA4ALO) 
#2= -0.5 (KONEZ) 
#3= 0.1 (SHAG) 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
G00 X#11 Y#12 
G47 E20. F40. I30. J#13 P0. R1. Z#1 (5.8)
END1 

G00 Z100. M09 
G100 X0 Y0 Z0 
G52 X0. Y0. Z0. 
M30 

N5 
G00 X0. Y0. 
G00 X0. Y [ - 27. / 2 ] 
G03 I0. J [ + 27. / 2 ] F1. 
G00 X0. Y0. 
M99 

N15 
G00 X-6. Y9. 
G01 Y-9. F1 
X6. 
Y9. 
X-6. 
G00 X0. Y0. 
M99 





%