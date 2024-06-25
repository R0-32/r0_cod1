%
O00925 (FASKA NUTRO) 
G00 G17 G40 G49 G80 G90
G55 
G52 X [ 0. ] Y [ 0. ] Z0. 

T16 D16 M06
G43 H16 Z150. 
S4000 M03
#7= 400. (PODA4A mm.) 

#1= 25. (DIAMETR OTV.) 
#2= -2.5 (GLUBINA) 
#3= -0.5 (FASKA NA STORONU) 

#4= #2 + #3 
G00 X0. Y0. 
G00 Z10. 
G01 Z#2 F#7 
G01 X0. Y [ #1 / 2 + #4 ] 
G03 I0. J [ - #1 / 2 - #4 ] 
G00 X0. Y0. 

G00 Z150. 
G52 X0. Y0. Z0. 
M30




%