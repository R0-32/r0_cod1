%
O00921 (STROKA PO X) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 25. / 2 -20.5 ] Z [ 0. ] 

T3 D03 M06 
G43 H03 Z100. 
S2200 M03 
#7= 1000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -10.6 (KONEZ) 
#3= 0.5 (SHAG) 
#8= 470. + 30. (DLINA X) 
 
G00 Y0. X [ - #8 / 2 ] 
G00 Z10. M08 
G01 Z#1 F#7 
 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 
 
G01 Y0. X [ - #8 / 2 ] 
G01 Z [ #1 + #3 ] 
G01 X [ #8 / 2 ] 
G01 Z#1 
G01 X [ - #8 / 2 ] 

END1 
G00 Z100. M09 
G52 X0. Y0. Z0. 
M30 





%