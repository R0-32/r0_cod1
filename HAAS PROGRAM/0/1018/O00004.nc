%
O00004 (RASFREZEROVAT OTV D16)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 27.5 ] Y [ 15. ] Z [ 0. ] 

T7 D07 M06 
G43 H07 Z150. 
S2000. M03 
#7= 1500. (PODA4A mm.) 

#1= 0 (NA4ALO) 
#2= -13. (KONEZ) 
#3= 0.5 (SHAG) 
#6= 16. (D-OTV.16) 
#4= 10. (D-FREZI) 
#5= -0.15 (OFFN) 

G00 X0. Y0. 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] Z#1 

END1 
G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] 
G01 X0. Y0. 

G00 Z150. 


M99 



%