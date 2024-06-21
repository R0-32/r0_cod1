%
O00080 (BOR-X-WHILE2) (VERX) 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T14 D14 M06
G43 H14 Z100. 
S800 M03
#7= 1500. (PODA4A mm.   V CIKLE EST MNOGITELI) 
(0 CENTR DETALI) 

#1= 0. (NA4ALO) 
#2= -3. (KONEZ) 
#3= 0.5 (SHAG) 
#4= 63. / 2. (R-FREZI) 
#5= 0. (OFFN) 
#6= 147. / 2. (X) 
#8= 100. / 2 (DLINA Y) 
#9= 10. (OTSTUP) 

G00 Z25. M08 F#7 
G00 X - [ #6 ] Y [ #8 + #4 + #9 ] 

WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 

#6= 147. / 2. (X) 
#8= 100. / 2 (DLINA Y) 
#11= #6 * 2. / #4 (KOLISHESTVO SHAGOV PO X) 
#12= #6 * 2. / #11 (SHAG PO X) 

G00 X - [ #6 ] Y [ #8 + #4 + #9 ] 
Z [ #1 ] 

WHILE [ #11 GT 0. ] DO2 #11= #11 -1. IF [ #11 LT 0. ] THEN #11= 0. 

#6= #6 - #12 
#8= - [ #8 ] 
G01 
X - [ #6 ] 
Y #8 
END2 

G00 Z 25. 
END1 

G00 Z100. 
G52 X0. Y0. Z0. 
M30


%