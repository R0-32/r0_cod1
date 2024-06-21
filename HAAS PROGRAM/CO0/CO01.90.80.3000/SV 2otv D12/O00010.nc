%
O00010 (SV D12)
G00 G17 G40 G49 G80 G90
G54 

T14 D14 M06 
G43 H14 Z200. 
S2120 M03 

G52 X [ 70. / 2. ] Y [ 14. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ -70. / 2. ] Y [ 14. ] Z [ 0. ] 
M97 P15 

M09 
G00 Z200. 
M05 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30 

N15 M03 
#10= 0.05 (FEED 1) 
#11= 0.1 (FEED 2) 

#3= 2. (BEZOPASNOE RASSTOYANIE) 
#2= -1. (ZASVERLOVKA) 
#1= -25. (GLUBINA SV) 

G95 

G00 X0. Y0. 
G00 Z#3 M08 
G01 Z#2 F#10 
G01 Z#1 F#11 
G01 Z#3 F [ #11 * 2. ] 

G69 G94 
G00 Z50. 
M99 

%