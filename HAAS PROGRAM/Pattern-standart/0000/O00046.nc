%
O00046 (GRAV)
G00 G17 G40 G49 G50 G69 G80 G90
G54 
G52 X0. Y0. Z0. 

T1 D01 M06
G43 H01 Z100. 
S8000 M03

#10= -7. (X) 
#11= 8. (Y) 
#12= 3.5 (H) 

#15= 30. (DIAM) 

#1= 0. (NA4ALO) 
#2= -0.5 (KONEZ) 
#3= 0.15 (SHAG) 

/ M97 P5 

G101 X0 

G00 X0. Y0. 
G00 Z20. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X#10 Y#11 
G47 E20. F40. I0. J#12 P0 R1. Z#1 (KFSF)

END1 
G00 Z100. M09 
G100 X0 Y0 Z0 
G52 X0. Y0. Z0. 
M30 

N5 
G00 X0. Y0. 
G00 X0. Y [ + #15 / 2 ] 
G03 I0. J [ - #15 / 2 ] F1. 
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