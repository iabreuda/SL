% DRE - 112053874

a = -[22] % Senão não tem estabilidade;
b = [7];
c = [3];
d = [4];

state_space = ss(a,b,c,d);
tf_state_space = tf(state_space);

figure;
pzmap(tf_state_space)