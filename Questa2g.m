% DRE - 112053874

a = -[22] % Sen�o n�o tem estabilidade;
b = [7];
c = [3];
d = [4];

state_space = ss(a,b,c,d);
tf_state_space = tf(state_space);

s = tf('s');
figure;
step(tf_state_space/s)
title('Resposta a Rampa');