%
O00020 (TOREZ 8MM MERA )
G00 G17 G40 G49 G80 G90
G54 
G52 X [ -2. ] Y [ 0. ] Z [ 0. ] 

(FREZA D54 PRYAMOZUBA) 

T8 D08 M06
G43 H08 Z300. 
S1500. M03
#7= 600. (PODA4A mm.) 

#1= -8. (NA4ALO) 
#2= -88. (KONEZ) 
#3= 3. (SHAG) 
#4= 54. / 2 (DIAM INSTRUMENTA) 
#5= -0.05 (PPIPPUSK PO X) 

G00 X [ #5 + #4 ] Y [ 40. + #4 + 5. ] 
G00 Z [ #1 + 20 ] M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X [ #5 + #4 ] Y [ 40. + #4 + 5. ] 

G00 Z [ #1 ] 
G01 X [ #5 + #4 ] Y [ -40. - #4 -5. ] 
G00 Z [ 20. ] 

END1 

G00 Z300. M09 
G52 X0. Y0. Z0. 


M99 

%