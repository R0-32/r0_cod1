%
O00050  (2.3.4.5.... OTV .GLUB)
G00 G17 G40 G49 G80 G90
G55 
T19 D19 M06 
G43 H19 Z150. 
S1000. M03 

G52 X [ 152. / 2. ] Y [ 0. ] Z [ 0 ] 
M97 P15 

G52 X [ -152. / 2. ] Y [ 0. ] Z [ 0 ] 
M97 P15 

G00 Z150. 

G52 X0. Y0. Z0. 
M30 


N15 M03 

#11= 2. (NA4ALO SVERLENIJA) 
#12= -3. (KONEZ SVERLENIJA) 
#13= 0.13 (PODA4A G95) 
#14= 5000. (PODA4A G94) 
#1= #12 (NA4ALO WHILE) 
#2= -80. (KONEZ) 
#3= 15. (SHAG) 
#4= 0.25 (NEDOEZD V CIKLE) 
#5= -3. (KOORDINATA OTSKOKA) 

G00 X0. Y0 M08 
G01 Z#11 G94 F#14 
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
G01 Z2. F3000. 
G00 Z50. 
M99 




%