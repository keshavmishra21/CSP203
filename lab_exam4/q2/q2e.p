set terminal pdf
set output 'q2e.pdf'
set title 'Distribution of Passengers'
set xlabel "Day"
set ylabel "Number of Passengers"
set style data histograms
set style histogram rowstacked
set boxwidth 0.75
set key out top box
set style line 1 lc rgb "red"
set style line 2 lc rgb "green"
set style line 3 lc rgb "blue"

set style fill solid border -1
set xtic rotate 45
plot 'data2e.dat' using 2:xtic(1) linestyle 1 title 'Sleeper', \
     'data2e.dat' using 3:xtic(1) linestyle 2 title 'General', \
     'data2e.dat' using 4:xtic(1) linestyle 3 title 'AC'
