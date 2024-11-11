set terminal pdf
set output 'marks_linesplot.pdf'
set title 'Marks of Students in Courses'
set xlabel "Courses"
set ylabel "Marks"
set key out top box
plot 'marks1.data' using 2:xtic(1) with linespoints title 'Student1', \
     'marks1.data' using 3:xtic(1) with linespoints title 'Student2', \
     'marks1.data' using 4:xtic(1) with linespoints title 'Student3'
