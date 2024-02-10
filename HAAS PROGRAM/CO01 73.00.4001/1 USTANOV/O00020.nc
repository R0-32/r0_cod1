%
O00020 (KONTUR MERA)
(MONOLIT D20) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T25 D25 M06 
G43 H25 Z150. 
S3000 M03 
#10= 1000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -12. (KONEZ) 
#3= 12. (SHAG) 
#4= 20. / 2. (R INSTR) 
#5= 0. (OFFN) 

#6= 160. (X) 
#7= 40. (Y) 
#8= 10. (FASKA) 
#9= #7 / 2. + #4 + #5 + 10. (OTYEZD) 
#15= 0.1 (OTSTUP) 

G00 X [ #6 / 2. - #8 - #15 ] Y [ #9 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G01 X [ #6 / 2. - #8 + #5 - #15 ] Y [ #9 ] 
G01 Z [ #1 ] 
G01 G41 Y [ #7 / 2. + #5 ] F [ #10 / 2. ] 
G01 X [ #6 / 2. - #8 + #5 ] F#10 
G01 X [ #6 / 2. + #5 ] Y [ #7 / 2. - #8 + #5 ] 
G01 Y [ - #7 / 2. + #8 - #5 ] 
G01 X [ #6 / 2. - #8 + #5 ] Y [ - #7 / 2. - #5 ] 
G01 X [ - #6 / 2. + #8 - #5 ] 
G01 X [ - #6 / 2. - #5 ] Y [ - #7 / 2. + #8 - #5 ] 
G01 Y [ #7 / 2. - #8 + #5 ] 
G01 X [ - #6 / 2. + #8 - #5 ] Y [ #7 / 2. + #5 ] 
G01 X [ #6 / 2. - #8 + #5 - #15 ] 
G01 G40 Y [ #9 ] 

END1 
G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M99 

%