set terminal postscript eps size 8, 6 enhanced color font 'Helvetica, 20' lw 1 
set output 'comp.eps'
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
     'clmcn0-obs-0.tec' using 1: ($9*1000) title 'Lit1' with lines ls 1, \
     'clmcn0-obs-0.tec' using 1:($10*1000) title 'Lit2' with lines ls 2, \
     'clmcn0-obs-0.tec' using 1:($11*1000) title 'Lit3' with lines ls 3, \
     'clmcn1-obs-0.tec' using 1: ($9*1000) title 'Lit1 (plant)' with lines ls 5, \
     'clmcn1-obs-0.tec' using 1:($10*1000) title 'Lit2 (plant)' with lines ls 6, \
     'clmcn1-obs-0.tec' using 1:($11*1000) title 'Lit3 (plant)' with lines ls 7

set label 1 '(b)' at graph 0.05, graph 0.9 
plot \
     'clmcn0-obs-0.tec' using 1:($5*1000) title 'SOM1' with lines ls 1, \
     'clmcn0-obs-0.tec' using 1:($6*1000) title 'SOM2' with lines ls 2, \
     'clmcn0-obs-0.tec' using 1:($7*1000) title 'SOM3' with lines ls 3, \
     'clmcn0-obs-0.tec' using 1:($8*1000) title 'SOM4' with lines ls 4, \
     'clmcn1-obs-0.tec' using 1:($5*1000) title 'SOM1 (plant)' with lines ls 5, \
     'clmcn1-obs-0.tec' using 1:($6*1000) title 'SOM2 (plant)' with lines ls 6, \
     'clmcn1-obs-0.tec' using 1:($7*1000) title 'SOM3 (plant)' with lines ls 7, \
     'clmcn1-obs-0.tec' using 1:($8*1000) title 'SOM4 (plant)' with lines ls 8

set label 1 '(c)' at graph 0.05, graph 0.9 
set yrange[0:1]
plot \
     'clmcn0-obs-0.tec' using 1:($4+$5+$6+$7+$8+$9+$10+$11)*1000 title 'C total' with lines ls 1, \
     'clmcn0-obs-0.tec' using 1:($5+$6+$7+$8+$9+$10+$11)*1000 title 'C left' with lines ls 2, \
     'clmcn0-obs-0.tec' using 1:($4*1000) title 'C mineralized' with lines ls 3, \
     'clmcn1-obs-0.tec' using 1:($4+$5+$6+$7+$8+$9+$10+$11)*1000 title 'C total (plant)' with lines ls 5, \
     'clmcn1-obs-0.tec' using 1:($5+$6+$7+$8+$9+$10+$11)*1000 title 'C left (plant)' with lines ls 6, \
     'clmcn1-obs-0.tec' using 1:($4*1000) title 'C mineralized (plant)' with lines ls 7

set label 1 '(d)' at graph 0.05, graph 0.9 
set yrange[0:0.05]
set ylabel 'Concentration [mmol/m^3]' 
plot \
     'clmcn0-obs-0.tec' using 1:($12+$13+$14+$5*0.071429+$6*0.071429+$7*0.085714+$8*0.085714+$3)*1e3 title 'N total' with lines ls 1, \
     'clmcn0-obs-0.tec' using 1:($12+$13+$14+$5*0.071429+$6*0.071429+$7*0.085714+$8*0.085714)*1e3 title 'N left' with lines ls 2, \
     'clmcn0-obs-0.tec' using 1:($3*1e3) title 'Mineral N' with lines ls 3, \
     'clmcn1-obs-0.tec' using 1:($12+$13+$14+$15+$5*0.071429+$6*0.071429+$7*0.085714+$8*0.085714+$3)*1e3 title 'N total (plant)' with lines ls 5, \
     'clmcn1-obs-0.tec' using 1:($12+$13+$14+$5*0.071429+$6*0.071429+$7*0.085714+$8*0.085714)*1e3 title 'N left (plant)' with lines ls 6, \
     'clmcn1-obs-0.tec' using 1:($15*1e3) title 'Plant N (plant)' with lines ls 8, \
     'clmcn1-obs-0.tec' using 1:($3*1e3) title 'Mineral N (plant)' with lines ls 7

unset multiplot

