1000 REM Mandelbrot Set Project
1010 REM Quite BASIC Math Project
1020 REM ------------------------
1025 REM _FULLSCREEN _STRETCH
1030 CLS
1040 REM This program plots a graphical representation of the famous Mandelbrot set.
1043 REM it may take a while to finish so have patience and don't have too high expectations;"
1050 DIM P(9)
2000 REM Initialize the color palette
2010 GOSUB 3000
2020 REM L is the maximum iterations to try
2030 LET L = 200
2033 SCREEN 7
2036 CLS
2040 FOR I = 0 TO L
2050 FOR J = 0 TO L
        2055 REM Map from pixel coordinates (I,J) to math (U,V)
        2060 LET U = I / (L / 2) - 1.5
        2070 LET V = J / (L / 2) - 1
        2080 LET X = U
        2090 LET Y = V
        2100 LET N = 0
        2110 REM Inner iteration loop starts here
        2120 LET R = X * X
        2130 LET Q = Y * Y
        2140 IF R + Q > 4 OR N >= L THEN GOTO 2190
        2150 LET Y = 2 * X * Y + V
        2160 LET X = R - Q + U
        2170 LET N = N + 1
        2180 GOTO 2120
        2190 REM Compute the color to plot
        2200 IF N < 10 THEN LET C = 0: GOTO 2213
        2203 LET SI = INT(8 * (N - 10) / (L - 10) + 0.5)
        2206 LET C = P(SI)
        2210 REM PLOT I, J, C
        2213 IF C <> O THEN GOSUB 4000
    2220 NEXT J
2230 NEXT I
2240 END
3000 REM Subroutine -- Set up Palette
3020 LET P(0) = 0
3030 LET P(1) = 13
3040 LET P(2) = 1
3050 LET P(3) = 2
3060 LET P(4) = 11
3070 LET P(5) = 4
3080 LET P(6) = 6
3090 LET P(7) = 14
3095 LET P(8) = 15
3100 RETURN
4000 COLOR C, 0
4020 PSET (I, J)
4040 RETURN
