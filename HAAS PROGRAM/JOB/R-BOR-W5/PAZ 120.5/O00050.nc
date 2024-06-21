%
O00050 (xxxxx) (PAZ 4ISTO)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 40. ] 

T4 D04 M06
G43 H04 Z100. 
S2500 M03
#7= 2000. (PODA4A mm.   V CIKLE EST MNOGITELI) 
(0 CENTR DETALI) 

#1= 0. (NA4ALO) 
#2= -10. + 0.1 (KONEZ) 
#3= 0.2 (SHAG) 
#4= 40. / 2. (R-FREZI) 
#5= 0. (OFFN) 
#6= 120.5 (X) 
#8= 100. (DLINA Y) 
#9= 20. (OTSTUP) 

G00 Z25. M08 F#7 
G00 X - [ #6 / 2. ] Y [ #8 + #4 + #9 ] 

WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 

G00 X - [ #6 / 2. ] Y [ #8 + #4 + #9 ] 
Z [ #1 ] 

#11= #6 (START DLA WHILE2) 
#12= 0. (END DLA WHILE2) 
#13= - [ #8 - #4 ] 
WHILE [ #12 GT #11 ] DO2 
#12= #12 - #4 
IF [ #12 LT #11 ] THEN #12= #11 

G01 
X - [ #6 - #4 ] 
Y - [ #13 ] 
#12= #12 - #4 
X - [ #6 - #4 ] 
Y - [ #13 ] 

END2 

G00 Z - [ #1 ] 
END1 

G00 Z100. 
G52 X0. Y0. Z0. 
M30


%