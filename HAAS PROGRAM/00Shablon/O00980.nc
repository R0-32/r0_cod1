%
O00980 (SPIRAL)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T2 D02 M06
G43 H02 Z150. 
S3000 M03 
#10= 1000. (FEED) 

#1= 10. (D NA4) 
#2= 30. (D KON) 
#3= 1. (SHAG SPIRALI) 
#4= -10. (KONEC Z) 
#5= 0.1 (OFFN) 

G00 X0. Y0. 
G00 Z [ 10. ] M08 
G01 Z [ #4 ] F [ #10 ] 
G13 I [ #1 / 2. ] K [ [ #2 / 2. ] - #5 ] Q#3 Z [ #4 ] 
G00 Z10. 
M30 





%