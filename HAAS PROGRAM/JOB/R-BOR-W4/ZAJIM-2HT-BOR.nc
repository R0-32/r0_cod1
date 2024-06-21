%
O00035 (BOR-ZAJIM-170-65)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 10. ] 
 
T4 D04 M06 
G43 H04 Z150. 
S3000 M03 

(PARAM) 
#10= 800. (PODA4A mm.) 
#1= 0. (NAHALO Z) 
#2= -5. (KONEC Z) 
#3= 0.5 (SHAG Z) (LET) 
#4= 10. / 2. (R FREZY) 
#5= 0. (OFFN) (LET) 
(PARAM) 
(PARAM BOR) 
#6= 170. / 2. (X) (ALL DETAL) 
#7= 65. / 2. (Y) 
#8= 0. (FASKA) 
#12= 20. (OTSTUP) 
#13= 0. (TEST Z) 
(PARAM BOR) 

M08 F#10 
G01 Z [ #12 + #1 ] X [ -18.4 - #4 (OTYEZD X) ] Y [ #7 - #4 (OTYEZD Y) ] 
(KONTUR BOR) 
WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 

(PRAVIY VERHNIY UGOL) 
G01 X [ -18.4 - #4 (OTYEZD X) ] Y [ #7 + #4 (OTYEZD Y) ] 
Z#1 
G01 Y [ #7 -10. ] 
X [ -18.4 -10.6 + #4 ] 
Y [ #7 ] 
X [ -18.4 - #4 ] 
G00 Z [ #12 + #1 ] 
(PRAVIY VERHNIY UGOL) 

(XL YT UGOL) 
G00 X - [ #6 + #4 ] Y [ #7 + #4 ] 
G01 Z#1 
X - [ #6 + #4 ] Y [ #7 - #4 ] 
X - [ #6 -25. + #4 ] 
Y [ #7 -20. + #4 ] 
X - [ #6 + #4 ] 
Z [ #12 + #1 ] 
(XL YT UGOL) 

(XL YB UGOL) 
G00 X - [ #6 + #4 ] Y - [ #7 + #4 ] 
G01 Z#1 
X - [ #6 ] Y - [ #7 - #4 ] 
X - [ #6 -15. + #4 ] 
Y - [ #7 -13. + #4 ] 
X - [ #6 + #4 ] 
Z [ #12 + #1 ] 
(XL YB UGOL) 

(KVADRAT) 
G00 X - [ #6 -15. - #4 ] Y - [ #7 + #4 ] 
G01 Z#1 
X - [ #6 -15. - #4 ] Y [ #7 -10. - #4 ] (XL YT) 
X [ -18.4 - #4 ] (XR YT) 
Y - [ #7 - #4 ] (XR YB) 
X - [ #6 -15. - #4 ] (XL YB) 
Y [ #7 -10. - #4 ] (XL YT) 
(KVADRAT LESS) 

(KVADRAT LESS) 
(KVADRAT) 
(PARAM BOR) 
#16= #6 / 2. + #4 (LET X) 
#17= #7 / 2. + #4 (LET Y) 
#18= #16 / #4 
IF [ #16 / #4 GT #17 / #4 ] THEN #18= #17 / #4 
(PARAM BOR) 

WHILE [ #18 GT 0. ] DO2 IF [ #18 LT 0. ] THEN #18= 0. 
#18= #18 - 1. 
(LET) #16= - [ #16 - #4 ] 
(LET) #17= - [ #17 - #4 ] 
X #16 
Y #17 

(LET) #16= - [ #16 ] 
(LET) #17= - [ #17 ] 
X #16 
Y #17 

G01 X [ #16 - #4 (OTYEZD X) ] Y [ #17 - #4 (OTYEZD Y) ] 
END2 

G01 Z 100. 
END1 
(KONTUR BOR) 

(BOT) 
M06 
M09 
G00 Z200. M09 
M05 
G52 X0. Y0. Z0. 
G53 Y0 
M30 


%