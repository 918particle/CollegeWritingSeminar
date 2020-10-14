set key top left font "Arial,16"
set lmargin 10
set bmargin 5
set xtics font "Arial,20"
set ytics font "Arial,20"
set xlabel "Time (days) since Outbreak" font "Arial,22" offset 0,-1
set ylabel "Number of New Cases" font "Arial,22" offset -2,0
set xrange [1:20]
set yrange [1:60]
set grid
set pointsize 2
a = 51
b = 0.1
f(x) = a*(1-exp(-b*x))
set terminal png
set output "outbreak3.png"
plot f(x) w l lc 1 lw 2 title "Kansas", f(x)+2 w p pt 6 lc -1 title "Colorado", -f(x)+50 w l lc -1 lw 3 title "California"