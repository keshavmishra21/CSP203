set title "Monthly Sales of Different Products"
set xlabel "Month"
set ylabel "Units Sold"

set style line 1 lc rgb "red" lt 1 lw 2 pt 7 ps 1   # Facecream
set style line 2 lc rgb "blue" lt 1 lw 2 pt 7 ps 1  # Facewash
set style line 3 lc rgb "green" lt 1 lw 2 pt 7 ps 1 # Toothpaste
set style line 4 lc rgb "orange" lt 1 lw 2 pt 7 ps 1 # Bathingsoap
set style line 5 lc rgb "purple" lt 1 lw 2 pt 7 ps 1 # Shampoo
set style line 6 lc rgb "brown" lt 1 lw 2 pt 7 ps 1  # Moisturizer

set xrange [0:13]
set xtics ("Jan" 1, "Feb" 2, "Mar" 3, "Apr" 4, "May" 5, "Jun" 6, "Jul" 7, "Aug" 8, "Sep" 9, "Oct" 10, "Nov" 11, "Dec" 12)

set key out top box
set datafile separator ","
set terminal pdf
set output 'plot_b.pdf'

plot "data.dat" using 2 with linespoints linestyle 1 title "Facecream", \
     "data.dat" using 3 with linespoints linestyle 2 title "Facewash", \
     "data.dat" using 4 with linespoints linestyle 3 title "Toothpaste", \
     "data.dat" using 5 with linespoints linestyle 4 title "Bathingsoap", \
     "data.dat" using 6 with linespoints linestyle 5 title "Shampoo", \
     "data.dat" using 7 with linespoints linestyle 6 title "Moisturizer"