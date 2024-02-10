%
O00040 (SV D12)
G00 G17 G40 G49 G80 G90
G54 

T14 D14 M06
G43 H14 Z150. 
S2100 M03

G52 X [ 135. / 2. ] Y [ 0. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ -135. / 2. ] Y [ 0. ] Z [ 0. ] 
M97 P15 

G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M99 

N15 M03 

#11= 1. (NA4ALO SVERLENIJA) 
#12= -10. (KONEZ SVERLENIJA) 
#13= 0.1 (PODA4A G95) 
#14= 2000. (PODA4A G94) 
#1= #12 (NA4ALO WHILE) 
#2= -25. (KONEZ) 
#3= 5. (SHAG) 
#4= 0.25 (NEDOEZD V CIKLE) 
#5= -5. (KOORDINATA OTSKOKA) 

G00 X0. Y0 
G00 Z#11 M08 
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
G00 Z20. 
M99 

%