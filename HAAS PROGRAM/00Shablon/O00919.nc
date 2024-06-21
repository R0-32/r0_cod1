%
O00919 (WHILE) 
G00 G17 G40 G49 G80 G90
G55 
G52 X0. Y0. Z0. 

T6 D06 M06
G43 H06 Z300. 
S750 M03
#7= 500. (PODA4A mm.) 

#1= 7. (NA4ALO) 
#2= 0. (KONEZ) 
#3= 0.5 (SHAG) 

G00 X10. Y0. 
G00 Z20. M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X10. Y0. 
G01 Z [ #1 ] 
G01 X10. Y6.025 G41 
G01 X-77.2 
G03 Y-6.025 R6.025 
G01 X10. 
G01 X10. Y0. G40 

END1 

G00 Z300. M09 
G52 X0. Y0. Z0. 
M30




%