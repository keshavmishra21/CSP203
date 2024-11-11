set title "Monthly Sales of Bathingsoap"
set xlabel "Month"
set ylabel "Units Sold"

set style line 1 lc rgb "orange" lt 1 lw 2 pt 7 ps 1

set xrange [0:13]
set xtics ("Jan" 1, "Feb" 2, "Mar" 3, "Apr" 4, "May" 5, "Jun" 6, "Jul" 7, "Aug" 8, "Sep" 9, "Oct" 10, "Nov" 11, "Dec" 12)

set key out top box
set datafile separator ","
set terminal pdf
set output 'plot_d.pdf'

plot "data.dat" using 5 with linespoints linestyle 1 title "Bathingsoap"