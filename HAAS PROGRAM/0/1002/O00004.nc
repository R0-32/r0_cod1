%
O00004 (PODREZKA TORCA 2)
G00 G17 G40 G49 G80 G90 

(!!!X0 Y0 CENTR     Z0 NIZ TISOV + 90.!!!) 
(2 RYADA PO 8 SHTUK   NA SHIRINE 130.) 

G54 
G52 X [ 0 ] Y [ 0. ] Z [ 0. ] 

T11 D11 M06 
G43 H11 Z200. 
S800. M03 
#10= 800. (PODA4A mm.) 
 
#1= 7.1 (NA4ALO  7.1) 
#2= 0. (KONEZ   0) 
#3= 0.5 (SHAG) 
#4= 80. / 2 (R INSTR) 
#5= 0 (OFFN) 

#6= 180. (Y) 
#7= 130. (X) 
#8= 5. (PEREKRITIE) 

G00 X [ - #7 / 2 + #4 - #8 ] Y [ #6 / 2. + #4 + #8 ] 
G00 Z50. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
IF [ #1 EQ #2 ] S1000. F400. 

G00 X [ - #7 / 2 + #4 - #8 ] Y [ #6 / 2. + #4 + #8 ] 
G01 Z [ #1 ] 
G01 Y [ - #6 / 2. - #4 - #8 ] 
G00 X [ #7 / 2 - #4 + #8 ] 
G01 Y [ #6 / 2. + #4 + #8 ] 

END1 
G00 Z200. M09 
M05 
G52 X0. Y0. Z0. 

G53 Y0 
M30


%