clear all;
close all;

figure;
h1 = tf([0 100 0], [1000 110 110]);
bode(h1);

figure;
h2 = tf([0 10 0], [1 110 1]);
bode(h2);

figure;
h3 = tf([1 0 0], [2000 110 1]);
bode(h3);
gp1 = getPeakGain(h3);
display(gp1);

figure;
h4 = tf([0 0 1], [0 0 1]);
bode(h4);

figure;
h5 = tf([0 0 1], [0 -10 0]);
bode(h5);
