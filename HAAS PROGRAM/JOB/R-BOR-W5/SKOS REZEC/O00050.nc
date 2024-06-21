%
O00050 (SKOS)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ -220. ] Y0. Z0. 

T14 D14 M06
G43 H14 Z100. 
S800 M03
#7= 1000. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -20. (KONEZ) 
#3= 0.5 (SHAG) 
#6= 60. (SHIRINA DETALI) 
#4= 63. (D INSTR) 
#5= 0. (OFFN) 
#9= 45. (UGOL) 

G00 X0. Y [ #6 / 2 + #4 / 2 + 5. ] 
G00 Z100. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

#10= - TAN[ #9 ] * #1 (-OTEZD) 

G00 Y [ #6 / 2 + #4 / 2 + 5. ] 
G00 X [ #10 + #4 / 2 ] Z [ #1 ] 
G01 Y [ - #6 / 2 - #4 / 2 - 5. ] 
G00 Z20. 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30 


%