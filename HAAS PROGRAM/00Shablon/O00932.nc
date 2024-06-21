%
O00932 (REZBA BOLT) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0 Y0 Z0 

T7 D07 M06
G43 H07 Z50. 
S1800 M03
#7= 1900. (PODA4A mm.) 

#21= 23. (D NA4.) 
#22= 20.5 (D KON.) 
#23= 3. (D SHAG) 

WHILE [ #21 GT #22 ] DO2 
#21= #21 - #23 
IF [ #21 LT #22 ] THEN #21= #22 
#10= #21 

#11= 0. (NA4ALO CONSTANT) 
#1= #11 (NA4ALO) 
#2= -48. (KONEZ) 
#3= 3. (SHAG) 
#6= #10 (D.) 
#4= 31. (D-FREZI) 
#5= -0.35 (OFFN) 

G00 X0. Y30. 
G00 Z #11 M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
G01 X0. Y [ #6 / 2 + #4 / 2 + #5 ] 
G02 I0. J [ - #6 / 2 - #4 / 2 - #5 ] Z#1 
END1 
G01 X0. Y [ #6 / 2 + #4 / 2 + #5 ] 
G02 I0. J [ - #6 / 2 - #4 / 2 - #5 ] 
G01 X0. Y30. 
G00 Z #11 
END2 

G00 Z50. M09 
G52 X0 Y0 Z0 
M30 





%