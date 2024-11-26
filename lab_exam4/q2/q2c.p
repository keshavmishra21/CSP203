set terminal pdf
set output 'q2c.pdf'
set title 'Pie Chart of Passengers Distribution'
set key out top box
set style fill solid 1.0 border -1

a1 = (600/1547)*360
a2 = a1 + (365/1547)*360
a3 = a2 + (582/1547)*360

set obj 1 circle arc [0:a1] fc rgb "red"
set obj 2 circle arc [a1:a2] fc rgb "green"
set obj 3 circle arc [a2:a3] fc rgb "blue"

set obj 1 circle at 0, 0 size 1 front
set obj 2 circle at 0, 0 size 1 front
set obj 3 circle at 0, 0 size 1 front
