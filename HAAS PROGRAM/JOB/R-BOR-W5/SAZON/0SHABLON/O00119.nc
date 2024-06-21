%
O00119 (SV GLUB OTSKOK MALENKIY)
G00 G17 G40 G49 G80 G90
G54 

T15 D15 M06 
G43 H15 Z150. 
S190 M03 
M31 

G52 X [ 60. / 2. + 8.5 / 2. ] Y [ 7. + 8.5 / 2. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ - 60. / 2 - 8.5 / 2. ] Y [ 7. + 8.5 / 2. ] Z [ 0. ] 
M97 P15 
M01 


G00 Z150. 
G00 G53 X-310. Y0. 
G52 X0. Y0. Z100. 
M30 

N15 M03 

#11= -1. (NA4ALO SVERLENIJA) 
#12= -5. (KONEZ ZASVERLENIYA) 
#13= 0.1 (PODA4A G95) 
#1= #12 (NA4ALO WHILE) 
#2= -15. (KONEZ SV) 
#3= 1. (SHAG) 
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
G01 Z [ #1 + #3 + #5 ] G95 F#13 
G01 Z [ #1 ] G95 F#13 
G04 P0.5 

END1 

G69 G94 
G01 Z2. F3000. 
G00 Z50. 
M99 





%