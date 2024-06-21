%
O00946 (PAZ VDOL  BEZ KOR.) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T6 D06 M06
G43 H06 Z150. 
S900 M03 
#7= 1000. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -12. (KONEZ) 
#3= 0.5 (SHAG) 
#4= 63. (D-FR.) 
#6= 395. (SHIRINA X) 
#9= [ 70. + 65. ] (DLINNA Y) 
#5= 0. (OFFN) 

G00 Y [ #9 / 2 ] X0. 
G00 Z10. M08 
G00 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

/ G00 Y [ #9 / 2 ] X0. 
/ G00 Z#1 
/ G01 Y [ - #9 / 2 ] 
/ G00 Z10. 
G00 Y [ #9 / 2 ] X [ - #6 / 2 + #4 / 2 + #5 ] 
G00 Z#1 
G01 Y [ - #9 / 2 ] 
G00 X [ #6 / 2 - #4 / 2 - #5 ] 
G01 Y [ #9 / 2 ] 

END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30





%