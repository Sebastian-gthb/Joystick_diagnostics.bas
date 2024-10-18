DIM xa AS INTEGER
DIM xb AS INTEGER
DIM ya AS INTEGER
DIM yb AS INTEGER
SCREEN 12
LOCATE 11, 20
PRINT "+                   +                   +                   +"
COLOR 4
LOCATE 13, 20
PRINT "0                   0                   0                   0"
COLOR 15
LOCATE 15, 20
PRINT "-                   -                   -                   -"
LOCATE 28, 2
PRINT "Port 1  X-Achse     Port 1  Y-Achse     Port 2  X-Achse     Port 2  Y-Achse"
LINE (0, 0)-(150, 431), 1, BF
LINE (0, 200)-(150, 200), 4
LINE (160, 0)-(310, 431), 1, BF
LINE (160, 200)-(310, 200), 4
LINE (320, 0)-(470, 431), 1, BF
LINE (320, 200)-(470, 200), 4
LINE (480, 0)-(630, 431), 1, BF
LINE (480, 200)-(630, 200), 4

DIM feld(1 TO 15044) AS INTEGER
GET (0, 433)-(639, 479), feld

STRIG(0) ON
STRIG(4) ON
STRIG(2) ON
STRIG(6) ON
ON STRIG(0) GOSUB knopfaa
ON STRIG(4) GOSUB knopfba
ON STRIG(2) GOSUB knopfab
ON STRIG(6) GOSUB knopfbb
DO
xa = 0
ya = 160
xb = 320
yb = 480
LINE (0, 0)-(0, 431), 1
PSET (0, 200), 4
LINE (160, 0)-(160, 431), 1
PSET (160, 200), 4
LINE (320, 0)-(320, 431), 1
PSET (320, 200), 4
LINE (480, 0)-(480, 431), 1
PSET (480, 200), 4
FOR i = 1 TO 150
Esc$ = INKEY$
IF Esc$ = CHR$(27) THEN END
10
LINE (xa + 1, 0)-(xa + 1, 431), 1
PSET (xa + 1, 200), 4
PSET (xa, 200 - STICK(0))
xa = xa + 1

LINE (ya + 1, 0)-(ya + 1, 431), 1
PSET (ya + 1, 200), 4
PSET (ya, 231 - STICK(1))
ya = ya + 1

LINE (xb + 1, 0)-(xb + 1, 431), 1
PSET (xb + 1, 200), 4
PSET (xb, 231 - STICK(2))
xb = xb + 1

LINE (yb + 1, 0)-(yb + 1, 431), 1
PSET (yb + 1, 200), 4
PSET (yb, 231 - STICK(3))
yb = yb + 1

LINE (151, 250)-(159, 300), 0, BF
LINE (471, 250)-(479, 300), 0, BF
PUT (0, 433), feld, PSET
NEXT i
LOOP UNTIL Esc$ = CHR$(27)
END

knopfaa:
LOCATE 17, 20
PRINT "A"
LOCATE 28, 1
RETURN

knopfba:
LOCATE 18, 20
PRINT "B"
LOCATE 28, 1
RETURN

knopfab:
LOCATE 17, 60
PRINT "A"
LOCATE 28, 1
RETURN

knopfbb:
LOCATE 18, 60
PRINT "B"
LOCATE 28, 1
RETURN

