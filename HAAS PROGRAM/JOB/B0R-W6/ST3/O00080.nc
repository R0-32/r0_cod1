%
O00080 (VERTIKAL PLOSKOST)
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90

(X0 CENTR) 
(Y0 NEPODVIGNA GUBKA) 
(Z0 VERH) 

G54 
G52 X [ -140. ] Y [ 138.4 ] Z [ 0. ] 

T4 D04 M06
G43 H04 Z150. 
S2000 M03
F2000. (PODA4A mm.) 

#1= 0. (NA4ALO Z) 
#2= -44.4 (KONEC Z) 
#3= 1. (SHAG) 
#4= 40. (D FREZ) 
#5= 280. (DLINA X) 
#6= 0. (GLUB Y) 

G00 X [ - #5 / 2. - #4 / 2. -5. ] Y [ #6 - #4 / 2. ] 
G00 Z50. M08 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2. 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ - #5 / 2. - #4 / 2. -5. ] Y [ #6 - #4 / 2. ] 
G01 Z [ #1 + #3 ] 
G01 X [ #5 / 2. + #4 / 2. + 5. ] 
G01 Z [ #1 ] 
G01 X [ - #5 / 2. - #4 / 2. - 5. ] 

END1 

M09 
G00 Z150. M05 
G52 X0. Y0. Z0. 
G54 Y180. 
M30 

%