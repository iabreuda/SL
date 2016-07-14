% DRE - 112053874

a = -[22] % Senão não tem estabilidade;
b = [7];
c = [3];
d = [4];
[u,t] =  gensig('square',4,20,0.01);

state_space = ss(a,b,c,d);
tf_state_space = tf(state_space);
display(tf_state_space);

figure
lsim(tf_state_space,u,t)