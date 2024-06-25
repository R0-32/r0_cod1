%
O00949 (FAS.OTV.RAD) 
G00 G17 G40 G49 G80 G90
G54 
G52 Z [ 0. ] 
T16 D16 M06 
G43 H16 Z200. 
S4000 M03 
#7= 500. (PODA4A mm.) 
#20= 1. (S KAKOGO NOMERA NA4AT) 

#15= 3. (KOLI4ESTVO) 
#17= 240. (DIAMETR RASPOLOGENIJA) 
#13= [ 360. / #15 ] (SHAG UGLA) 
#11= -90. + [ #13 * [ #20 -1. ] ] (NA4ALO UGLA) 

M97 P55 L [ #15 + 1. - #20 ] 

G00 Z200. M09 
G52 X0. Y0. Z0. 
M30
N55 M01 

#1= 0. (NA4ALO) 
#2= -4. (KONEZ) 
#3= 0.25 (SHAG) 
#6= 26. (D-OTV.) 
#4= 1. (D-FREZI) 
#5= 0. (OFFN) 
#9= 45. (POLOVINA UGLA KONUSNOJ 4ASTI) 

G52 X [ SIN[ #11 ] * [ #17 / 2 ] ] Y [ COS[ #11 ] * [ #17 / 2 ] ] 

G00 X0. Y0. M03 
G00 Z10. M08 
G01 Z#1 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#10= #1 * TAN[ #9 ] 
G01 X0. Y0. 
G01 Z#1 
G01 X0. Y [ #6 / 2 - #4 / 2 - #5 + #10 ] 
G03 I0. J [ - #6 / 2 + #4 / 2 + #5 - #10 ] 
G01 X0. Y0. 
END1 
G01 X0. Y0. 
G00 Z200. M09 
#11= #11 + #13 
M99




%