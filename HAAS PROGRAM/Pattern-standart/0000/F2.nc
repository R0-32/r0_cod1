%
O00011 (FASKI PO DIAMETRU)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 
T10 D10 M06
G43 H10 Z150. 
S3500 M03 F500. 

#1= 30. (NA4ALO UGLA) 
#5= 6. (KOLI4ESTVO) 
#7= 130. (DIAMETR RASPOLOGENIJA) 
#3= [ 360. / #5 ] (SHAG UGLA) 
M97 P5 L#5 

G69 G94 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M30 

N5 G52 X [ SIN[ #1 ] * [ #7 / 2 ] ] Y [ COS[ #1 ] * [ #7 / 2 ] ] Z0. 
M01 
M03 
G00 Z100. 

#110= 1000. (PODA4A mm.) 

#100= 11. (DIAMETR OTV) 
#101= 0. (NA4ALO) 
#102= -4. (KONEZ) 
#103= 1. (SHAG) 
#104= 10. / 2 (R INSTR) 

G00 X0. Y0. 
G00 Z10. M08 F #110 

WHILE [ #101 GT #102 ] DO1 
#101= #101 - #103 
IF [ #101 LT #102 ] THEN #101= #102 
#10= - #100 / 2 - [ [ #101 - #102 ] * TAN[ 45. ] ] + #104 

G01 X0. Y0. 
G01 Z #101 
G01 X#10 Y0. 
G03 I [ - #10 ] Y [ 0. ] 
G01 X0. Y0. 

END1 

G01 X0. Y0. 
G00 Z100. M09 
#1= #1 + #3 
M99





%