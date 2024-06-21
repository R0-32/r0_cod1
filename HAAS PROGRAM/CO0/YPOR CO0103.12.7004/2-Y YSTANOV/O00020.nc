%
O00020 (SKOS 15 GRAD) 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 44.5 ] Y [ 0. ] Z [ 0. ] 

T20 D20 M06
G43 H20 Z150. 
S1650. M03
#7= 2500. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -25. (KONEZ) 
#3= 0.15 (SHAG) 
#6= 50. (SHIRINA DETALI) 
#4= 40. / 2 (D INSTR) 
#5= 0. (OFFN) 
#9= 15. (UGOL) 

G00 X#4 Y [ #6 / 2 + #4 + 5. ] 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 
IF [ #1 EQ #2 ] F1000. 

#10= - TAN[ #9 ] * [ #1 + #3 ] 
#11= - TAN[ #9 ] * #1 

G01 Y [ #6 / 2 + #4 + 5. ] 
G01 X [ #4 + #10 ] Z [ #1 + #3 ] 
G01 Y [ - #6 / 2 - #4 - 5. ] 
G01 X [ #4 + #11 ] Z [ #1 ] 
G01 Y [ #6 / 2 + #4 + 5. ] 

END1 
G00 Z250. M09 
M05 
G52 X0. Y0. Z0. 
M99 


%