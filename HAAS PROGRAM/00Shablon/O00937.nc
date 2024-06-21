%
O00937 (R-NARUGA) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0 Y0 Z-1.26 

T7 D07 M06
G43 H07 Z200. 
S1500 M03
#7= 900. (PODA4A mm.) 

#3= 2. (SHAG UGLA) 
#1= -4.13 + #3 (NA4ALO UGLA) 
#2= -90. (KONEZ UGLA) 
(0. --  VERSHINA RADIUSA,   UGOL  0.  -90.) 
#4= 15. (R-OBRABOTKI) 
#5= 32. (D-FREZI) 
#6= 320. (DLINNA PO X) 
#8= 50. -15. (Y DO VERSHINI RADIUSA) 

M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 

#10= - [ #4 - #4 * COS[ #1 + #3 ] ] ( Z ) 
#11= #5 / 2 - [ #4 * SIN[ #1 + #3 ] ] ( Y ) 

G00 X [ - #6 / 2 - #5 / 2 ] 
G00 Y [ #8 + #11 ] Z #10 
G01 X [ #6 / 2 + #5 / 2 ] 

#10= - [ #4 - #4 * COS[ #1 ] ] ( Z ) 
#11= #5 / 2 - [ #4 * SIN[ #1 ] ] ( Y ) 

G00 X [ #6 / 2 + #5 / 2 ] 
G00 Y [ #8 + #11 ] Z #10 
G01 X [ - #6 / 2 - #5 / 2 ] 

END1 

G00 Z200. M09 
G52 X0. Y0. Z0. 
M30




%