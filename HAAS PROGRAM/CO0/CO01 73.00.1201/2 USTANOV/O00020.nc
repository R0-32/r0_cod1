%
O00020 (FASKA KONTUR)
(FR D12 ISKAR) 
(D FREZI V TABLICE 3.9) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ - 65.9 - 25. + 0.25 ] Z [ 0. ] 

T16 D16 M06 
G43 H16 Z150. 
S3500 M03 
#10= 1000. (PODA4A mm.) 
 
#1= 0. (NA4ALO) 
#2= -1. (KONEZ) 
#3= 1. (SHAG) 
#4= 3.9 / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= -120. / 2. - #4 - 10. (X) 
#8= 0. (Y) 

G00 X [ #7 ] Y [ #8 ] 
G00 Z10. 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #7 ] Y [ #8 ] 
G00 Z [ #1 ] 
G01 G41 X [ -120. / 2. ] F [ #10 * 2. ] 
G01 Y [ 68.285 ] F [ #10 ] 
G02 X [ 120. / 2. ] Y [ 68.285 ] R [ 90.9 ] 

G01 Y [ 25. ] 
G01 X [ 16.77 ] Y [ 25. ] 
G03 X [ -16.77 ] Y [ 25. ] I [ - 16.77 ] J [ - 5. ] 

G01 X [ #7 ] 
G01 G40 Y [ #8 ] F [ #10 * 2. ] 

END1 
G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M30 


%