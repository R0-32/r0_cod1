%
O00011 (xxxxx) (INSIDE FREZ 18MM)

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

#21= 7.5 (R) 
#4= 10. / 2 (R FREZY) 
#5= 1.5 (OFFN) 
#9= #21 - #4 + #5 (PODEZD Y) 

#6= 0. (X) 
#7= 0. (Y) 

#22= - 115. + #21 (RASTOYANIE OT ROGOV DO R) 

#8= 0 (FASCA) 
#11= 0. (OTYEZD X) 
#15= 0. (OTSTUP) 
(CONS) 

G52 X0. Y0. Z10. 

G00 Y [ #9 ] 
G00 Z10. M08 
G01 Z #1 F#10 

(INSIDE ARKA) 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 Z #1 

G01 X [ - #22 ] 
G03 X [ - 115. ] Y [ 0. ] R#21 
G02 X [ - #22 ] Y [ - #21 ] R #23 
G01 X 0 

END1 
(INSIDE ARKA) 


(PODVAL) 

G00 Z150. M09 
G52 X0. Y0. Z0. 
M30


%