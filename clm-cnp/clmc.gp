set terminal postscript eps size 8, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'clmc.eps'
set style line 1 lt 1 lw 1 lc rgb "blue"
set style line 2 lt 2 lw 1 lc rgb "red"
set style line 3 lt 3 lw 1 lc rgb "green"
set style line 4 lt 4 lw 1 lc rgb "violet"

set multiplot layout 1, 2 rowsfirst

set xrange[0:400.0]
set yrange[0:1]
set xlabel 'Time [d]' 
set ylabel 'Concentration (mol/m3)' 

plot \
     'clmc-obs-0.tec' using 1:4 title 'Lit1' with lines ls 1 axes x1y1, \
     'clmc-obs-0.tec' using 1:5 title 'Lit2' with lines ls 2 axes x1y1, \
     'clmc-obs-0.tec' using 1:6 title 'Lit3' with lines ls 3 axes x1y1

plot \
     'clmc-obs-0.tec' using 1:7 title 'SOM1' with lines ls 1 axes x1y1, \
     'clmc-obs-0.tec' using 1:8 title 'SOM2' with lines ls 2 axes x1y1, \
     'clmc-obs-0.tec' using 1:9 title 'SOM3' with lines ls 3 axes x1y1, \
     'clmc-obs-0.tec' using 1:10 title 'SOM4' with lines ls 4 axes x1y1
unset multiplot

