set terminal postscript eps size 8, 6 enhanced color font 'Helvetica, 20' lw 1 
set output 'clmcn.eps'
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
set xrange[0:400]
set yrange[0:0.5]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mmol/m^3]' 
plot \
     'clmcn1-obs-0.tec' using 1:($5*1000) title 'Lit1-N=1' with lines ls 1, \
     'clmcn1-obs-0.tec' using 1:($7*1000) title 'Lit2-N=1' with lines ls 2, \
     'clmcn1-obs-0.tec' using 1:($9*1000) title 'Lit3-N=1' with lines ls 3, \
     'clmcn5-obs-0.tec' using 1:($5*1000) title 'Lit1-N=5' with lines ls 5, \
     'clmcn5-obs-0.tec' using 1:($7*1000) title 'Lit2-N=5' with lines ls 6, \
     'clmcn5-obs-0.tec' using 1:($9*1000) title 'Lit3-N=5' with lines ls 7

set label 1 '(b)' at graph 0.05, graph 0.9 
plot \
     'clmcn1-obs-0.tec' using 1:($11*1000) title 'SOM1-N=1' with lines ls 1, \
     'clmcn1-obs-0.tec' using 1:($12*1000) title 'SOM2-N=1' with lines ls 2, \
     'clmcn1-obs-0.tec' using 1:($13*1000) title 'SOM3-N=1' with lines ls 3, \
     'clmcn1-obs-0.tec' using 1:($14*1000) title 'SOM4-N=1' with lines ls 4, \
     'clmcn5-obs-0.tec' using 1:($11*1000) title 'SOM1-N=5' with lines ls 5, \
     'clmcn5-obs-0.tec' using 1:($12*1000) title 'SOM2-N=5' with lines ls 6, \
     'clmcn5-obs-0.tec' using 1:($13*1000) title 'SOM3-N=5' with lines ls 7, \
     'clmcn5-obs-0.tec' using 1:($14*1000) title 'SOM4-N=5' with lines ls 8

set label 1 '(c)' at graph 0.05, graph 0.9 
set yrange[0:1]
plot \
     'clmcn1-obs-0.tec' using 1:($3+$5+$7+$9+$11+$12+$13+$14)*1000 title 'C total-N=1' with lines ls 1, \
     'clmcn1-obs-0.tec' using 1:($5+$7+$9+$11+$12+$13+$14)*1000 title 'C left-N=1' with lines ls 2, \
     'clmcn1-obs-0.tec' using 1:($3*1000) title 'C mineralized-N=1' with lines ls 3, \
     'clmcn5-obs-0.tec' using 1:($3+$5+$7+$9+$11+$12+$13+$14)*1000 title 'C total-N=5' with lines ls 5, \
     'clmcn5-obs-0.tec' using 1:($5+$7+$9+$11+$12+$13+$14)*1000 title 'C left-N=5' with lines ls 6, \
     'clmcn5-obs-0.tec' using 1:($3*1000) title 'C mineralized-N=5' with lines ls 7

set label 1 '(d)' at graph 0.05, graph 0.9 
set yrange[0:0.05]
set ylabel 'Concentration [mmol/m^3]' 
plot \
     'clmcn1-obs-0.tec' using 1:($6+$8+$10+$11*0.071429+$12*0.071429+$13*0.085714+$14*0.085714+$4)*1e3 title 'N total-N=1' with lines ls 1, \
     'clmcn1-obs-0.tec' using 1:($6+$8+$10+$11*0.071429+$12*0.071429+$13*0.085714+$14*0.085714)*1e3 title 'N left-N=1' with lines ls 2, \
     'clmcn1-obs-0.tec' using 1:($4*1e3) title 'Mineral N-N=1' with lines ls 3, \
     'clmcn5-obs-0.tec' using 1:($6+$8+$10+$11*0.071429+$12*0.071429+$13*0.085714+$14*0.085714+$4)*1e3 title 'N total-N=5' with lines ls 5, \
     'clmcn5-obs-0.tec' using 1:($6+$8+$10+$11*0.071429+$12*0.071429+$13*0.085714+$14*0.085714)*1e3 title 'N left-N=5' with lines ls 6, \
     'clmcn5-obs-0.tec' using 1:($4*1e3) title 'Mineral N-N=5' with lines ls 7

unset multiplot

