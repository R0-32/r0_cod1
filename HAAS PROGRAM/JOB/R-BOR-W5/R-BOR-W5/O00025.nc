%
O00025 (PAZ X) 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 40. ] 

T3 D03 M06
G43 H03 Z100. 
S1100 M03
#7= 2000. (PODA4A mm.   V CIKLE EST MNOGITELI) 
(0 CENTR DETALI) 

#1= 0. (NA4ALO) 
#2= -10. + 0.1 (KONEZ) 
#3= 0.2 (SHAG) 
#4= 42. / 2. (R-FREZI) 
#5= 0. (OFFN) 
#6= 120.5 (X) 
#8= 100. / 2 (DLINA Y) 
#9= 5. (OTSTUP) 
#11= #6 / #4 (KOLISHESTVO SHAGOV PO X) 
#12= #6 / #11 (SHAG PO X) 

G00 Z25. M08 F#7 
G00 X - [ #6 / 2 ] Y [ #8 + #4 ] 

WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 

G00 X - [ #6 / 2 ] Y [ #8 + #4 ] 
Z [ #1 ] 

G01 
X - [ #6 / 2. - #12 ] 
Y - [ #8 - #4 ] 

X - [ #6 / 2. - #12 - #12 ] 
Y [ #8 - #4 ] 

X - [ #6 / 2. - #12 - #12 - #12 ] 
Y - [ #8 - #4 ] 

X - [ #6 / 2. - #12 - #12 - #12 - #12 ] 
Y [ #8 - #4 ] 

X [ #6 / 2. - #4 ] 
Y - [ #8 - #4 ] 

G00 Z - [ #1 ] 
END1 

G00 Z100. 
G52 X0. Y0. Z0. 
M30 



%