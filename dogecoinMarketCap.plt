set terminal png
set title "Market Cap Of DogeCoin"
set xlabel "Time"
set ylabel "Market Cap"
set xdata time 
set timefmt '%Y-%m-%d %H:%M:%S'
set format x '%Y-%m-%d %H:%M:%S'
set xtics rotate 
set style line 1 linecolor rgb '#123543' linetype 1 linewidth 1 pointtype 7 
set output 'dogecoinMarketCap.png'
plot "dogecoinMarketCap.dat" using 2:1 with linespoints ls 1
