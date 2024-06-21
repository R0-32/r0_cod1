%
O00003 (SH4UP)
G00 G17 G40 G49 G80 G90 
G54 

T30 D30 M06 
G00 X [ 10. ] Y [ 0. ] 
G43 H30 Z100. 

#10= 3000. (PODA4A mm.) 

G65 P9832 (PROBE ON) 
G01 Z [ -40. ] F [ #10 ] 


G65 P9995 W54. A20. D-10. ( PRIVAZKA X) 


G01 Z [ 100. ] F#10 
G00 X [ -115. ] Y [ 0. ] 
#10= 3000. (PODA4A mm.) 
G65 P9832 (PROBE ON) 
G01 Z [ -15. ] F [ #10 ] 


G65 P9995 W54. A16. D35. H-20. E0. (PRIVAZKA Y) 


G01 Z [ 100. ] F#10 
G00 X [ -250. ] Y [ 0. ] 
#10= 3000. (PODA4A mm.) 
G65 P9832 (PROBE ON) 
G01 Z [ 10. ] F [ #10 ] 


G65 P9995 W54. A20. H-10. (PRIVAZKA Z) 


G01 Z [ 100. ] F#10 
G00 Z200. 
M99 

%