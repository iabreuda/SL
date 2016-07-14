% DRE - 112053874

a = -[22] % Senão não tem estabilidade;
b = [7];
c = [3];
d = [4];
t = linspace(0, 20,1000);
u = sin((pi/2)*t) + (sin((3*pi/2)*t)/3) + (sin((5*pi/2)*t)/5);

state_space = ss(a,b,c,d);
tf_state_space = tf(state_space);

figure
lsim(tf_state_space,u,t)