%
O00029 (REZBA OTV)

#15= -0.25 (OFFN) 

(PERVIY PROHOD OFFN -0.15) 
(MERNIY PROHOD OFFN -0.25) 
(OFFN -0.25 PRI NOVIH PLASTINAH) 

G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ -1.5 ] 

T13 D13 M06
G43 H13 Z300. 
S1800 M03
#7= 1200. (PODA4A mm.) 

#21= 247. (D NA4.) 
#22= 250. (D KON.) 
#23= 3. (D SHAG) 

WHILE [ #21 LT #22 ] DO2 
#21= #21 + #23 
IF [ #21 GT #22 ] THEN #21= #22 
#10= #21 

#11= 2. (NA4ALO CONSTANT) 
#1= #11 (NA4ALO) 
#2= -43. (KONEZ) 
#3= 3. (SHAG) 
#6= #10 (D-OTV.) 
#4= 31. (D-FREZI) 
#5= #15 (OFFN) 

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
G00 Z300. M09 

G52 X0 Y0 Z0 
M30 





%