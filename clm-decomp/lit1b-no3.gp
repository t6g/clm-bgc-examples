set terminal postscript eps size 4, 6 enhanced color font 'Helvetica, 20' lw 1 
set output 'lit1b-no3.eps'
#set terminal pngcairo size 400,600 enhanced font 'Verdana,10'
#set output 'lit1b-no3.png'

set style line 1 lt 1 lw 3 lc rgb "blue"
set style line 2 lt 2 lw 3 lc rgb "red"
set style line 3 lt 3 lw 3 lc rgb "cyan"

set multiplot layout 2, 1 rowsfirst

set xrange[0:5.0]
set yrange[0:0.2]
set xlabel 'Time [d]' 
set ylabel 'Concentration (mmol/m3)' 
set format y "%.1t";
set ytics (0, 0.1, 0.2)
#set boxwidth 0.8
#set tmargin 2

plot \
     'lit1b-no3-obs-0.tec' using 1:($5*1000) title 'Lit1C' with lines ls 1 axes x1y1, \
     'lit1b-no3-obs-0.tec' using 1:($7*1000) title 'SOM1' with lines ls 2 axes x1y1, \
     'lit1b-no3-obs-0.tec' using 1:($4*1000*250) title 'CO2' with lines ls 3 axes x1y1

set ytics (0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0)
set yrange[0:6]
set boxwidth 0.8
set ylabel 'Concentration (umol/m3)' 
plot \
     'lit1b-no3-obs-0.tec' using 1:($2*1e6*250) title 'NH4+ ' with lines ls 1 axes x1y1, \
     'lit1b-no3-obs-0.tec' using 1:($3*1e6*250) title 'NO3- ' with lines ls 2 axes x1y1, \
     'lit1b-no3-obs-0.tec' using 1:($6*1e6) title 'Lit1N' with lines ls 3 axes x1y1
unset multiplot

