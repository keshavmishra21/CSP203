set title "Monthly Sales Comparison: Shampoo vs Moisturizer"
set xlabel "Month"
set ylabel "Sales"
set style data histogram
set style histogram clustered gap 1
set style fill solid 1.0 border -1
set boxwidth 0.75

set style line 1 lc rgb "blue"
set style line 2 lc rgb "green"

set xtics ("Jan" 1, "Feb" 2, "Mar" 3, "Apr" 4, "May" 5, "Jun" 6, "Jul" 7, "Aug" 8, "Sep" 9, "Oct" 10, "Nov" 11, "Dec" 12)

set key out top box
set datafile separator ","
set terminal pdf
set output 'plot_g.pdf'

plot "data.dat" using 6 title "Shampoo" ls 1, \
     '' using 7 title "Moisturizer" ls 2