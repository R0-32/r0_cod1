%
O00915 (STROKA PO Y) 
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T4 D04 M06
G43 H04 Z100. 
S900 M03
#7= 400. (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -5. (KONEZ) 
#3= 0.5 (SHAG) 
#8= [ 130. + 0. ] (DLINA Y) 

G00 X0. Y [ #8 / 2 ] 
G00 Z10. F#7 M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X0. Y [ #8 / 2 ] 
G00 Z [ #1 ] 
G01 Y0 F [ #7 ] 
G00 Z [ #1 + 10. ] 
G00 Y [ #8 / 2 ] F [ #7 ] 

END1 

G00 Z100. M09 
G00 G53 Y0 
G52 X0. Y0. Z0. 
#10000= #3020 
#10001= #3012 
#10003= #10003 + #10002 
M30 





%