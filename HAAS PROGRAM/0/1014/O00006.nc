%
O00006 (SH4UP)
G00 G17 G40 G49 G80 G90 
G54 

T30 D30 M06 
G00 X [ 0. ] Y [ 0. ] 
G43 H30 Z100. 

#10= 1500. (PODA4A mm.) 

G65 P9832 (PROBE ON) 
G01 Z-7. F [ #10 ] 

G65 P9995 W54. A17. D100. E0.

G01 Z10. 
G01 X [ 0. ] Y [ -20. ] 

G65 P9832 (PROBE ON) 
G01 Z-7. F [ #10 ] 

G65 P9995 W54. A15. D85. E0.
G01 Z50. 

G00 Z [ 200. ] 
M30 



%