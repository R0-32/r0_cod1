%
O00160 (REZBA MET4IK 2 OTV)
G00 G17 G40 G49 G80 G90
G54 
T6 D06 M06 
G43 H06 Z150. 

G52 X [ 85. / 2 ] Y [ -10. ] Z [ 0 ] 
M97 P15 
#3006= 1 (DMUHAY!) 

G52 X [ -85. / 2 ] Y [ -10. ] Z [ 0 ] 
M97 P15 

G00 Z150. M09 
G53 Y0 Z0 
G52 X0. Y0. Z0. 
M30 

N15 

#1= -25. (GLUBINA REZBI) 
#2= 500. (OBOROTI) 
#3= 5. (BEZOPASNOE RASSTOYANIE) 
#4= 1. (SHAG REZBI) 

G00 G90 X [ 0. ] Y [ 0. ] 
S [ #2 ] M03
G00 Z [ #3 ] M08 
G84 G98 Z [ #1 ] F [ #2 * #4 ] R [ #3 ] 
G80 Z [ #3 ] M09

G69 G94 
G00 Z50. 
M99 



%