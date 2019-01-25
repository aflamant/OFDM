B = 20e6;
N = 2048;
nbPilots = 32;
nbZeros = N/8;
SNR_ = 20;
delayMax = 1e-7;
M=3;

Ts = N/B;

nUtile = N - ( nbZeros + nbPilots );
nCycle = delayMax * N / Ts;
nTotal = N + nCycle;

W = ( nUtile + nbPilots ) / nTotal^2;
debit = M*nUtile/Ts;