%Compara��o do movimento de ajuste com o o movimento de compara��o
clear all;
clc;
close all;
load('EMGvalidacao2.mat');
load('EMGvalidacao.mat');
load('EMGajuste.mat');
Valid = VX10; %Digite aqui o valor de V1 � V12;

%Cria��o de marca��o do pre-shooting 

PR1 = 50*ones(length(Valid),1);
PR2 = 50*ones(length(Valid),1);

%%
figure;
hold on;
plot(PR1,'--b');
plot(Valid,'red');
hold on;
plot(FMM,'black','linewidth',2),legend('Amplitude de ref:','Sinal valida��o:','Filtro M�dia M�vel M = 50:');
grid on;
xlabel('Tempo:'),ylabel('Amplitude:');
Title('Compara��o: Filtro m�dia m�vel X sinal de valida��o:');



figure;
plot(PR2,'--b');
hold on;
plot(Valid(59:350),'red');
hold on;
plot(DEnv,'blue','linewidth',2),legend('Amplitude de ref:','Sinal Valida��o:','Detector de envolt�ria:'),grid on;
xlabel('Tempo:'), ylabel('Amplitude:');
title('Compara��o: Detector de envolt�ia X Sinal de Valida��o:');
% title('Teste 01: Compara��o de filtro m�dia m�vel')
% plot(Valid,'red'),legend('Sinal de validac�o');
% hold on;
% plot(FMM,'black','linewidth',2), legend('Filtro m�dia m�vel M = 15');
% grid on; 
%%

