%
O00020 (PAZ MERA)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T4 D04 M06
G43 H04 Z100. 
S2500 M03
#7= 600. (PODA4A mm.   V CIKLE EST MNOGITELI) 

#1= 0. (NA4ALO) 
#2= -10. (KONEZ) 
#3= 1. (SHAG) 
#4= 10. (D-FREZI) 
#5= 0. (OFFN) 
#6= 50.42 (SHIRINA PAZA) 
#8= 40. (DLINA Y) 

G00 X0. Y [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z25. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ - #6 / 2 + #4 / 2 + #5 ] Y [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z [ #1 ] 
G01 Y [ - #8 / 2 - #4 / 2 - 10. ] F [ #7 * 1. ] 
G00 X [ #6 / 2 - #4 / 2 - #5 ] 
G01 Y [ #8 / 2 + #4 / 2 + 10. ] F [ #7 * 1. ] 

END1 
G00 Z100. 
G52 X0. Y0. Z0. 

M99 

%