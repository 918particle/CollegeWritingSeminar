set key box off
set lmargin 10
set bmargin 5
set xtics font "Arial,20"
set ytics font "Arial,20"
set xlabel "Time (days) since Outbreak" font "Arial,22" offset 0,-1
set ylabel "Number of New Cases" font "Arial,22" offset -2,0
set xrange [1:20]
set yrange [1:60]
set grid
a = 51
b = 0.1
f(x) = a*(1-exp(-b*x))
set terminal png
set output "outbreak.png"
plot f(x) w l lc -1 lw 2