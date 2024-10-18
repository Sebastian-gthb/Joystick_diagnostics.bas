SCREEN 12
LINE (0, 0)-(650, 430), 1, BF
LINE (0, 200)-(650, 200), 4
LINE (325, 0)-(325, 430), 4
STRIG(0) ON
STRIG(4) ON
ON STRIG(0) GOSUB knopfa
ON STRIG(4) GOSUB knopfb
COLOR 15
DO
x = STICK(0)
y = STICK(1)
xa = x + 325
ya = 200 - y
IF xb <> 325 OR yb <> 200 THEN PSET (xb, yb), 1
IF xb = 325 OR yb = 200 THEN PSET (xb, yb), 4
PSET (xa, ya)
LOCATE 28, 1
PRINT "x = "; x, "y = "; y, "gedrÅckter Knopf :                                  "
LINE (0, 448)-(650, 480), 0, BF
x = STICK(0)
y = STICK(1)
xb = x + 325
yb = 200 - y
IF xa <> 325 OR ya <> 200 THEN PSET (xa, ya), 1
IF xa = 325 OR ya = 200 THEN PSET (xa, ya), 4
PSET (xb, yb)
LOCATE 28, 1
PRINT "x = "; x, "y = "; y, "gedrÅckter Knopf :                                  "
LINE (0, 448)-(650, 480), 0, BF
LOOP UNTIL INKEY$ = CHR$(27)
END
knopfa:
LOCATE 28, 48
PRINT "A"
LOCATE 28, 1
RETURN
knopfb:
LOCATE 28, 50
PRINT "B"
LOCATE 28, 1
RETURN

