%
O00030 (CENTROVKA)
G00 G17 G40 G49 G80 G90
G54 

T3 D03 M06 
G43 H03 Z150. 
S2500 M03 

G52 X [ -135. / 2. ] Y [ 0. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ 135. / 2. ] Y [ 0. ] Z [ 0. ] 
M97 P15 

G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M99 

N15 M03 
#10= 0.04 (FEED 1) 

#3= 2. (BEZOPASNOE RASSTOYANIE) 
#1= -0.5 (GLUBINA) 

G95 

G00 X0. Y0. 
G00 Z#3 
G01 Z#1 F#10 

G69 G94 
G00 Z20. 
M99 

%