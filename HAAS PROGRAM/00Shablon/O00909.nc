%
O00909 (LISKA NA DIAMETRE) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z0. 

T10 D10 M06
G43 H10 Z100. 
S3500 M03 F300. 

#1= 0. (NA4ALO) 
#2= -3. (KONEZ) 
#3= 3. (SHAG) 
#4= 8. (D-FREZI) 
#5= -0.05 (OFFN) 
#6= 15. (D-OKR.ZAGOT.) 
#7= 12.5 (SHIRINA LISKI) 
#8= 6. (BEZOP. RASTOJANIE) 

G00 X [ #6 / 2 + #4 / 2 ] Y [ #6 / 2 + #4 / 2 + #8 ] 
G00 Z10. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ #6 / 2 + #4 / 2 ] Y [ #6 / 2 + #4 / 2 + #8 ] 
G00 Z#1 
G01 X [ #7 / 2 + #4 / 2 + #5 ] Y [ #6 / 2 ] 
G01 Y [ - #6 / 2 ] 
G01 X [ #6 / 2 + #4 / 2 ] Y [ - #6 / 2 - #4 / 2 - #8 ] 
G00 X [ - #6 / 2 - #4 / 2 ] 
G01 X [ - #7 / 2 - #4 / 2 - #5 ] Y [ - #6 / 2 ] 
G01 Y [ #6 / 2 ] 
G01 X [ - #6 / 2 - #4 / 2 ] Y [ #6 / 2 + #4 / 2 + #8 ] 

END1 
G00 Z100. M09 
G53 Y0. 
G52 X0. Y0. Z0. 
M30




%