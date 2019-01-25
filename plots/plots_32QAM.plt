set term png

set xlabel "Nombre de pilotes"
set logscale x 2
set ylabel "BER (%)"
set ytics nomirror

set output "figures/32QAM/ber32_32QAM.png"
set title "BER en fonction du nombre de pilotes pour 32 canaux (32QAM)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 32 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 32 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 32 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 32 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 32 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/32QAM/ber64_32QAM.png"
set title "BER en fonction du nombre de pilotes pour 64 canaux (32QAM)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 64 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 64 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 64 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 64 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 64 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/32QAM/ber128_32QAM.png"
set title "BER en fonction du nombre de pilotes pour 128 canaux (32QAM)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 128 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 128 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 128 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 128 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 128 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/32QAM/ber256_32QAM.png"
set title "BER en fonction du nombre de pilotes pour 256 canaux (32QAM)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 256 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 256 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 256 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 256 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 256 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/32QAM/ber512_32QAM.png"
set title "BER en fonction du nombre de pilotes pour 512 canaux (32QAM)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 512 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 512 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 512 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 512 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 512 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/32QAM/ber1024_32QAM.png"
set title "BER en fonction du nombre de pilotes pour 1024 canaux (32QAM)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 1024 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 1024 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 1024 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 1024 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 1024 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/32QAM/ber2048_32QAM.png"
set title "BER en fonction du nombre de pilotes pour 2048 canaux (32QAM)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 2048 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 2048 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 2048 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 2048 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 2048 {print $2,$4}' result_32QAM.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle

set output "figures/32QAM/throughput_32QAM.png"
set title "Débit en fonction du nombre de sous-porteuses (32QAM)"

set xlabel "Nombre de sous-porteuses"
set yrange [:101]
set ylabel "Débit (Mb/s)"
set key bottom right


plot "<awk '$3 == 10 {print $1,$4}' throughput_32QAM.out" u 1:($2/1e6) w lines t "SNR = 10dB", \
	"<awk '$3 == 15 {print $1,$4}' throughput_32QAM.out" u 1:($2/1e6) w lines t "SNR = 15dB", \
	"<awk '$3 == 20 {print $1,$4}' throughput_32QAM.out" u 1:($2/1e6) w lines t "SNR = 20dB", \
	"<awk '$3 == 25 {print $1,$4}' throughput_32QAM.out" u 1:($2/1e6) w lines t "SNR = 25dB", \
	"<awk '$3 == 30 {print $1,$4}' throughput_32QAM.out" u 1:($2/1e6) w lines t "SNR = 30dB", \
	100 with lines lc "#00FF00" t "Maximum théorique"
