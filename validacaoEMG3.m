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
VX1 = YX0(1451:1800);
VX2 = YX0(2601:2950);
VX3 = YX0(601:950);
VX4 = YX1(401:750);
VX5 = YX2(1701:2050);
VX6 = YX2(1374:1725);
VX7 = YX3(2251:2600);
VX8 = YX5(381:730);
VX9 = YX5(781:1130);
VX10 = YX7(751:1100);
save('EMGvalidacao2.mat','VX1','VX2','VX3','VX4','VX5','VX6','VX7','VX8','VX9','VX10');


