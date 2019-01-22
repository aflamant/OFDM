close all;
clear variables;

%w = warning('query','last');    %ici j'enl�ve des warnings, YOLO
%id=w.identifier;
%warning('off',id);
set_param('OFDM','InitFcn','');     %j'enl�ve le script init qui s'execute � chaque d�marrage de la sim
set_param('OFDM','StopTime','0.01');

init;

results=zeros(10000,5);
i=1;        %num�ro de la simulation
%for SNR_=[10:1:30]
    for N=[32,64,128,256,512,1024,2048]
        nbZeros = N/8;
        powersOfTwo = 2.^[1:log2(N/2)];
        for nbPilots=powersOfTwo
            setMyParams(B,N,nbPilots,nbZeros,SNR_,delayMax);
            sim('OFDM');
            results(i,:)=[N nbPilots SNR_ BER.data(end,1) debit];
            i=i+1;
        end
    end
%end

set_param('OFDM','StopTime','inf');
set_param('OFDM','InitFcn','init');


