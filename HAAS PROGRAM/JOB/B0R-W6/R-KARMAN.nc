%
O00040 (POKET CIRKLE)
(Circle Pocket Milling)
( TOOL = 17 / DIA. 8. )
( SPINDLE 5900 RPM / FEED 3000. MM/M )
( DEPTH -10. / STEPOVER 6. / FINISH 0.1 )
G00 G17 G40 G49 G80 G90
G10 L12 P17 R8. (THIS LINE SETS D17 OFFSET)
T17 M06
G00 G54 X50. Y150.
S5900 M03
G43 H17 Z50.
M08
G01 X50.5 Y150. F3000.
G01 Z0. F1500.
(BORE DOWN TO DEPTH)
G03 G91 Z-0.2 I-0.5 F3000. L50
(FINAL BORE PASS AT DEPTH)
G03 G90 I-0.5 Z-10. F3000.
G01 G90 X50. Y150. Z50. F1500.
G13 G90 D17 I4.5 K19.9 Q6. F3000. Z-9.995
( FINISH Z)
G01 G90 X50. Y150. Z50. F1500.
G13 G90 D17 I4.5 K19.9 Q6. F3000. Z-10.
( FINISH XY )
G01 G90 X50. Y150. Z50. F1500.
G13 G90 D17 I20. F3000. Z-10.
G00 Z50. M09
G00 G90 G53 Z0 M05
M30 ( END VPS CIRCLE CONTOUR )

%