set terminal postscript eps size 4, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'fig.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 2 lw 3 lc rgb "red"
set style line 3 lt 3 lw 3 lc rgb "green"
set style line 4 lt 4 lw 3 lc rgb "violet"

set xrange[0:100]
set yrange[0:1]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mM]' 
plot 'ch4os-obs-0.tec' using 1:($2*1000) title 'O_2' with lines, \
     'ch4os-obs-0.tec' using 1:($3*1000) title 'CH_4' with lines, \
     'ch4os-obs-0.tec' using 1:($4*1000) title 'CO_2' with lines


