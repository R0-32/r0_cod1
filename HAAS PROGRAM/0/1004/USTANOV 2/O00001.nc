%
O00001 (FREZ VERH V R 20)
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0 Z0 

T11 D11 M06
G43 H11 Z300. 
S1200. M03
#7= 500. (PODA4A mm.) 

#1= 0.1 (NA4ALO) 
#2= 0 (KONEZ) 
#3= 0.5 (SHAG) 
#4= 80. / 2 (DIAM INSTRUMENTA) 

G00 X [ -62. - #4 -10. ] Y [ 0 ] 
G00 Z [ #1 + 20 ] M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ -62. - #4 -10. ] Y [ 0 ] 
G01 Z [ #1 ] 
G01 X [ 65. + #4 ] Y [ 0 ] 
G01 Z [ #1 + 20. ] 
END1 

G00 Z300. M09 
G52 X0. Y0. Z0. 

G53 G00 Y0 
M30 


%