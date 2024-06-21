%
O00100 (FASKA D 10.2) 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ -94. + 41.5 ] Y [ 39. / 2. ] Z [ 44. ] 

T18 D18 M06
G43 H18 Z100. 
S3000. M03 

#11= 1. (NA4ALO SVERLENIJA) 
#12= -0.7 (KONEZ SVERLENIJA) 
#13= 0.15 (PODA4A G95) 
#14= 3000. (PODA4A G94) 
#1= #12 (NA4ALO WHILE) 
#2= -0.7 (KONEZ) 
#3= 3. (SHAG) 
#4= 0.5 (NEDOEZD V CIKLE) 
#5= 0. (KOORDINATA OTSKOKA) 

G00 X0. Y0 
G00 Z10. 
G01 Z#11 G94 F#14 
G01 Z#12 G95 F [ #13 / 2. ] 
G01 Z#5 G94 F#14 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X0 Y0 M08 
G01 Z [ #1 + #3 + #4 ] G94 F#14 
G01 Z [ #1 ] G95 F#13 
G01 Z#5 G94 F#14 
END1 

G69 G94 
G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M99
%