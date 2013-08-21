set terminal postscript eps size 8, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'lit1cn.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 2 lw 3 lc rgb "red"
set style line 3 lt 3 lw 1 lc rgb "blue"
set style line 4 lt 4 lw 1 lc rgb "red"

set multiplot layout 1, 2 rowsfirst

set xrange[0:10.0]
set yrange[0:0.3]
set xlabel 'Time [d]' 
set ylabel 'Concentration (mmol/m3)' 

plot \
     'lit1cn1-obs-0.tec' using 1:($5*1000) title 'Lit1C (N=1)' with lines ls 1 axes x1y1, \
     'lit1cn1-obs-0.tec' using 1:($7*1000) title 'SOM1 (N=1)' with lines ls 2 axes x1y1, \
     'lit1cn8-obs-0.tec' using 1:($5*1000) title 'Lit1C (N=8)' with lines ls 3 axes x1y1, \
     'lit1cn8-obs-0.tec' using 1:($7*1000) title 'SOM1 (N=8)' with lines ls 4 axes x1y1

set yrange[0:10]
set ylabel 'Concentration (umol/m3)' 
plot \
     'lit1cn1-obs-0.tec' using 1:($4*1e6) title 'N (N=1)' with lines ls 1 axes x1y1, \
     'lit1cn1-obs-0.tec' using 1:($6*1e6) title 'Lit1N (N=1)' with lines ls 2 axes x1y1, \
     'lit1cn8-obs-0.tec' using 1:($4*1e6) title 'N (N=8)' with lines ls 3 axes x1y1, \
     'lit1cn8-obs-0.tec' using 1:($6*1e6) title 'Lit1N (N=8)' with lines ls 4 axes x1y1
unset multiplot

