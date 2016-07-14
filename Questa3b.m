clear all;
close all;

a = [0.001 0.01 0.1 1 10 100 1000];
b = [0.001 0.01 0.1 1 10];

figure;
for idx = 1:numel(a) 
    alpha = a(idx);
    h1 = tf([0 alpha 1], [1 2 2]);
    t = 0:0.01:4;
    u = sin(10*t);
    lsim(sys,u,t)    
    subplot(2,4,idx);
    pzmap(h1); hold on;
    title(['Zeros e Polos (alfa = ' ,num2str(alpha), ')']);    
end

figure;
for idx = 1:numel(b) 
    beta = b(idx);
    h2 = tf([0 1 10000], [1 2*beta 100]);
    subplot(2,4,idx);
    pzmap(h2); hold on;
    title(['Zeros e Polos (beta = ' ,num2str(beta), ')']);    
end
