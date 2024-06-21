%
O00140 (TURN PO KORD)
G00 G17 G40 G49 G80 G90

G55 

T5 D05 M06 
G43 H05 Z200. 
S2000. 
#7= 2000. (PODA4A mm.) 


G52 X [ 0. ] Y [ 71.5 ] Z [ 0 ] 
M97 P15 

G52 X [ -61.921 ] Y [ 35.75 ] Z [ 0 ] 
M97 P15 

G52 X [ -61.921 ] Y [ - 35.75 ] Z [ 0 ] 
M97 P15 

G52 X [ 0 ] Y [ -71.5 ] Z [ 0 ] 
M97 P15 

G52 X [ 61.921 ] Y [ - 35.75 ] Z [ 0 ] 
M97 P15 

G52 X [ 61.921 ] Y [ 35.75 ] Z [ 0 ] 
M97 P15 

G00 Z150. 

G52 X0. Y0. Z0. 
M30 






N15 M03 
#1= 0 (NA4ALO) 
#2= -45. (KONEZ) 
#3= 0.35 (SHAG) 
#6= 21. (D-OTV.) 
#4= 16. (D-FREZI) 
#5= -0.1 (OFFN) 

G00 X0. Y0. 
G00 Z10. M08 
G01 Z#1 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] F#7 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] Z#1 
END1 
G01 X0. Y [ #6 / 2 - #4 / 2 - #5 ] 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 ] 
G01 X0. Y0. 
G00 Z50. 
M99 





%