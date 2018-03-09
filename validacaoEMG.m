%Organização dos movimentos de validação


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
%V01 - Sentado sem carga 01
V1 = YX0(331:630);
%V02 - Sentado sem carga 02
V2 = YX0(1851:2100); 
%V03 - Sentado com carga 01
V3 = YX1(1:300);
%V04 - Sentado com carga 02
V4 = YX1(1126:1425);
%V05 - Lateral sentado sem carga 01
V5 = YX2(331:630);
%V06 - Lateral sentado sem carga 02
V6 = [YX2(2550:2800) YX2(2900:2948)];
%V07 - Sentado lateral com carga 01
V7 = YX3(2301:2600);
%V08 - Sentado lateral com carga 02
V8 = YX3(2600:2901);
%V9 - Em pé sem carga 01
V9 = YX4(51:350);
%V10 - Em pé sem carga 02
V10 = YX4(1441:1740);
%V11 - Em pé com carga 01
V11 = YX5(1:300);
%V12 - Em pé com carga 02
V12 = YX5(451:750);
%V13 - Em pé lateral sem carga
V13 = YX6(1101:1400);
%V14 - Em pé lateral com carga
V14 = YX7(800:1100);


% V11 = YX5(801:1100);
save('EMGvalidacao.mat','V1','V2','V3','V4','V5','V6','V7','V8','V9','V10','V11','V12','V13','V14');


