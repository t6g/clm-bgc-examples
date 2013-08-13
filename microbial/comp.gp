set terminal postscript eps size 8, 6 enhanced color font 'Helvetica, 20' lw 1 
set output 'comp.eps'
set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 1 lw 3 lc rgb "red"
set style line 3 lt 1 lw 3 lc rgb "green"
set style line 4 lt 1 lw 3 lc rgb "violet"

set multiplot layout 2, 2 rowsfirst

set label 1 '(a)' at graph 0.05, graph 0.9 
set xrange[0:30]
set yrange[5:10]
set xlabel 'Time [d]' 
set ylabel 'pH' 
plot \
     'microbial-obs-0.tec' using 1:2 title 'pH' with lines ls 1

set label 1 '(b)' at graph 0.05, graph 0.9 
set ylabel 'Concentration [mM]' 
set yrange[0:1]
plot \
     'microbial-obs-0.tec' using 1:($3*1000) title 'LabileC' with lines ls 1, \
     'microbial-obs-0.tec' using 1:($4*1000) title 'Acetate' with lines ls 2, \
     'microbial-obs-0.tec' using 1:($5*1000) title 'H2' with lines ls 3

set label 1 '(c)' at graph 0.05, graph 0.9 
set yrange[0:1]
plot \
     'microbial-obs-0.tec' using 1:($7*1000-5) title 'HCO3-' with lines ls 1, \
     'microbial-obs-0.tec' using 1:($8*1000) title 'CH4' with lines ls 2

set label 1 '(d)' at graph 0.05, graph 0.9 
set yrange[0:1]
plot \
     'microbial-obs-0.tec' using 1:($10*1e3) title 'AcMeg' with lines ls 1, \
     'microbial-obs-0.tec' using 1:($11*1e3) title 'H2Meg' with lines ls 2

unset multiplot

