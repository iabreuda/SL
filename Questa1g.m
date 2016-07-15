clear all;
close all;

figure;
h1 = tf([0 100 0], [1000 110 110]);
step(h1);

figure;
h2 = tf([0 10 0], [1 110 1]);
step(h2);

figure;
h3 = tf([1 0 0], [2000 110 1]);
step(h3);

figure;
h4 = tf([0 0 1], [0 0 1]);
step(h4);

figure;
h5 = tf([0 0 1], [0 -10 0]);
step(h5);
