%
O00048 (SV G4)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T15 D15 M06
G43 H15 Z100. 
S637 M03 

#11= 0. (NA4ALO SVERLENIJA) 
#12= -5. (KONEZ ZASVERLENIYA) 
#13= 0.04 (PODA4A G95) 
#1= #12 (NA4ALO WHILE) 
#2= -22. (KONEZ SV) 
#3= 2. (SHAG) 
#5= 0.25 (OTSKOK) 

G00 X0. Y0 
G01 Z#11 G94 F3000. 
M08 
G01 Z#12 G95 F [ #13 / 2. ] 
G04 P0.5 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
M01 
M03 

G00 X0 Y0 M08 
G01 Z [ #1 + #3 + #5 ] G95 F#13 
G01 Z [ #1 ] G95 F#13 
G04 P0.5 

END1 

G69 G94 
G01 Z1. F3000. 
G00 Z100. M09 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30





%