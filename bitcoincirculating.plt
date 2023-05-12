set terminal png
set title "Total Circulation"
set xlabel "Time"
set ylabel "Circulation"
set xdata time 
set timefmt '%Y-%m-%d %H:%M:%S'
set format x '%Y-%m-%d %H:%M:%S'
set xtics rotate 
set style line 1 linecolor rgb '#561268' linetype 1 linewidth 1 pointtype 7 
set output 'bitcoincirculating.png'
plot "bitcoincirculating.dat" using 2:1 with linespoints ls 1
