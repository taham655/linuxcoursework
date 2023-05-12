#!/bin/bash
function bitcoinPrice(){
/opt/lampp/bin/mysql -u root -e "USE test; SELECT price, TimeStamp FROM bitcoin WHERE coin = 'Bitcoin';" --skip-column-names > bitcoinPrice.dat
gnuplot <<EOF
set title "Price of bitcoin"
set xlabel "Time"
set ylabel "Price"
set xdata time 
set timefmt '%Y-%m-%d %H:%M:%S'
set format x '%m/%d %H:%M'
set xtics rotate 
set style line 1 linecolor rgb '#ff0000' linetype 1 linewidth 1 pointtype 7 pointsize 1
set output 'bitcoinPrices.png'
plot 'bitcoinPrice.dat' using 2:1 with linespoints ls 1
EOF
}
