function setMyParams(b,n,nbpilots,nbzeros,snr,delaymax)
    B = b;
    N = n;
    nbPilots = nbpilots;
    nbZeros = nbzeros;
    SNR_ = snr;
    delayMax = delaymax;

    Ts = N/B;

    nUtile = N - ( nbZeros + nbPilots );
    nCycle = delayMax * N / Ts;
    nTotal = N + nCycle;

    W = ( nUtile + nbPilots ) / nTotal^2;
    
    assignin('base','B',B);
    assignin('base','N',N);
    assignin('base','nbPilots',nbPilots);
    assignin('base','nbZeros',nbZeros);
    assignin('base','SNR_',snr);
    assignin('base','delayMax',delayMax);

    assignin('base','Ts',Ts);

    assignin('base','nUtile',nUtile);
    assignin('base','nCycle',nCycle);
    assignin('base','nTotal',nTotal);

    assignin('base','W',W);
    
    assignin('base','debit', 2*N/Ts)
end