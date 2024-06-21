%
O00060 (PAZ 4)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 50. / 2. ] Y [ -50. / 2. ] Z [ 0 ] 

T21 D21 M06
G43 H21 Z100. 
S3000. M03
#7= 750. (PODA4A mm.) 

#1= 0.5 (NA4ALO) 
#2= -12. (KONEZ) 
#3= 0.1 (SHAG  x2) 
#6= 10. (D-OTV.) 
#8= 5. (DLINNA PRJAMOGO U4ASTKA) 
#4= 8. (R-FREZI) 
#5= 0 (OFFN) 

G00 Y [ #8 / 2 - #5 ] X0. 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 

G01 Y [ #8 / 2 - #5 ] X0. Z [ #1 + #3 * 2 ] 
G01 Y [ #8 / 2 - #5 ] X [ - #6 / 2 + #5 ] G41 
G01 Y [ - #8 / 2 + #5 ] Z [ #1 + #3 ] 
G03 Y [ - #8 / 2 + #5 ] X [ #6 / 2 - #5 ] R [ #6 / 2 - #5 ] 
G01 Y [ #8 / 2 - #5 ] Z#1 
G03 Y [ #8 / 2 - #5 ] X [ - #6 / 2 + #5 ] R [ #6 / 2 - #5 ] 
G01 Y [ #8 / 2 - #5 ] X0. G40 

END1 

G01 Y [ #8 / 2 - #5 ] X0. Z [ #1 ] 
G01 Y [ #8 / 2 - #5 ] X [ - #6 / 2 + #5 ] G41 
G01 Y [ - #8 / 2 + #5 ] Z [ #1 ] 
G03 Y [ - #8 / 2 + #5 ] X [ #6 / 2 - #5 ] R [ #6 / 2 - #5 ] 
G01 Y [ #8 / 2 - #5 ] Z#1 
G03 Y [ #8 / 2 - #5 ] X [ - #6 / 2 + #5 ] R [ #6 / 2 - #5 ] 
G01 Y [ #8 / 2 - #5 ] X0. G40 

G00 Z100. M09 

G52 X0. Y0. Z0. 
M99
%