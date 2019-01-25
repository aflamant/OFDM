set term png

unset yrange
unset xrange
set key default

set xlabel "Nombre de pilotes"
set logscale x 2
set logscale y
set yrange [0.1:100]

set ylabel "BER (%)"
set ytics nomirror

set output "figures/8PSK/ber32_8PSK.png"
set title "BER en fonction du nombre de pilotes pour 32 canaux (8PSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 32 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 32 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 32 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 32 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 32 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/8PSK/ber64_8PSK.png"
set title "BER en fonction du nombre de pilotes pour 64 canaux (8PSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 64 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 64 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 64 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 64 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 64 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/8PSK/ber128_8PSK.png"
set title "BER en fonction du nombre de pilotes pour 128 canaux (8PSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 128 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 128 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 128 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 128 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 128 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/8PSK/ber256_8PSK.png"
set title "BER en fonction du nombre de pilotes pour 256 canaux (8PSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 256 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 256 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 256 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 256 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 256 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/8PSK/ber512_8PSK.png"
set title "BER en fonction du nombre de pilotes pour 512 canaux (8PSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 512 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 512 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 512 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 512 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 512 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/8PSK/ber1024_8PSK.png"
set title "BER en fonction du nombre de pilotes pour 1024 canaux (8PSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 1024 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 1024 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 1024 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 1024 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 1024 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/8PSK/ber2048_8PSK.png"
set title "BER en fonction du nombre de pilotes pour 2048 canaux (8PSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 2048 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 2048 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 2048 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 2048 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 2048 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/8PSK/ber4096_8PSK.png"
set title "BER en fonction du nombre de pilotes pour 4096 canaux (8PSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 4096 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 4096 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 4096 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 4096 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 4096 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/8PSK/ber8192_8PSK.png"
set title "BER en fonction du nombre de pilotes pour 8192 canaux (8PSK)"

set xrange [2:2048]

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 8192 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 8192 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 8192 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 8192 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 8192 {print $2,$4}' result_8PSK.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/8PSK/throughput_8PSK.png"
set title "Débit en fonction du nombre de sous-porteuses (8PSK)"

set xlabel "Nombre de sous-porteuses"
set yrange [:61]
unset xrange
unset logscale y
set ylabel "Débit (Mb/s)"
set key bottom right


plot "<awk '$3 == 10 {print $1,$4}' throughput_8PSK.out" u 1:($2/1e6) w lines t "SNR = 10dB", \
	"<awk '$3 == 15 {print $1,$4}' throughput_8PSK.out" u 1:($2/1e6) w lines t "SNR = 15dB", \
	"<awk '$3 == 20 {print $1,$4}' throughput_8PSK.out" u 1:($2/1e6) w lines t "SNR = 20dB", \
	"<awk '$3 == 25 {print $1,$4}' throughput_8PSK.out" u 1:($2/1e6) w lines t "SNR = 25dB", \
	"<awk '$3 == 30 {print $1,$4}' throughput_8PSK.out" u 1:($2/1e6) w lines t "SNR = 30dB", \
	60 with lines lc "#00FF00" t "Maximum théorique"
