set terminal png
set title "Price of bitcoin"
set xlabel "Time"
set ylabel "Price"
set xdata time 
set timefmt '%Y-%m-%d %H:%M:%S'
set format x '%Y-%m-%d %H:%M:%S'
set xtics rotate 
set style line 1 linecolor rgb '#ff0000' linetype 1 linewidth 1 pointtype 7 
set output 'bitcoinPrice1.png'
plot "bitcoinPrice.dat" using 2:1 with linespoints ls 1
