%
O00012 (DUGA-CENTR-V-ROGAH) (INSIDE FREZ 18MM)
G00 G17 G40 G49 G80 G90
G54 

T2 D02 M06
G43 H02 Z100. 
S2000 M03 F700 

(CONS) 
#10= 650 (PODAHA) 
#1= 0. (NAHALO Z) 
#2= -30. (KONEC Z) 
#3= 0.4 (SHAG Z) 

#21= 17. / 2 (R) 
#4= 16. / 2 (R FREZY) 
#5= 1.5 (VREZ) 
#9= #21 - #4 (VREZ Y) 
#22= -125. + #21 (RASTOYANIE OT ROGOV DO R) 
#23= #22 - #9 
(CONS) 

G52 X0. Y0. Z10. 
G00 X0. Y0. M08 F#10 

(INSIDE ARKA) 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X20. Y0. 
G01 Y#9 
G01 Z#1 

G01 X [ #22 ] 
G03 X [ #23 ] Y0. R #4 
G03 X [ #22 ] Y [ - #9 ] R #4 
G01 X [ 20. ] 

END1 
(INSIDE ARKA) 
(PODVAL) 
G00 Z200. M09 
G52 X0. Y0. Z0. 
G53 Y0 
M30 



%