%
O00900 (BONKA FAS) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z-2.75 

T16 D16 M06
G43 H16 Z150. 
S2000 M03
#7= 1000. (PODA4A mm.) 

#1= 1. (NA4ALO) 
#2= -1.5 (KONEZ) 
#3= 0.25 (SHAG) 
#6= 140. (D-BONKI) 
#4= 0. (D-FREZI) 
#5= 3.25 (OFFN) 
#8= 5. (OTHOD DLJA UGLUBLENIJA) 

G00 X0. Y [ #6 / 2 + #4 / 2 + #8 ] 
G00 Z10. 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ #6 / 2 + #4 / 2 + #5 ] 
G02 I0. J [ - #6 / 2 - #4 / 2 - #5 ] Z#1 

END1 
G01 X0. Y [ #6 / 2 + #4 / 2 + #8 ] 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30




%