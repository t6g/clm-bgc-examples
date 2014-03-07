set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 2 lw 3 lc rgb "red"
set style line 3 lt 3 lw 3 lc rgb "green"
set style line 4 lt 1 lw 1 lc rgb "blue"
set style line 5 lt 2 lw 1 lc rgb "red"
set style line 6 lt 3 lw 1 lc rgb "green"

set xrange[0:10]
#set yrange[0:1]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mol/m^3]' 
plot 'mass-transfer-obs-0.tec' using 1:($2*250) title 'aqueous*250' with lines ls 1, \
     'mass-transfer-obs-0.tec' using 1:($3) title 'immobile' with points 

set terminal postscript eps size 4, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'mass-transfer.eps'

replot
set term pop
pause -1

