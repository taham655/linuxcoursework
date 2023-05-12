set terminal png
set title "Volume in 24 hours"
set xlabel "Time"
set ylabel "Volume"
set xdata time 
set timefmt '%Y-%m-%d %H:%M:%S'
set format x '%Y-%m-%d %H:%M:%S'
set xtics rotate 
set style line 1 linecolor rgb '#005623' linetype 1 linewidth 1 pointtype 7 
set output 'bitcoinVolume.png'
plot "bitcoinVolume_24h.dat" using 2:1 with linespoints ls 1
