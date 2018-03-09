%Organização dos movimentos de validação

%350 AMOSTRAS NO TOTAL
%VARIANDO DE 200 A 250 AMOSTRAS DE CONTRAÇÃO
%Carregamento dos valores
load('MsentadosemC');
load('MsentadocomC');
load('MSlateralsemC');
load('MSlateralcomC');
load('MpesemC');
load('MpecomC');
load('MplateralsemC');
load('MplateralcomC');


%Movimento de validação
%Sentado sem carga
VY0 = YX0(1151:1400);
VY1 = YX0(1450:1750);
VY2 = YX0(1851:2100);

%Sentado com carga
VY3 = YX1(2250:2451);
VY4 = YX1(2660:2880);

%Sentado lateral sem carga
VY5 = YX2(1717:2099);
VY6 = YX2(2551:2800);

%Em pé com carga
VY7 = YX5(800:1130);
VY8 = YX5(1130:1463);

%Em pé lateral com Carga
VY9 = YX7(800:1170);
VY10 = YX7(1360:1498);

save('EMGvalidacao3.mat','VY1','VY2','VY3','VY4','VY5','VY6','VY7','VY8','VY9','VY10');


