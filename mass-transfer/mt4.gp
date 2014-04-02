set terminal postscript eps size 5, 8 enhanced color font 'Helvetica, 20' lw 1 
set output 'mt4.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 1 lw 3 lc rgb "red"
set style line 3 lt 1 lw 3 lc rgb "green"

set multiplot layout 2, 1 rowsfirst

set xrange[0:10]
set yrange[0:0.001]
set key left top 
set ylabel 'Concentration [M]' 
set label 1 '(a) N speciation' at graph 0.65, graph 0.9

plot 'mt0-obs-0.tec' using 1:($5) title 'NH4+ (case 0)' with points, \
     'mt1-obs-0.tec' using 1:($5) title 'NH4+ (case 1)' with points, \
     'mt1-obs-0.tec' using 1:($8) title 'NH3(aq) (case 1)' with points, \
     'mt4-obs-0.tec' using 1:($5) title 'NH4+ (case 2)' with lines ls 1, \
     'mt4-obs-0.tec' using 1:($8) title 'NH3(aq) (case 2)' with lines ls 2, \
     'mt4-obs-0.tec' using 1:($9/250) title 'NH4S (case 2)' with lines ls 3


set xlabel 'Time [d]'
set key bottom right
set label 1 '(b) N sum' at graph 0.65, graph 0.9
plot 'mt0-obs-0.tec' using 1:($5) title 'case 0 (NH4+)' with points, \
     'mt1-obs-0.tec' using 1:($5+$8) title 'case 1 (NH4+ + NH3(aq))' with lines ls 1, \
     'mt4-obs-0.tec' using 1:($5+$8) title 'case 2 (NH4+ + NH3(aq))' with points, \
     'mt4-obs-0.tec' using 1:($5+$8+$9/250) title 'case 2 (NH4+ + NH3(aq) + NH4S)' with lines ls 2

unset multiplot

