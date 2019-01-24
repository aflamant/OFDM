set term postscript eps enhanced "Helvetica" 20

set output "ber.eps"

set xlabel "Nombre de pilotes"
set ylabel "BER (%)"

set ytics nomirror


plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 32 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 10", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 32 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 15", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 32 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 20", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 32 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 25", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 32 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 30"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 64 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 10", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 64 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 15", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 64 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 20", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 64 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 25", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 64 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 30"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 128 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 10", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 128 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 15", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 128 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 20", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 128 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 25", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 128 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 30"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 256 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 10", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 256 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 15", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 256 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 20", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 256 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 25", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 256 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 30"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 512 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 10", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 512 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 15", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 512 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 20", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 512 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 25", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 512 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 30"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 1024 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 10", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 1024 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 15", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 1024 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 20", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 1024 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 25", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 1024 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 30"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 2048 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 10", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 2048 {print $2,$4}' result.csv" u 2:($2*100) w lines t "SNR = 15", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 2048 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 20", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 2048 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 25", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 2048 {print $2,$4}' result.csv" u 2:($3*100) w lines t "SNR = 30"
