set terminal pdf
set output 'q1.pdf'
set title 'Execution time vs Number of Threads'
set xlabel "Number of Threads"
set ylabel "Execution time"
set key out bottom
set xrange [0:18]
set yrange [0:2.5]
set xtics 2

set style line 1 lc rgb "red"
set style line 2 lc rgb "blue"
plot 'data1.dat' using 2:xtic(1) with lines linestyle 1 title 'Multiply', \
     'data1.dat' using 3 with lines linestyle 2 title 'Block Multiply'
