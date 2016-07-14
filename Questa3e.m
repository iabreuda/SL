clear all;
close all;

a = [0.001 0.01 0.1 1 10 100 1000];
b = [0.001 0.01 0.1 1 10];
s = tf('s');

figure;
for idx = 1:numel(a) 
    alpha = a(idx);
    h1 = tf([0 alpha 1], [1 2 2]);
    subplot(2,4,idx);
    step(h1/s); hold on;
    title(['Resposta Rampa (alfa = ' ,num2str(alpha), ')']);
end

figure
for idx = 1:numel(b) 
    beta = b(idx);
    h2 = tf([0 1 10000], [1 2*beta 100]);
    subplot(2,4,idx);
    step(h2/s); hold on;
    title(['Resposta Rampa (beta = ' ,num2str(beta), ')']);    
end
