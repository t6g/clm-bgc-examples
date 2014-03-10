set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 2 lw 3 lc rgb "red"

set xrange[0:400]
set yrange[0:1]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mol/L]' 
plot 'deni-obs-0.tec' using 1:($2) title 'NO3-' with lines ls 1, \
     'deni-obs-0.tec' using 1:($4) title 'N2' with lines ls 2

set terminal postscript eps size 4, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'deni.eps'

replot
set term pop
pause -1

