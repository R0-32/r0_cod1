%
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
#21= 5. (OTSTUP X LEFT) 
#22= 2. (OTSTUP X RIGHT) 
#23= #6 - #21 - #22 (PAZ X) 

#31= 5. (OTSTUP Y TOP) 
#32= 2. (OTSTUP Y BOT) 
#33= #7 - #31 - #32 (PAZ Y) 

G00 Z25. M08 F #10 
X - [ #22 + #4 ] Y [ #32 + #4 ] (KOORDINATA 1) 

WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 
G00 X - [ #22 + #4 ] Y [ #32 + #4 ] (KOORDINATA 1) 
G01 
Z [ #1 + 1. ] 
X - [ #22 + #23 - #4 ] Z [ #1 ] (KOORDINATA 2) 
Y [ #32 + 10. ] (KOORDINATA 3) 
X - [ #22 + #23 - #4 -10. ] Y [ #32 + #33 - #4 ] (KOORDINATA 4) 
X - [ #22 + #4 ] (KOORDINATA 5) 
Y [ #32 + #4 ] (KOORDINATA 1) 

G00 Z 40. 
END1 

#1= 0. (NA4ALO) 
G00 X0. Y0. 
X [ #22 + #4 ] Y [ #32 + #4 ] (KOORDINATA 1) 

WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 
G00 X [ #22 + #4 ] Y [ #32 + #4 ] (KOORDINATA 1) 
G01 
Z [ #1 + 1. ] 
X [ #22 + #23 - #4 ] Z [ #1 ] (KOORDINATA 2) 
Y [ #32 + 10. ] (KOORDINATA 3) 
X [ #22 + #23 - #4 -10. ] Y [ #32 + #33 - #4 ] (KOORDINATA 4) 
X [ #22 + #4 ] (KOORDINATA 5) 
Y [ #32 + #4 ] (KOORDINATA 1) 

G00 Z 40. 
END1 

G00 Z100. 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
M30 

%