set title "Monthly Sales of Facecream"
set xlabel "Month"
set ylabel "Units Sold"
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.8

set style line 1 lc rgb "red"

set xtics ("Jan" 1, "Feb" 2, "Mar" 3, "Apr" 4, "May" 5, "Jun" 6, "Jul" 7, "Aug" 8, "Sep" 9, "Oct" 10, "Nov" 11, "Dec" 12)

set key out top box
set datafile separator ","
set terminal pdf
set output 'plot_c.pdf'

plot "data.dat" using 2 title "Facecream" linestyle 1