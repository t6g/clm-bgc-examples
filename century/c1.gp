set terminal postscript eps size 8, 6 enhanced color font 'Helvetica, 20' lw 1 
set output 'c1.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 1 lw 3 lc rgb "red"
set style line 3 lt 1 lw 3 lc rgb "green"
set style line 4 lt 1 lw 3 lc rgb "violetn"
set style line 5 lt 2 lw 1 lc rgb "blue"
set style line 6 lt 2 lw 1 lc rgb "red"
set style line 7 lt 2 lw 1 lc rgb "green"
set style line 8 lt 2 lw 1 lc rgb "violet"

set multiplot layout 2, 2 rowsfirst

set label 1 '(a)' at graph 0.05, graph 0.9 
set xrange[0:10]
set yrange[0:0.5]
set xlabel 'Time [y]' 
set ylabel 'Concentration [mmol/m^3]' 
plot \
     'c1-obs-0.tec' using 1:($5*1000) title 'Lit1C' with lines ls 1, \
     'c1-obs-0.tec' using 1:($7*1000) title 'Lit2C' with lines ls 2, \
     'c1-obs-0.tec' using 1:($9*1000) title 'Lit3C' with lines ls 3

set label 1 '(b)' at graph 0.05, graph 0.9 
plot \
     'c1-obs-0.tec' using 1:($11*1000) title 'SOM1' with lines ls 1, \
     'c1-obs-0.tec' using 1:($12*1000) title 'SOM2' with lines ls 2, \
     'c1-obs-0.tec' using 1:($13*1000) title 'SOM3' with lines ls 3

set label 1 '(c)' at graph 0.05, graph 0.9 
set yrange[0:1]
plot \
     'c1-obs-0.tec' using 1:($3+$5+$7+$9+$11+$12+$13)*1000 title 'C total' with lines ls 1, \
     'c1-obs-0.tec' using 1:($5+$7+$9+$11+$12+$13)*1000 title 'C left' with lines ls 2, \
     'c1-obs-0.tec' using 1:($3*1000) title 'C respired' with lines ls 3

set label 1 '(d)' at graph 0.05, graph 0.9 
set yrange[0:0.05]
set ylabel 'Concentration [mmol/m^3]' 
plot \
     'c1-obs-0.tec' using 1:($4*1e3) title 'Mineral N' with lines ls 1

unset multiplot

