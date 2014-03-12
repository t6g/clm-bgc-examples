set terminal postscript eps size 8, 12 enhanced color font 'Helvetica, 20' lw 1 
set output 'clm-microbe-5.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 1 lw 3 lc rgb "red"
set style line 3 lt 1 lw 3 lc rgb "green"
set style line 4 lt 1 lw 3 lc rgb "violet"
set style line 5 lt 1 lw 3 lc rgb "magenta"

set multiplot layout 4, 2 rowsfirst

set label 1 '(a)' at graph 0.05, graph 0.9 
set xrange[0:400]
#set yrange[0:0.5]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mol/m^3]' 
plot \
     'clm-microbe-5-obs-0.tec' using 1:($23*1) title 'Lit1' with lines ls 1, \
     'clm-microbe-5-obs-0.tec' using 1:($25*1) title 'Lit2' with lines ls 2, \
     'clm-microbe-5-obs-0.tec' using 1:($27*1) title 'Lit3' with lines ls 3

set label 1 '(b)' at graph 0.05, graph 0.9 
plot \
     'clm-microbe-5-obs-0.tec' using 1:($29*1) title 'SOM1' with lines ls 1, \
     'clm-microbe-5-obs-0.tec' using 1:($30*1) title 'SOM2' with lines ls 2, \
     'clm-microbe-5-obs-0.tec' using 1:($31*1) title 'SOM3' with lines ls 3, \
     'clm-microbe-5-obs-0.tec' using 1:($32*1) title 'SOM4' with lines ls 4

set label 1 '(c)' at graph 0.05, graph 0.9 
#set yrange[0:1]
plot 'clm-microbe-5-obs-0.tec' using 1:($3*250.0) title 'CO2' with lines ls 1

set label 1 '(d)' at graph 0.05, graph 0.9 
#set yrange[0:0.05]
set ylabel 'Concentration [mol/m^3]' 
plot \
     'clm-microbe-5-obs-0.tec' using 1:($10*250.0) title 'NH4+' with lines ls 1, \
     'clm-microbe-5-obs-0.tec' using 1:($6*250.0) title 'NO3-' with lines ls 2

set label 1 '(e)' at graph 0.05, graph 0.9 
#set yrange[0:0.5]
plot \
     'clm-microbe-5-obs-0.tec' using 1:($33*1) title 'Bacteria' with lines ls 1, \
     'clm-microbe-5-obs-0.tec' using 1:($34*1) title 'Fungi' with lines ls 2, \
     'clm-microbe-5-obs-0.tec' using 1:($35*1) title 'Acemeg' with lines ls 3, \
     'clm-microbe-5-obs-0.tec' using 1:($36*1) title 'Hydmeg' with lines ls 4

set label 1 '(f)' at graph 0.05, graph 0.9 
#set yrange[0:1]
#set yrange[0:0.05]
set ylabel 'Concentration [mmol/m^3]' 
plot \
     'clm-microbe-5-obs-0.tec' using 1:($5*250) title 'DOM' with lines ls 1, \
     'clm-microbe-5-obs-0.tec' using 1:($21*250) title 'Acetate-' with lines ls 2, \
     'clm-microbe-5-obs-0.tec' using 1:($22*250) title 'H2' with lines ls 3

set label 1 '(g)' at graph 0.05, graph 0.9 
#unset yrange
plot \
     'clm-microbe-5-obs-0.tec' using 1:($35*1) title 'Acemeg' with lines ls 1, \
     'clm-microbe-5-obs-0.tec' using 1:($36*1) title 'Hydmeg' with lines ls 2

set label 1 '(h)' at graph 0.05, graph 0.9 
#set yrange[0:0.05]
#unset yrange
set ylabel 'Concentration [mol/m^3]' 
plot \
     'clm-microbe-5-obs-0.tec' using 1:($4*250) title 'CH4' with lines ls 1

unset multiplot

