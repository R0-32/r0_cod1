%
O00010 (INSIDE FREZ 18MM)

G00 G17 G40 G49 G80 G90
G54 

T2 D02 M06
G43 H02 Z100. 
S500 M03 F500 

(CONS) 

#10= 500. (PODAHA) 
#1= 0. (NAHALO Z) 
#2= -25. (KONEC Z) 
#3= 0.5 (SHAG Z) 
#4= 10. / 2 (R FREZY) 
#5= 1.5 (OFFN) 
#6= 157. (X) (FULL ZAGOTOVKA) 
#7= 37. (Y) 

#21= 7.5 (R) 
#22= 111. - #21 (RASTOYANIE OT ROGOV DO R) 

#800= 11. + 30. (ROG+OTSTUP) (Y) 
#900= #6 + 30. (X) 
#23= #900 - #22 
#24= #800 + #21 

#8= 0 (FASCA) 
#9= #21 - #4 + #5 (OTYEZD Y) 
#11= 0. (OTYEZD X) 
#15= 0. (OTSTUP) 
(CONS) 

G52 X0. Y0. Z10. 

G00 Z10. M08 
G00 Y [ #9 ] 
G01 Z #1 F#10 

(INSIDE ARKA) 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G00 X #900 Y #800 (PODEZD) 

G01 Z #1 

G01 X [ #23 ] 
G02 X [ #23 - #21 ] Y [ #24 ] R #21 
G02 X [ #23 - #21 + #21 ] Y [ #24 + #21 ] R #21 
G01 X [ #23 - #21 + #21 + #22 ] 

END1 
(INSIDE ARKA) 


(PODVAL) 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 



%