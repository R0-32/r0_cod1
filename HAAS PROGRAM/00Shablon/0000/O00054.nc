%
O00054 (M16 PO DIAM)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T2 D02 M06
G43 H02 Z150. 

#1= 0. (NA4ALO UGLA) 
#5= 3. (KOLI4ESTVO) 
#7= 135. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 

M97 P5 L#5 

G69 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30

N5 
M01 
G68 X0. Y0. R#1 
G00 X0. Y [ #7 / 2 ] G90 

S200 M03
G00 Z10. M08 
G84 G98 Z-30. F400. R10.
G80 Z10. M09

G00 G90 Z50. M05
#1= #1 + #3 
M99 





%