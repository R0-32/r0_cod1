%
O00037 (SV M97)
G00 G17 G40 G49 G80 G90
G54 

T10 D10 M06 
G43 H10 Z150. 
S650 M03 

G52 X [ -110. / 2. ] Y [ 170. / 2. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ 110. / 2. ] Y [ 170. / 2. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ 110. / 2. ] Y [ -170. / 2. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ -110. / 2. ] Y [ -170. / 2. ] Z [ 0. ] 
M97 P15 

G00 Z150. 
G00 G53 Y0. 
G52 X0. Y0. Z0. 
M30 

N15 M03 
#10= 0.05 (FEED 1) 
#11= 0.2 (FEED 2) 
#12= 0.1 (FEED 3) 

#3= 2. (BEZOPASNOE RASSTOYANIE) 
#2= -5. (ZASVERLOVKA) 
#1= -30. (GLUBINA SV) 
#20= -36. (VIHOD SVERLA) 

G95 

G00 X0. Y0. 
G00 Z#3 M08 
G01 Z#2 F#10 
G01 Z#1 F #11 
G01 Z#20 F#12 
G00 Z#3 

G69 G94 
G00 Z50. 
M99 





%