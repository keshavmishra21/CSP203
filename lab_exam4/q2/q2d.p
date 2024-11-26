set terminal pdf
set output 'q2d.pdf'
set title 'Passengers on Monday'
set xlabel "Train Number"
set ylabel "Number of Passengers"

set style data histograms
set boxwidth 0.75
set key out top box
set style line 1 lc rgb "red"
set style fill solid border -1
set xtic rotate 45
plot 'data2d.dat' using 3:xtic(1) title 'Number of Passengers'
