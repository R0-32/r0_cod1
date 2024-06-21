%
O00902 (PLOSKOST) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T4 D04 M06
G43 H04 Z150. 
S800 M03
#7= 150 (PODA4A mm.) 

#1= 0. (NA4ALO) 
#2= -0.04 (KONEZ) 
#3= 0.05 (SHAG) 

M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X-41. Y0. 
G00 Z#1 
G01 X41. 
G00 Z [ #1 + 10. ] 

END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30





%