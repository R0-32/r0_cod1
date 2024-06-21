%
O00005 (BOR) (VERX MERA) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T4 D04 M06 
G43 H04 Z150. 
S3000 M03 

(PARAM) 
#10= 800. (PODA4A mm.) 
#1= 0. (NAHALO Z) 
#2= -1. (KONEC Z) 
#3= 0.1 (SHAG Z) (LET) 
#4= 40. / 2. (R FREZY) 
#5= 0. (OFFN) (LET) 
(PARAM) 
(PARAM BOR) 
#6= 120. (X) (ALL DETAL) 
#7= 98. (Y) 
#8= 0. (FASKA) 
#12= 20. (OTSTUP) 
#13= 0. (TEST Z) 
(PARAM BOR) 

M08 F#10 
G01 Z [ #12 + #1 ] X [ #16 + #4 + #4 (OTYEZD X) ] Y [ #17 + #4 + #4 (OTYEZD Y) ] 

(KONTUR BOR) 
WHILE [ #1 GT #2 ] DO1 #1= #1 - #3 IF [ #1 LT #2 ] THEN #1= #2 
(PARAM BOR) 
#16= #6 / 2. (LET X) 
#17= #7 / 2. (LET Y) 
(PARAM BOR) 

G01 Z [ #12 + #1 ] X [ #16 + #4 + #4 (OTYEZD X) ] Y [ #17 + #4 + #4 (OTYEZD Y) ] 
Z#1 
X [ #16 (OTYEZD X) ] Y [ #17 (OTYEZD Y) ] 
(LET) #16= - [ #16 ] 
(LET) #17= - [ #17 ] 
X #16 
Y #17 
(LET) #16= - [ #16 ] 
(LET) #17= - [ #17 ] 
X #16 
Y #17 

G01 X [ #16 - #4 (OTYEZD X) ] Y [ #17 - #4 (OTYEZD Y) ] 
(LET) #16= - [ #16 - #4 ] 
(LET) #17= - [ #17 - #4 ] 
X #16 
Y #17 
(LET) #16= - [ #16 ] 
(LET) #17= - [ #17 ] 
X #16 
Y #17 

G01 X [ #16 - #4 (OTYEZD X) ] Y [ #17 - #4 (OTYEZD Y) ] 
(LET) #16= - [ #16 - #4 ] 
(LET) #17= - [ #17 - #4 ] 
X #16 
Y #17 
(LET) #16= - [ #16 ] 
(LET) #17= - [ #17 ] 
X #16 
Y #17 

G01 Z [ #12 + #1 ] 
END1 
(KONTUR BOR) 

G00 Z200. M09 
M05 
G52 X0. Y0. Z0. 
G53 Y0 
M30 


%