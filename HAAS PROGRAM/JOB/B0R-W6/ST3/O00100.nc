%
O00100 (REZBA M20)
G00 G17 G40 G49 G80 G90
G54 
T15 D15 M06 
G43 H15 Z150. 
S2500. M03 

G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 


#7= 300. (PODA4A mm.) 
#21= 17.5 (D NA4.) 
#22= 20. (D KON.) 
#23= 2.5 (D SHAG) 

WHILE [ #21 LT #22 ] DO2 
#21= #21 + #23 
IF [ #21 GT #22 ] THEN #21= #22 
#10= #21 

#11= 3. (NA4ALO CONSTANT) 
#1= #11 (NA4ALO) 
#2= -30. (KONEZ) 
#3= 2.5 (SHAG REZB) 
#6= #10 (D-OTV.) 
#4= 17.29 (!!! D-FREZI   S TABLIC !!!) 
#5= -0.04 (OFFN) 

G00 X0. Y0. 
G00 Z #11 M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] 
G02 I0. J [ - #6 / 2 + #4 / 2 + #5 ] Z#1 
END1 
G01 X0. Y0. 
G00 Z #11 
END2 

M05 
G00 Z150. M09 
G53 Y0 Z0 
G52 X0. Y0. Z0. 
M30 

%