%Comparação do movimento de ajuste com o o movimento de comparação
clear all;
clc;
close all;
load('EMGvalidacao2.mat');
load('EMGvalidacao.mat');
load('EMGajuste.mat');
Valid = VX10; %Digite aqui o valor de V1 à V12;

%Criação de marcação do pre-shooting 

PR1 = 50*ones(length(Valid),1);
PR2 = 50*ones(length(Valid),1);

%%
figure;
hold on;
plot(PR1,'--b');
plot(Valid,'red');
hold on;
plot(FMM,'black','linewidth',2),legend('Amplitude de ref:','Sinal validação:','Filtro Média Móvel M = 50:');
grid on;
xlabel('Tempo:'),ylabel('Amplitude:');
Title('Comparação: Filtro média móvel X sinal de validação:');



figure;
plot(PR2,'--b');
hold on;
plot(Valid(59:350),'red');
hold on;
plot(DEnv,'blue','linewidth',2),legend('Amplitude de ref:','Sinal Validação:','Detector de envoltória:'),grid on;
xlabel('Tempo:'), ylabel('Amplitude:');
title('Comparação: Detector de envoltóia X Sinal de Validação:');
% title('Teste 01: Comparação de filtro média móvel')
% plot(Valid,'red'),legend('Sinal de validacão');
% hold on;
% plot(FMM,'black','linewidth',2), legend('Filtro média móvel M = 15');
% grid on; 
%%

