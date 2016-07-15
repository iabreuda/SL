clear all;
close all;

[u,t] =  gensig('square',16,100,0.01);
figure;
h1 = tf([0 100 0], [1000 110 110]);
lsim(h1,u,t)

figure;
h2 = tf([0 10 0], [1 110 1]);
lsim(h2,u,t)

figure;
h3 = tf([1 0 0], [2000 110 1]);
lsim(h3,u,t)

figure;
h4 = tf([0 0 1], [0 0 1]);
lsim(h4,u,t)

figure;
h5 = tf([0 0 1], [0 -10 0]);
lsim(h5,u,t)
