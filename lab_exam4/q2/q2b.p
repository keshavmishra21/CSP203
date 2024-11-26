set terminal pdf
set output 'q2b.pdf'
set title 'Passengers Class Wise'
set xlabel "Day"
set ylabel "Number of Passengers"

set key out top box

set style line 1 lc rgb "red" lt 1 lw 2 pt 7 ps 1.5
set style line 2 lc rgb "green" lt 1 lw 2 pt 7 ps 1.5
set style line 3 lc rgb "blue" lt 1 lw 2 pt 7 ps 1.5

plot 'data2b.dat' using 2:xtic(1) with linespoints linestyle 1 title 'General' , \
     'data2b.dat' using 3:xtic(1) with linespoints linestyle 2 title 'Sleeper' , \
     'data2b.dat' using 4:xtic(1) with linespoints linestyle 3 title 'AC'
