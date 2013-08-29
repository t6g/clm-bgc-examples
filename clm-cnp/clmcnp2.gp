set terminal postscript eps size 8, 9 enhanced color font 'Helvetica, 20' lw 1 
set output 'clmcnp2.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 1 lw 3 lc rgb "red"
set style line 3 lt 1 lw 3 lc rgb "green"
set style line 4 lt 1 lw 3 lc rgb "violetn"
set style line 5 lt 2 lw 1 lc rgb "blue"
set style line 6 lt 2 lw 1 lc rgb "red"
set style line 7 lt 2 lw 1 lc rgb "green"
set style line 8 lt 2 lw 1 lc rgb "violet"

set multiplot layout 3, 2 rowsfirst

set label 1 '(a)' at graph 0.05, graph 0.9 
set xrange[0:400]
set yrange[0:0.5]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mol/m^3]' 
plot \
     'clmcnp2-obs-0.tec' using 1:($5) title 'Lit1C' with lines ls 1, \
     'clmcnp2-obs-0.tec' using 1:($7) title 'Lit2C' with lines ls 2, \
     'clmcnp2-obs-0.tec' using 1:($9) title 'Lit3C' with lines ls 3

set label 1 '(b)' at graph 0.05, graph 0.9 
plot \
     'clmcnp2-obs-0.tec' using 1:($11) title 'SOM1' with lines ls 1, \
     'clmcnp2-obs-0.tec' using 1:($12) title 'SOM2' with lines ls 2, \
     'clmcnp2-obs-0.tec' using 1:($13) title 'SOM3' with lines ls 3, \
     'clmcnp2-obs-0.tec' using 1:($14) title 'SOM4' with lines ls 4

set label 1 '(c)' at graph 0.05, graph 0.9 
set yrange[0:1]
plot \
     'clmcnp2-obs-0.tec' using 1:($3+$5+$7+$9+$11+$12+$13+$14) title 'C total-N' with lines ls 1, \
     'clmcnp2-obs-0.tec' using 1:($5+$7+$9+$11+$12+$13+$14) title 'C left' with lines ls 2, \
     'clmcnp2-obs-0.tec' using 1:($3) title 'C mineralized' with lines ls 3

set label 1 '(d)' at graph 0.05, graph 0.9 
set yrange[0:0.05]
set ylabel 'Concentration [mol/m^3]' 
plot \
     'clmcnp2-obs-0.tec' using 1:($6+$8+$10+$11*0.071429+$12*0.071429+$13*0.085714+$14*0.085714+$4) title 'N total' with lines ls 1, \
     'clmcnp2-obs-0.tec' using 1:($6+$8+$10+$11*0.071429+$12*0.071429+$13*0.085714+$14*0.085714) title 'N left' with lines ls 2, \
     'clmcnp2-obs-0.tec' using 1:($4) title 'Mineral N' with lines ls 3

set label 1 '(e)' at graph 0.05, graph 0.9 
set yrange[0:0.002]
set ylabel 'Concentration [mol/m^3]' 
plot \
     'clmcnp2-obs-0.tec' using 1:($16+$17+$18+$19+($11+$12+$13+$14)*12.0/350.0/30.97) title 'P total' with lines ls 1, \
     'clmcnp2-obs-0.tec' using 1:($17+$18+$19+($11+$12+$13+$14)*12.0/350.0/30.97) title 'P left' with lines ls 2, \
     'clmcnp2-obs-0.tec' using 1:($16) title 'Mineral P' with lines ls 3

unset multiplot

