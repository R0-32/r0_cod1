%
O00011 (B0R PAZ 1L 8D)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T17 D17 M06
G43 H17 Z100. 
S5900. M03
#10= 3000. (PODA4A mm. ) 
(X0. CENTR DETALI) (Y0. BOT DETALI) 

(OPER PARAM) 
#1= 0. (NA4ALO) 
#2= -6. (KONEZ) 
#3= 0.15 (SHAG) 
#4= 8. / 2. (R-FREZI) 
#5= 0. (OFFN) 
#6= 230. / 2. (X) 
#7= 27. (Y) 
#8= 5. (OTSTUP) 

(B0R PARAM) (B0R PAZ) 
#21= 108. / 2. - #4 (PAZ X) 
#31= 20. / 2. - #4 (PAZ Y) 

G00 Z100. M08 F #10 

G101 Y0. 

G52 X - [ #21 + #4 + 2. ] Y - [ #31 + #4 + 2. ] 
G00 
X [ #21 ] Y - [ #31 ] (KOORDINATA 1) 
Z5. 
WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 
G00 X [ #21 ] Y - [ #31 ] (KOORDINATA 1) 
G01 Z [ #1 + #3 + #3 ] 
X - [ #21 ] Y - [ #31 ] (KOORDINATA 2) Z [ #1 ] F500. 
X - [ #21 ] Y 0. (KOORDINATA 3) F#10 
X - [ #21 -15. ] Y [ #31 ] (KOORDINATA 6) 
X [ #21 ] Y [ #31 ] (KOORDINATA 5) 
X [ #21 ] Y - [ #31 ] (KOORDINATA 1) 
X - [ #21 ] Y - [ #31 ] (KOORDINATA 2) Z [ #1 ] 
X - [ #21 ] Y 0. (KOORDINATA 3) 
X [ #21 ] Y 0. (KOORDINATA 4) 
G00 Z 4. 
END1 
G100 Y0. 

G00 Z100. 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
M30 

%