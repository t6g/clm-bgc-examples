set terminal postscript eps size 8, 3 enhanced color font 'Helvetica, 20' lw 1 
set output 'dom1-no3.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 2 lw 3 lc rgb "red"
set style line 3 lt 3 lw 3 lc rgb "cyan"

set multiplot layout 1, 2 rowsfirst

set xrange[0:100]
set yrange[0:1]
set xlabel 'Time [d]' 
set ylabel 'Concentration [mol/m^3]' 

plot 'dom1-obs-0.tec' using 1:($6) title 'SOM1' with lines ls 1, \
     'dom1-obs-0.tec' using 1:($7) title 'SOM2/SOM3' with lines ls 2, \
     'dom1-obs-0.tec' using 1:($9) title 'SOM4' with lines ls 3, \
     'dom1-obs-0.tec' using 1:($10) title 'Bacteria/Fungi' with lines ls 4, \
     'dom1-obs-0.tec' using 1:($5*250) title 'DOM' with lines ls 5, \
     'dom1-obs-0.tec' using 1:($4*250) title 'CO2' with lines ls 6

set yrange[0:0.02]
plot \
     'dom1-obs-0.tec' using 1:($3*250) title 'NO3-' with lines ls 1, \
     'dom1-obs-0.tec' using 1:($2*250) title 'NH4+' with lines ls 2

unset multiplot

