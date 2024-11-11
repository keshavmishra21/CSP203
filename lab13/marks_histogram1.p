set terminal pdf
set output 'marks_histogram.pdf'
set title 'Marks of Students in Courses'
set xlabel "Courses"
set ylabel "Marks"
set key out top box
set style data histograms
set style fill solid
plot 'marks1.data' using 2:xtic(1) title 'Student1', \
     'marks1.data' using 3:xtic(1) title 'Student2', \
     'marks1.data' using 4:xtic(1) title 'Student3'