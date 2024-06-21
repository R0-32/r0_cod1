%
O00030 (PLOSK)
G00 G17 G40 G49 G80 G90
(0 xy -- Slevo,vdali) 

G54 
G52 X [ -80. ] Y [ 40. ] Z [ 0. ] 

T14 D14 M06 
G43 H14 Z100. M08 
S800. M03 F1000. 

#1= -0.5 (NA4ALO PO Z) 
#2= -1. (KONEZ PO Z) 
#3= 0.5 (SHAG PO Z) 
#4= 63. (D-INSTRUM. S TABLICI) 
#5= 150. (PO X) 
#6= 75. (PO Y) 

#7= 80. (% FREZI) 
#8= 20. (BEZOPAS. PO Z) 
#9= 10. (BEZOPAS. PO X) 


#31= 0. (0 -- STANDART, PERVIJ PROHOD) 
#10= #7 / 100. (KOEFFICIENT NA D-FREZI) 
#11= #4 * #10 (SHIRINA ZA PROHOD PO Y) 
#20= FIX[ #6 / #11 ] + 1. (4ISLO PROHODOV) 
#21= #6 / #20 (KORREKTOR SHIRINI PO Y) 
#33= [ #4 - #21 ] / 2 (DLJA RAVENSTVA 1 I POSL. PROHODA) 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#30= #31 (SBROS S4ET4IKA PROHODOV) 
WHILE [ #30 LT #20 ] DO2 
#30= #30 + 1. 
IF [ #1 LT #2 ] THEN #1= #2 
IF [ #1 EQ #2 ] S1200. F400. 

G00 X [ - #4 / 2 - #9 ] Y [ - #21 * #30 + #4 / 2 - #33 ] 
G00 Z#1 
G01 X [ #5 + #4 / 2 + #9 ] 
G00 Z [ #1 + #8 ] 

END2 
#31= 0. (SBROS 1 PROHODA) 
END1 

G00 Z100. M09 
G52 X0 Y0 Z0 
M30



%