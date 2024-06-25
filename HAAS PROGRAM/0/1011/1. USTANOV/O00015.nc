%
O00015 (OTV D15)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ + 20. ] Y [ - 22.5 ] Z [ 0. ] 

T11 D11 M06
G43 H11 Z150. 
S1600. M03 

#11= 2. (NA4ALO SVERLENIJA) 
#12= -2. (KONEZ ZASVERLENIYA) 
#13= 0.1 (PODA4A G95) 
#1= #12 (NA4ALO WHILE) 
#2= -20. (KONEZ SV) 
#3= 20. (SHAG) 
#5= 0.25 (OTSKOK) 

G00 X0. Y0 
G00 Z20. 
G01 Z#11 G94 F3000. 
M08 
G01 Z#12 G95 F [ #13 / 2. ] 
G04 P0.5 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X0 Y0 M08 
G01 Z [ #1 + #3 + #5 ] G95 F [ #13 / 2. ] 
G01 Z [ #1 ] G95 F#13 
G04 P0.25 

END1 

G69 G94 
G01 Z1. F3000. 
G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M99 


%