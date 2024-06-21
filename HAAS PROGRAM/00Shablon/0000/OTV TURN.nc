%
O00025 (OTV TURN)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 15.5 + 0.1 ] 

T3 D03 M06 
G43 H03 Z150. 
S3000 M03 
#7= 1000. (PODA4A mm.) 

#1= 11. (NA4ALO) 
#2= 0. (KONEZ) 
#3= 0.25 (SHAG) 
#6= 20. (D-OTV.) 
#4= 10. (D-FREZI) 
#5= 0.25 (OFFN) 

G00 X0. Y0. 
G00 Z50. M08 
G01 Z#1 F3000. 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] F#7 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] Z#1 

END1 
G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] 
G01 X0. Y0. 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 




%