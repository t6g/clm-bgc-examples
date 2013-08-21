set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 2 lw 3 lc rgb "red"
set style line 3 lt 3 lw 3 lc rgb "green"
set style line 4 lt 1 lw 3 lc rgb "violet"

set xrange[0:20]
set yrange[0:1]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mmol/m^3]' 
plot 'lit1monod-obs-0.tec' using 1:($5*1000) title 'Lit1' with lines ls 1, \
     'lit1monod-obs-0.tec' using 1:($4*1000) title 'SOM1' with lines ls 2, \
     'lit1monod-obs-0.tec' using 1:($6*1000) title 'MBC' with lines ls 3, \
     'lit1monod-obs-0.tec' using 1:($3*1000) title 'CO2' with lines ls 4

set terminal postscript eps size 4, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'lit1monod.eps'

replot
set term pop
pause -1

