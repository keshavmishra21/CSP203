set title "Top 3 Products by Monthly Sales"
set xlabel "Month"
set ylabel "Units Sold"
set style data linespoints

set key out top box
set datafile separator ","
set terminal pdf
set output 'plot_h.pdf'

set style line 1 lc rgb "orange" lt 1 lw 2 pt 7 ps 1
set style line 2 lc rgb "green" lt 1 lw 2 pt 7 ps 1
set style line 3 lc rgb "purple" lt 1 lw 2 pt 7 ps 1

set xrange [0:13]
set xtics ("Jan" 1, "Feb" 2, "Mar" 3, "Apr" 4, "May" 5, "Jun" 6, "Jul" 7, "Aug" 8, "Sep" 9, "Oct" 10, "Nov" 11, "Dec" 12)

plot "data.dat" using 1:2 linestyle 1 title "Face Cream", \
     "data.dat" using 1:4 linestyle 2 title "Toothpaste", \
     "data.dat" using 1:5 linestyle 3 title "Bathing Soap"