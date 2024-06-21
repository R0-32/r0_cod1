%
O00941 (TURN OTV.RAD.) 
G00 G17 G40 G49 G80 G90
G54 
G52 Z0. 
T1 D01 M06
G43 H01 Z150. 
S6000 M03 F500. 

#1= 0. (NA4ALO UGLA) 
#5= 3. (KOLI4ESTVO) 
#7= 18.2 (DIAMETR RASPOLOGENIJA) 
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
#11= -12. (NA4ALO) 
#12= -22.2 (KONEZ) 
#13= 0.2 (SHAG) 
#16= 8. (D-OTV.) 
#14= 6. (D-FREZI) 
#15= 0.05 (OFFN) 

G00 X0. Y0. 
G00 Z10. M08 
G01 Z #11 
WHILE [ #11 GT #12 ] DO1 
#11= #11 - #13 
IF [ #11 LT #12 ] THEN #11= #12 
G01 X0. Y [ #16 / 2 - #14 / 2 - #15 ] 
G03 I0. J [ - #16 / 2 + #14 / 2 + #15 ] Z #11 
END1 
G01 X0. Y [ #16 / 2 - #14 / 2 - #15 ] 
G03 I0. J [ - #16 / 2 + #14 / 2 + #15 ] 
G01 X0. Y0. 
G00 Z100. M09 
#1= #1 + #3 
M99




%