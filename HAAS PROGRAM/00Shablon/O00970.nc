%
O00970 (MET4IK M97)
G00 G17 G40 G49 G80 G90
G54 

T18 D18 M06 
G43 H18 Z150. 


G52 X [ -250. ] Y [ 0. ] Z [ 0. ] 
M97 P15 
M01 

G52 X [ -250. -320. ] Y [ 0. ] Z [ 0. ] 
M97 P15 
M01 

G00 Z150. 
G52 X0. Y0. Z0. 
M30 

N15 

#1= -40. (GLUBINA REZBI) 
#2= 200. (OBOROTI) 
#3= 10. (BEZOPASNOE RASSTOYANIE) 
#4= 2. (SHAG REZBI) 

G00 G90 X [ 0. ] Y [ 0. ] 
S [ #2 ] M03
G00 Z [ #3 ] M08 
G84 G98 Z [ #1 ] F [ #2 * #4 ] R [ #3 ] 
G80 Z [ #3 ] M09

G69 G94 
G00 Z50. 
M99 





%