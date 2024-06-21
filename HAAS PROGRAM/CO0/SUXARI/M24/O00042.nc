%
O00042 (RASFREZEROVAT D17.5)
G00 G17 G40 G49 G80 G90
G55 

T8 D08 M06 
G43 H08 Z300. 
S3000. 
#7= 1000. (PODA4A mm.) 

G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
M97 P15 
M01 


G00 Z250. M09 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M99 

N15 M03 
#1= 2. (NA4ALO) 
#2= -54. (KONEZ) 
#3= 0.1 (SHAG) 
#6= 21. (D-OTV.) 
#4= 16. (D-FREZI) 
#5= -0.2 (OFFN) 

G00 X0. Y0. 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] F#7 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] Z#1 

END1 
G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] 
G01 X0. Y0. 
G00 Z250. 
M99 



%