set terminal pdf
set output 'q2a.pdf'
set title 'Passengers Day Wise'
set xlabel "Day"
set ylabel "Number of Passengers"

set style data histograms
set boxwidth 0.75
set key out top box
set style line 1 lc rgb "red"
set style fill solid border -1
set xtic rotate 45
plot 'data2.dat' using 3:xtic(2) title 'Number of Passengers'
