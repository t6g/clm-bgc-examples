set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 2 lw 3 lc rgb "red"
set style line 3 lt 3 lw 3 lc rgb "green"
set style line 4 lt 1 lw 1 lc rgb "blue"
set style line 5 lt 2 lw 1 lc rgb "red"
set style line 6 lt 3 lw 1 lc rgb "green"

set xrange[0:10]
set yrange[0:1]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mol/m^3]' 

plot 'test-obs-0.tec' using 1:($3) title 'A' with lines ls 1, \
     'test-obs-0.tec' using 1:($4) title 'B' with lines ls 2, \
     'test-obs-0.tec' using 1:($5) title 'C' with lines ls 3

set terminal postscript eps size 4, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'test.eps'

replot
set term pop
pause -1

