%
O00060 (RR40d9 POD MERU 149* MERA)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T8 D08 M06 
G43 H08 Z50. 
S1500 M03 
#10= 1000. (PODA4A mm.) 
 
#1= -17.5 (NA4ALO) 
#2= -52.5 (KONEZ) 
#3= 2.5 (SHAG) 
#4= 50.2 / 2. (R INSTR) 
#5= -0.125 (OFFN) 

#6= 149. / 2. + #4 + #5 
#7= -149. / 2. - #4 - #5 
#8= 40. / 2. + #4 + #5 
#9= -40. / 2. - #4 - #5 

G00 X [ #6 ] Y [ #8 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ #6 ] Y [ #8 ] 
G01 Z [ #1 ] 
G01 Y [ #9 ] 
G01 X [ #7 ] 
G01 Y [ #8 ] 
G01 X [ #6 ] 

END1 
G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M99 




%