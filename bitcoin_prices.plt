set terminal png 
set output "plot-bitcoin-data.png"
set datafile separator ","
set title "Price of  Bitcoin change in 3 days"
set xlabel "Time"
set xdata time 
set timefmt '%Y-%m-%d %H:%M:%S'
set format x '%Y-%m-%d %H:%M:%S'
set xtics rotate 
set ylabel "Price(Bitcoin)"
set autoscale y
plot "prices.csv" using 1:(timecolumn(1,"%Y-%m-%d %H:%M:%S")):2 t "inbound" w linespoints

