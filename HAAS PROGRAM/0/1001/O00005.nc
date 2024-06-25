%
O00005 (FREZ TOREC 8 MM FREZA D63 GRUBO)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ -2. ] Y [ 0. ] Z [ 0. ] 

(FREZA D63 PRYAMOZUBA) 

T7 D07 M06
G43 H07 Z300. 
S900 M03
#7= 1300. (PODA4A mm.) 

#1= -8. (NA4ALO) 
#2= -91. (KONEZ) 
#3= 1. (SHAG) 
#4= 63. / 2 (DIAM INSTRUMENTA) 
#5= 0.2 (PPIPPUSK PO X) 
#6= 75. / 2. (Y) 

G00 X [ #5 + #4 ] Y [ #6 + #4 + 5. ] 
G00 Z [ #1 + 20 ] M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2. 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ #5 + #4 ] Y [ #6 + #4 + 5. ] 

G00 Z [ #1 + #3 ] 
G01 Y [ - #6 - #4 -5. ] 
G00 Z [ #1 ] 
G01 Y [ #6 + #4 + 5. ] 

END1 

G00 Z300. M09 
G52 X0. Y0. Z0. 


M99 

%