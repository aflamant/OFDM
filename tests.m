close all;
clear variables;

w = warning('query','last');    %suppression des warnings
id=w.identifier;
warning('off',id);

set_param('OFDM','InitFcn','');     %suppression du script qui s'execute à chaque lancement du programme
set_param('OFDM','StopTime','0.06');

init;

for M=[2,3,4,5,6,7,8]   %on fait varier la modulation M-aire
    QAM = 2^M
    result=zeros(315,5);
    i=1;        %numéro de la simulation

    for N=[32,64,128,256,512,1024,2048,4096,8192]
        nbZeros = N/8;      %bande de garde de N/8 zéros
        powersOfTwo = 2.^[1:log2(N/4)];
        for nbPilots=powersOfTwo        %on fait varier le nombre de pilotes
            for SNR_ = [10:5:30]        % on fait varier le SNR
                setMyParams(B,N,nbPilots,nbZeros,SNR_,delayMax,M);
                disp([num2str(QAM) '-QAM :' 'N=' num2str(N) ', nbPilots=' num2str(nbPilots) ', SNR=' num2str(SNR_) 'dB' ', débit =' num2str(debit)])
                sim('OFDM');
                progression=i/315*100;
                disp(['   => BER =' num2str(BER.data(end,1)) '            progression: ' num2str(progression) '%'])
                result(i,:)=[N nbPilots SNR_ BER.data(end,1) debit];    %insertion des résultats dans le tableau
                i=i+1;
            end
        end
    end
    csvfilename = ['results/result_' num2str(QAM) 'QAM.csv'];     %sauvegarde et export du tableau
    matfilename = ['results/result_' num2str(QAM) 'QAM.mat'];

    csvwrite(csvfilename,result)
    save(matfilename,'result')
end

set_param('OFDM','StopTime','inf');
set_param('OFDM','InitFcn','init');
