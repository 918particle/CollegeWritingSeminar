set key box off
set lmargin 10
set bmargin 5
set xtics font "Arial,14"
set ytics 0,50,100 font "Arial,14"
set xlabel "Time" font "Arial,16" offset 0,-1
set ylabel "Cases" font "Arial,16" offset -2,0
set xrange [1:20]
set yrange [1:60]
a = 51
b = 0.1
f(x) = a*(1-exp(-b*x))
set terminal png
set output "outbreak2.png"
plot f(x) w l lc -1 lw 0.5