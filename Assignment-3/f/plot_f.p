set title "Monthly Sales of Products"
set xlabel "Products"
set ylabel "Sales (Units)"

set xtics rotate by -45
set style data histograms
set style histogram rowstacked
set style fill solid 1.0 border -1
set boxwidth 0.75

set yrange [0:*]

set key out top box
set datafile separator whitespace
set terminal pdf
set output 'plot_f.pdf'

plot 'data.dat' using 2:xtic(1) title 'January', \
     '' using 3 title 'February', \
     '' using 4 title 'March', \
     '' using 5 title 'April', \
     '' using 6 title 'May', \
     '' using 7 title 'June', \
     '' using 8 title 'July', \
     '' using 9 title 'August', \
     '' using 10 title 'September', \
     '' using 11 title 'October', \
     '' using 12 title 'November', \
     '' using 13 title 'December'