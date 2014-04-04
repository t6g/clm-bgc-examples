set terminal postscript eps size 5, 8 enhanced color font 'Helvetica, 20' lw 1 
set output 'mt2a.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 1 lw 3 lc rgb "red"
set style line 3 lt 1 lw 3 lc rgb "green"

set multiplot layout 2, 1 rowsfirst

set xrange[0:10]
#set yrange[0:0.001]
set key left top 
set ylabel 'Concentration [M]' 
#set label 1 '(a) N speciation' at graph 0.65, graph 0.9

plot 'mt2-obs-0.tec' using 1:($4*1000) title 'CO2(aq)' with lines ls 1, \
     'mt2-obs-0.tec' using 1:(($5-1)/250*1000) title 'CO2(g)' with lines ls 2, \
     'mt2-obs-0.tec' using 1:($4*1000+($5-1)/250*1000) title 'total' with lines ls 3

set xlabel 'Time [d]'
set key bottom right
set label 1 '(b) N sum' at graph 0.65, graph 0.9
plot 'mt2-obs-0.tec' using 1:($2) title 'pH' with lines ls 1

unset multiplot

