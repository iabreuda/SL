clear all;
close all;

figure;
h1 = tf([0 0.000000138 0], [0.000000000001035 0.000000195 0.006]);
pzmap(h1);

figure;
h2 = tf([0 10 0], [1 110 1]);
pzmap(h2);

figure;
h3 = tf([1 0 0], [2000 110 1]);
pzmap(h3);

figure;
h4 = tf([0 0 1], [0 0 1]);
pzmap(h4);

figure;
h5 = tf([0 0 1], [0 -10 0]);
pzmap(h5);
