B = 20e6;
N = 256;
nbPilots = 16;
nbZeros = 16;
SNR_ = 20;
delayMax = 1e-7;

Ts = N/B;

nUtile = N - ( nbZeros + nbPilots );
nCycle = delayMax * N / Ts;
nTotal = N + nCycle;

W = ( nUtile + nbPilots ) / nTotal^2;