%
O00010 (SV D8.5)
G00 G17 G40 G49 G80 G90
G54 

T8 D08 M06
G43 H08 Z100. 
S2250 M03

G52 X [ -12. ] Y [ 0. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ -12. - 25. ] Y [ 0. ] Z [ 0. ] 
M97 P15 

G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M30 

N15 M03 

#11= 1. (NA4ALO SVERLENIJA) 
#12= -5 (-10.) (KONEZ SVERLENIJA) 
#13= 0.08 (PODA4A G95) 
#14= 2000. (PODA4A G94) 
#1= #12 (NA4ALO WHILE) 
#2= -17. (-17.) (KONEZ) 
#3= 1. (SHAG) 
#4= 0.5 (NEDOEZD V CIKLE) 
#5= -3. (KOORDINATA OTSKOKA) 

G00 X0. Y0 
G00 Z10. M08 
G01 Z#11 G94 F [ #14 * 2. ] 
G01 Z#12 G95 F#13 
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
G01 Z1. F3000. 
G69 G94 
G00 Z50. 
M99 


%