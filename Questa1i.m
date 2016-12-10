clear all;
close all;

[u,t] =  gensig('square',0.00209,2,0.01);
figure;
h1 = tf([0 2.32 0], [0.000285824 3.6192 5600]);
lsim(h1,u,t)

figure;
h2 = tf([0 2.2 0], [0.000000051 2.20022 1]);
lsim(h2,u,t)

figure;
h3 = tf([0 0 1], [0.000000025 0.00055 1]);
lsim(h3,u,t)

figure;
h4 = tf([0 0 1], [0 0 1]);
lsim(h4,u,t)

figure;
h5 = tf([0 0 1], [0 -0.05 0]);
lsim(h5,u,t)
