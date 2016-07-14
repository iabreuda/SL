clear all;
close all;

a = [0.001 0.01 0.1 1 10 100 1000];
b = [0.001 0.01 0.1 1 10];
t = linspace(0, 20,1000);
u = sin((pi/4)*t);

figure;
for idx = 1:numel(a) 
    alpha = a(idx);
    h1 = tf([0 alpha 1], [1 2 2]);
    subplot(2,4,idx);
    lsim(h1,u,t); hold on;
    title(['Harmonico 1 (alfa = ' ,num2str(alpha), ')']);
end

figure
for idx = 1:numel(b) 
    beta = b(idx);
    h2 = tf([0 1 10000], [1 2*beta 100]);
    subplot(2,4,idx);
    lsim(h2,u,t); hold on;
    title(['Harmonico 1 (beta = ' ,num2str(beta), ')']);    
end
