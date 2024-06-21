O00011 (B0R 2PAZ)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 


T3 D03 M06
G43 H03 Z100. 
S5000 M03
#10= 500. (PODA4A mm. ) 
(X0. CENTR DETALI) (Y0. BOT DETALI) 

(OPER PARAM) 
#1= 0. (NA4ALO) 
#2= -6. (KONEZ) 
#3= 0.2 (SHAG) 
#4= 8. / 2. (R-FREZI) 
#5= 0. (OFFN) 
#6= 230. / 2. (X) 
#7= 27. (Y) 
#8= 5. (OTSTUP) 

(B0R PARAM) (B0R PAZ) 
#21= 108. / 2. (PAZ X) 
#31= 20. / 2. (PAZ Y) 

G00 Z25. M08 F #10 

G52 X - [ #21 + 2. ] Y [ #31 + 2. ] 
G00 X [ #21 - #4 ] Y - [ #31 - #4 ] (KOORDINATA 1) 
WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 
G00 X [ #21 - #4 ] Y - [ #31 - #4 ] (KOORDINATA 1) 
G01 Z [ #1 + #3 ] 
X - [ #21 - #4 ] Y - [ #31 - #4 ] (KOORDINATA 2) Z [ #1 ] 
X - [ #21 - #4 ] Y 0. (KOORDINATA 3) 
X - [ #21 - #4 -15. ] Y [ #31 - #4 ] (KOORDINATA 6) 
X [ #21 - #4 ] Y [ #31 - #4 ] (KOORDINATA 5) 
X [ #21 - #4 ] Y - [ #31 - #4 ] (KOORDINATA 1) 
X [ #21 - #4 ] Y 0. (KOORDINATA 4) 
X - [ #21 - #4 ] Y 0. (KOORDINATA 3) 
G00 Z 40. 
END1 

G101 X0 

#1= 0. (NA4ALO) 

G52 X [ #21 + 2. ] Y [ #31 + 2. ] 
G00 X [ #21 - #4 ] Y - [ #31 - #4 ] (KOORDINATA 1) 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ #21 - #4 ] Y - [ #31 - #4 ] (KOORDINATA 1) 
G01 Z [ #1 + #3 ] 
X - [ #21 - #4 ] Y - [ #31 - #4 ] (KOORDINATA 2) Z [ #1 ] 
X - [ #21 - #4 ] Y 0. (KOORDINATA 3) 
X - [ #21 - #4 -15. ] Y [ #31 - #4 ] (KOORDINATA 6) 
X [ #21 - #4 ] Y [ #31 - #4 ] (KOORDINATA 5) 
X [ #21 - #4 ] Y - [ #31 - #4 ] (KOORDINATA 1) 
X [ #21 - #4 ] Y 0. (KOORDINATA 4) 
X - [ #21 - #4 ] Y 0. (KOORDINATA 3) 
G00 Z 40. 
END1 

G100 X0 


G00 Z100. 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
M30 
