%
O00005 (VERX MERA) 

G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T4 D04 M06 
G43 H04 Z150. 
S2000 M03 

#10= 2000. (PODA4A mm.) 
 
#1= -0.4 (NA4ALO) 
#2= -1. (KONEZ) 
#3= 0.2 (SHAG) 
#4= 40. / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= [ -281. / 2. - #4 - 10. ] (-X) 
#8= [ 281. / 2. + #4 + 10. ] (X) 
#9= 0. (Y) 
#6= 137.5 (-Y) 

G00 X [ #7 ] Y [ #9 - 21. ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #7 ] Y [ #9 ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 + 20. ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 + 40. ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 + 60. ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 + 80. ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 + 100. ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

G00 X [ #7 ] Y [ #9 + 118.3 ] 
G00 Z [ #1 ] 
G01 X [ #8 ] 
G00 Z [ #1 + 20. ] 

END1 
G00 Z200. M09 
M05 
G52 X0. Y0. Z0. 
G53 Y0 
M30 



%