clear all;
close all;

figure;
h1 = tf([0 2.32 0], [0.000285824 3.6192 5600]);
step(h1);

figure;
h2 = tf([0 2.2 0], [0.000000051 2.20022 1]);
step(h2);

figure;
h3 = tf([0 0 1], [0.000000025 0.00055 1]);
step(h3);

figure;
h4 = tf([0 0 1], [0 0 1]);
step(h4);

figure;
h5 = tf([0 0 1], [0 -0.05 0]);
step(h5);
