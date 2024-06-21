%
O00001 (SKOS_10gr_10) 
(CO01 04.00.0022-04)
T5 M06 D05 (d16 Z02 L150 LOEX08)
G54
G90 G17 G40 
S4775. M03
F1432.5 
G43 H05 

/ G101 Y0 

G00 Z150.0

#1=0.0          (START Z)
#2=-1.8         (END Z)
#3= 0.05 (STEP Z)
#4=[ 10. /2.0]   (R MILL)
#5=0.0          (OFFN)
#6=10.0       (ugol skosa)

(=================)


WHILE [#1 GT #2] DO1
#1=#1-#3
IF [#1 LT #2] THEN #1=#2

#7=TAN[ 90. -#6]*[#1-#2]

G00 X[0.+#4-#7] Y145.
Z#1 M08 
G01 Y290.
G00 Z50. 

END1

G0 Z150.0

#1=0.0          (START Z)
#2=-1.8         (END Z)
#3= 0.05 (STEP Z)
#4=[ 10. /2.0]   (R MILL)
#5=0.0          (OFFN)
#6=10.0       (ugol skosa)

(=================)

WHILE [#1 GT #2] DO1
#1=#1-#3
IF [#1 LT #2] THEN #1=#2

#7=TAN[90. -#6]*[#1-#2]

G00 X[-30.+#4-#7] Y-20.
Z#1
G01 Y[175.-#4]
G00 Z50. 

END1

G0 Z150.0

G00 G53 Y0. X - 1000. Z0 

M30


%