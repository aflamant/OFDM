B = 20e6;
N = 2048;
nbPilots = 8;
nbZeros = 16;
SNR_ = 20;
delayMax = 1e-7;

Ts = N/B;

nUtile = N - ( nbZeros + nbPilots );
nCycle = delayMax * N / Ts;
nTotal = N + nCycle;

W = ( nUtile + nbPilots ) / nTotal^2;
debit = 3*nUtile/Ts;