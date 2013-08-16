set terminal postscript eps size 8, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'fig.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 1 lw 3 lc rgb "red"

set multiplot layout 1, 2 rowsfirst

set label 1 '(a) Acetate' at graph 0.05, graph 0.9 
set xrange[0:30]
set yrange[0:1.2]
set ylabel 'Concentration [mM]' 
plot \
     [0:30] 1.0-(1.0+0.5*0.02)/1000/0.25/0.02*1e-6*exp(1000*0.25*0.02*1.0e-6*x*86400)*1e3 title 'analytical' with lines ls 1, \
     'acemeg1-obs-0.tec' using 1:($3*1000) title 'PFLOTRAN' with lines ls 2

set label 1 '(b) biomass' at graph 0.05, graph 0.9 
set xrange[0:30]
set yrange[0:1e-2]
set ylabel 'Concentration [mol/m^3]' 
plot \
     [0:30] exp(1000*0.25*0.02*1.0e-6*x*86400)*1e-6 title 'analytical' with lines ls 1, \
     'acemeg1-obs-0.tec' using 1:7 title 'PFLOTRAN' with lines ls 2

unset multiplot

