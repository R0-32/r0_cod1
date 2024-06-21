%
O00005 (1 STORONA RR 52 I L755)

(X0Y0 CENTR ZAGOTOVKI) 

T6 M06 D06 (d20 - LOEX08)
G64 G54
G90 G17 G40 
S1200 M03
F3000. 
G43 H06 

G52 X0 Y0 Z0 
(=================)

G00 Z250.0 
M08 

#1=0.0          (START Z)
#2= -18. (END Z)
#3= 0.5 (STEP Z)
#4=[ 42. /2.0]   (R MILL)
#5=0.0          (OFFN)

(=================)
WHILE [#1 GT #2] DO1
#1=#1-#3
IF [#1 LT #2] THEN #1=#2

G00 X[ -755. /2.0-#4 ] Y[ -26. - #4 -8 ]
G00 Z#1
G01 Y [ 26. + #4 ] 
G01 X[ 755. /2.0+#4 ]
G01 Y[ -26. - #4 -8. ]
G00 Z100. 

END1

M09 
G0 Z250.0
G53 Y0 
M30

(MACHINE TIME: min)


%