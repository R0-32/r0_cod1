%
O00922 (HREN) 
G00 G17 G40 G49 G80 G90
G54 

T5 D05 M06
G43 H05 Z150. 
S1000 
#7= 1000. (PODA4A mm.) 

G101 Y0 

G52 X [ 0. ] Y [ 0. ] Z0. 
M97 P15 

G100 X0 Y0 Z0 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30

N15 M03 
#1= 1. (NA4ALO) 
#2= -25. (KONEZ) 
#3= 0.5 (SHAG) 

G00 M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X-270. Y165. 
G00 Z [ #1 + #3 ] 
G01 X-335. Y105. 
G00 Z [ #1 ] 
G01 X-270. Y165. 

END1 
G00 Z150. M09 
M99 





%