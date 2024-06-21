%
O00020 (SKOS PO Y S-NA+)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ -5.5 ] Y [ 0. ] Z [ 3. ] 

T17 D17 M06
G43 H17 Z100. 
S2100. M03
#7= 1800. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -6. (KONEZ) 
#3= 0.15 (SHAG) 
#6= 100. (SHIRINA DETALI) 
#4= 25. / 2 (D INSTR) 
#5= 0. (OFFN) 
#9= 45. (UGOL) 

G00 X#4 Y [ #6 / 2 + #4 + 5. ] 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 

#10= - TAN[ #9 ] * [ #1 + #3 ] 
#11= - TAN[ #9 ] * #1 

G01 Y [ #6 / 2 + #4 + 5. ] 
G01 X [ #4 + #10 ] Z [ #1 + #3 ] 
G01 Y [ - #6 / 2 - #4 - 5. ] 
G01 X [ #4 + #11 ] Z [ #1 ] 
G01 Y [ #6 / 2 + #4 + 5. ] 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30 



%