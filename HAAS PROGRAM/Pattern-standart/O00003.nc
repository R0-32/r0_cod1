%
O00003 (FASKA STROKOJ PO X) 
G00 G17 G40 G49 G80 G90 
G55 
G52 X [ 400. / 2 ] Y [ -36. + 50. / 2 ] Z [ -11. ] 


T5 D05 M06 
G43 H05 Z150. 
S1000 M03 
#7= 2000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -8.9 (KONEZ) 
#3= 0.5 (SHAG) 
#8= 400. + 75. (DLINA X) 
#9= -14. (UGOL otnositelno stola) 
 
G00 Y0. X [ - #8 / 2 ] 
G00 Z [ #1 + 10. ] M08 F#7 
 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 
#10= [ #1 + #3 ] / TAN[ #9 ] 
#11= #1 / TAN[ #9 ] 

G01 X [ - #8 / 2 ] 
G00 Y#10 Z [ #1 + #3 ] 
G01 X [ #8 / 2 ] 
G00 Y#11 Z#1 
G01 X [ - #8 / 2 ] 
 
END1 
G00 Z150. M09 
G00 G53 Y0 X-320. 
G52 X0. Y0. Z0. 
M30




%