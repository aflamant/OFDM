function setMyParams(b,n,nbpilots,nbzeros,snr,delaymax,m)

    Ts = n/b;				%calcul des variables

    nUtile = n - ( nbzeros + nbpilots );
    nCycle = delaymax * n / Ts;
    nTotal = n + nCycle;

    W = ( nUtile + nbpilots ) / nTotal^2;
    

    assignin('base','Ts',Ts); 		%export des variables
    assignin('base','nUtile',nUtile);
    assignin('base','nCycle',nCycle);
    assignin('base','nTotal',nTotal);
    assignin('base','W',W);
    assignin('base','debit', m*nUtile/Ts)

end