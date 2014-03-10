set terminal postscript eps size 8, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'som1b.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 2 lw 3 lc rgb "red"
set style line 3 lt 3 lw 3 lc rgb "cyan"

set multiplot layout 1, 2 rowsfirst

set xrange[0:50.0]
set yrange[0:1.0]
set xlabel 'Time [d]' 
set ylabel 'Concentration (mmol/m3)' 
#set logscale y

plot \
     'som1b-obs-0.tec' using 1:($5*1000) title 'SOM1' with lines ls 1 axes x1y1, \
     'som1b-obs-0.tec' using 1:($6*1000) title 'SOM2' with lines ls 2 axes x1y1, \
     'som1b-obs-0.tec' using 1:($4*1000*250) title 'CO2' with lines ls 3 axes x1y1

set yrange[0:6]
set ylabel 'Concentration (umol/m3)' 
plot \
     'som1b-obs-0.tec' using 1:($2*1e6*250) title 'NH4+' with lines ls 1 axes x1y1, \
     'som1b-obs-0.tec' using 1:($3*1e6*250) title 'NO3-' with lines ls 2 axes x1y1

unset multiplot

