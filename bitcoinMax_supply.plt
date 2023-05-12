set terminal png
set title "Max Supply"
set xlabel "Time"
set ylabel "Volume"
set xdata time 
set timefmt '%Y-%m-%d %H:%M:%S'
set format x '%Y-%m-%d %H:%M:%S'
set xtics rotate 
set style line 1 linecolor rgb '#795623' linetype 1 linewidth 1 pointtype 7 
set output 'bitcoinMaxSupply.png'
plot "bitcoinMax_supply.dat" using 2:1 with linespoints ls 1
