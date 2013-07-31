set terminal postscript eps size 4, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'ch42b.eps'
set style line 1 lt 1 lw 1 lc rgb "blue"
set style line 2 lt 2 lw 1 lc rgb "red"
set style line 3 lt 3 lw 1 lc rgb "green"
set style line 4 lt 4 lw 1 lc rgb "violet"
set style line 5 lt 5 lw 1 lc rgb "blue"
set style line 6 lt 6 lw 1 lc rgb "red"
set style line 7 lt 7 lw 1 lc rgb "green"
set style line 8 lt 8 lw 1 lc rgb "violet"

set multiplot layout 1, 1 rowsfirst

set xrange[0:2.2]
set yrange[0:2]
set xlabel 'C (mM)' 
set ylabel 'Z [m]' 
plot \
     'ch42-000.tec' using ($6*1000):3 title 't =   0 d' with lines ls 1 axes x1y1, \
     'ch42-001.tec' using ($6*1000):3 title 't = 0.1 d' with lines ls 2 axes x1y1, \
     'ch42-002.tec' using ($6*1000):3 title 't = 0.2 d' with lines ls 3 axes x1y1, \
     'ch42b-001.tec' using ($6*1000):3 title 't = 0.1 d' with lines ls 6 axes x1y1, \
     'ch42b-002.tec' using ($6*1000):3 title 't = 0.2 d' with lines ls 7 axes x1y1

unset multiplot

