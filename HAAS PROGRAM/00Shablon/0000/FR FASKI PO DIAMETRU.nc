%
O00026 (FR FASKI PO DIAMETRU)
G00 G17 G40 G49 G80 G90
G54 
G52 Z0. 
T17 D17 M06
G43 H17 Z150. 
S3500. M03 F1000. 

#1= -45. (NA4ALO UGLA) 
#5= 4. (KOLI4ESTVO) 
#7= 65. (DIAMETR RASPOLOGENIJA) 
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


#100= 18. (DIAMETR OTV) 
#11= 0. (NA4ALO) 
#12= -1. (KONEZ) 
#13= 0.1 (SHAG) 
#14= 12. / 2 (R INSTR) 

G00 X0. Y0. 
G00 Z10. M08 F#7 

WHILE [ #11 GT #12 ] DO1 
#11= #11 - #13 
IF [ #11 LT #12 ] THEN #11= #12 
#10= - #100 / 2 - [ [ #11 - #12 ] * TAN[ 45. ] ] + #14 

G00 X0. Y0. 
G01 Z #11 F1000. 
G01 X#10 Y0. F500. 
G03 I [ - #10 ] Y [ 0. ] 
G00 X0. Y0. 

END1 

G00 X0. Y0. 

G00 Z100. M09 
#1= #1 + #3 
M99





%