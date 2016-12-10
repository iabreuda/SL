clear all;
close all;

s = tf('s');

figure;
h1 = tf([0 2.32 0], [0.000285824 3.6192 5600]);
step(h1/s);
title('Resposta a rampa');

figure;
h2 = tf([0 2.2 0], [0.000000051 2.20022 1]);
step(h2/s);
title('Resposta a rampa');

figure;
h3 = tf([0 0 1], [0.000000025 0.00055 1]);
step(h3/s);
title('Resposta a rampa');

figure;
h4 = tf([0 0 1], [0 0 1]);
step(h4/s);
title('Resposta a rampa');

figure;
h5 = tf([0 0 1], [0 -0.05 0]);
step(h5/s);
title('Resposta a rampa');
