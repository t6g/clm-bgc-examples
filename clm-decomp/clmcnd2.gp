set terminal postscript eps size 8, 6 enhanced color font 'Helvetica, 20' lw 1 
set output 'clmcnd2.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 1 lw 3 lc rgb "red"
set style line 3 lt 1 lw 3 lc rgb "green"
set style line 4 lt 1 lw 3 lc rgb "violetn"

set multiplot layout 2, 2 rowsfirst

set label 1 '(a)' at graph 0.05, graph 0.9 
set xrange[0:400]
set yrange[0:0.5]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mmol/m^3]' 
plot \
     'clmcnd2-obs-0.tec' using 1:($9) title 'Lit1' with lines ls 1, \
     'clmcnd2-obs-0.tec' using 1:($10) title 'Lit2' with lines ls 2, \
     'clmcnd2-obs-0.tec' using 1:($11) title 'Li3' with lines ls 3

set label 1 '(b)' at graph 0.05, graph 0.9 
plot \
     'clmcnd2-obs-0.tec' using 1:($5) title 'SOM1' with lines ls 1, \
     'clmcnd2-obs-0.tec' using 1:($6) title 'SOM2' with lines ls 2, \
     'clmcnd2-obs-0.tec' using 1:($7) title 'SOM3' with lines ls 3, \
     'clmcnd2-obs-0.tec' using 1:($8) title 'SOM4' with lines ls 4

set label 1 '(c)' at graph 0.05, graph 0.9 
set yrange[0:1]
plot \
     'clmcnd2-obs-0.tec' using 1:($4*250+$5+$6+$7+$8+$9+$10+$11) title 'C total' with lines ls 1, \
     'clmcnd2-obs-0.tec' using 1:($5+$6+$7+$8+$9+$10+$11) title 'C left' with lines ls 2, \
     'clmcnd2-obs-0.tec' using 1:($4*250) title 'CO2' with lines ls 3

set label 1 '(d)' at graph 0.05, graph 0.9 
set yrange[0:0.04]
set ylabel 'Concentration [mmol/m^3]' 
plot \
     'clmcnd2-obs-0.tec' using 1:($12+$13+$14+$5*0.071429+$6*0.071429+$7*0.085714+$8*0.085714+$2*250+$3*250) title 'N total' with lines ls 1, \
     'clmcnd2-obs-0.tec' using 1:($12+$13+$14+$5*0.071429+$6*0.071429+$7*0.085714+$8*0.085714) title 'N left' with lines ls 2, \
     'clmcnd2-obs-0.tec' using 1:($2*250) title 'NH4+' with lines ls 3, \
     'clmcnd2-obs-0.tec' using 1:($3*250) title 'NO3-' with lines ls 4

set size 0.25,0.2
set origin 0.6,0.08
set xrange [0:1.2]
set yrange [0:1.2]
set xtics 0.5
set ytics 0.5
unset xlabel
unset ylabel
unset label
unset key
plot \
     'clmcnd2-obs-0.tec' using 1:($2*1e3*250) title 'NH4+' with linespoints ls 3, \
     'clmcnd2-obs-0.tec' using 1:($3*1e3*250) title 'NO3-' with linespoints ls 4

unset multiplot

