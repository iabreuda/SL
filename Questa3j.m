clear all;
close all;

a = [0.001 0.01 0.1 1 10 100 1000];
b = [0.001 0.01 0.1 1 10];
t = linspace(0, 20,1000);
u = sin((pi/4)*t) + (sin((3*pi/4)*t)/3) + (sin((5*pi/4)*t)/5) + (sin((7*pi/4)*t)/7);

figure;
for idx = 1:numel(a) 
    alpha = a(idx);
    h1 = tf([0 alpha 1], [1 2 2]);
    subplot(2,4,idx);
    lsim(h1,u,t); hold on;
    title(['Harmonico 7 (alfa = ' ,num2str(alpha), ')']);
end

figure
for idx = 1:numel(b) 
    beta = b(idx);
    h2 = tf([0 1 10000], [1 2*beta 100]);
    subplot(2,4,idx);
    lsim(h2,u,t); hold on;
    title(['Harmonico 7 (beta = ' ,num2str(beta), ')']);    
end
