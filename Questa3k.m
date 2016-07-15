clear all;
close all;

a = [0.001 0.01 0.1 1 10 100 1000];
b = [0.001 0.01 0.1 1 10];
freq = [0.0001 0.001 0.01 0.1 1 10 100 1000 10000]

for idx = 1:numel(a) 
    figure;
    hold off;
    alpha = a(idx);
    h1 = tf([0 alpha 1], [1 2 2]);
    for k=1:numel(freq);
       t = linspace(0, 4/(freq(k)),1000);
       u = cos(2*pi*freq(k)*t);
       y = lsim(h1,u,t);
       subplot(3,3,k)
       plot(y,'b');
       title(sprintf('Alfa = %s e Freq = %s', num2str(a(idx)),num2str(freq(k))));
       hold on;
    end    
end

for idx = 1:numel(b) 
    figure;
    hold off;
    beta = b(idx);
    h2 = tf([0 1 10000], [1 2*beta 100]);
    for k=1:numel(freq);
       t = linspace(0, 4/(freq(k)),1000);
       u = cos(2*pi*freq(k)*t);
       y = lsim(h2,u,t);
       subplot(3,3,k)
       plot(y,'b');
       title(sprintf('Beta = %s e Freq = %s', num2str(b(idx)),num2str(freq(k))));
       hold on;
    end    
end    