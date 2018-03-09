%%Nome: Igor Rodrigues Cardoso
%Matricula: 0323478
close all;
clear all;
clc;



%%
%1� Aquisi��o dos movimentos
load('MsentadosemC');
load('MsentadocomC');
load('MSlateralsemC');
load('MSlateralcomC');
load('MpesemC');
load('MpecomC');
load('MplateralsemC');
load('MplateralcomC');
load('EMGvalidacao');
load('EMGvalidacao3');

%Lengenda do valor  MAB: A = Tipo de movimento, B = Numera��o do movimento.
%Movimento de ajuste do filtro m�dia m�vel:
In1 = VY9;
%Movimento de ajuste do filtro de detector de envolt�ria
In2 = VY7;
PR1 = 50*ones(length(In1),1);
PR2 = 50*ones(length(In2),1);
%%
%2�) Implementa��o do Filtro m�dia m�vel:
N = length(In1);
n = 1:1:N;
MM = 20;

bb = ones(MM,1)/MM;

FMM = filter(bb,1,In1);
figure;
plot(PR1,'--red');
hold on;
plot(FMM,'black','linewidth',3);
hold on;
plot(In1,'blue');
legend('Amplitude de ref:','Filtro M�dia M�vel M = 20:','Sinal Muscular:');
grid on;
%%
%3�)Implementa��o do Detector de Envolt�ria:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
wc = 1.5; %Frequ�ncia de corte;
wa = 100; %Frequencia de amostragem;
wn = 2*wc/wa
[a,b] = butter(1,wn,'low');
fs = abs(2*In2.*In2);
ysq = filter(a,b,fs);
DEnv = sqrt(ysq);
figure;
plot(PR2,'--red');
hold on;
plot(In2,'blue');
hold on;
plot(DEnv,'black','linewidth',3);
legend('Amplitude de ref:','Sinal Muscular:','Detector de envolt�ria:')
grid on;

%%
%Salvando os valores ajustados para compara��o com os movimentos de
%valida��o
save('EMGajuste.mat','FMM','DEnv');
%%
%Utilizando FIR para detec��o do envolt�rio
%fw = abs(2*RR.*RR);
%ywq = filter(1,0.1,fw);
%C = fir1(2,wn,'low');
%YWW = sqrt(ywq);

% figure;
% plot(Out2,'magenta');
% hold on;
% plot(YWW,'black','linewidth',2);
% grid on;
%%



