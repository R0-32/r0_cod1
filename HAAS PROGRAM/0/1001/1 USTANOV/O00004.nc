%
O00004 (MERA L238 FREZA D16 MONOLIT)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ -2. ] Y [ 0. ] Z [ 0. ] 

T17 D17 M06
G43 H17 Z300. 
S4000 M03
#7= 500. (PODA4A mm.) 

#1= 0 (NA4ALO) 
#2= -28. (KONEZ) 
#3= 10. (SHAG) 
#4= 12. / 2 (DIAM INSTRUMENTA) 
#5= 0.02 (SKOLKO SNAJT) 

G00 X [ #5 - 238. - #4 ] Y [ -140. / 2 - #4 - 5. ] 
G00 Z [ #1 + 20 ] M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ #5 - 238. - #4 ] Y [ -140. / 2 - #4 - 5. ] 

G00 Z [ #1 ] 
G01 Y [ 140. / 2 + #4 + 5. ] 
G00 Z [ 20. ] 
END1 

G00 Z300. M09 
G52 X0. Y0. Z0. 


M30 


%