%
O00010 (KONTUR 100#46 GRUBO)
G00 G17 G40 G49 G80 G90 
G55 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T17 D17 M06 
G43 H17 Z150. 
S2000. M03 
#10= 1700. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -3.2 (KONEZ) 
#3= 0.41 (SHAG) 
#4= 25. / 2 (R INSTR) 
#5= 0. (OFFN) 

#6= 100. (X) 
#7= 46. (Y) 
#8= 5. (FASKA) 
#9= #7 / 2. + #4 + 15. (OTYEZD) 

G00 X [ #6 / 2. - #8 ] Y [ #9 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G01 X [ #6 / 2. - #8 - 1. ] Y [ #9 ] 
G01 Z [ #1 ] 
G01 G41 Y [ #7 / 2. + #5 ] F [ #10 / 2. ] 
G01 X [ #6 / 2. - #8 ] F [ #10 ] 
G01 X [ #6 / 2. + #5 ] Y [ #7 / 2. - #8 ] 
G01 Y [ - #7 / 2. + #8 ] 
G01 X [ #6 / 2. - #8 ] Y [ - #7 / 2. - #5 ] 
G01 X [ - #6 / 2. + #8 ] 
G01 X [ - #6 / 2. - #5 ] Y [ - #7 / 2. + #8 ] 
G01 Y [ #7 / 2. - #8 ] 
G01 X [ - #6 / 2. + #8 ] Y [ #7 / 2. + #5 ] 
G01 X [ #6 / 2. - #8 - 1. ] 
G01 G40 Y [ #9 ] 

END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M99 


%