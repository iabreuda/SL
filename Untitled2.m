clear all;
close all;

figure;
    h1 = tf([0 0 1], [2000 110 1]);
    bodeplot(h1);
