p1b
function p1a
syms s
GPlant = tf([25],[1 4 25]); 
step(feedback(GPlant,1,-1))

wn = sqrt(25);
d = 4/2/wn;
wd = wn*sqrt(1-d^2);
tau = 1/d/wn;
ts = 4*tau;
mp = exp(-1*d*pi/sqrt(1-d^2));
tp = pi/wd;
yss = evalfr(feedback(GPlant,1,-1),0);
ypeak = double(yss*(1+mp));
disp(mp);
disp(ypeak);
disp(tp);
disp(wd);
end

function p1b
pp =10;
dd = 0.1 * pp;
ii = pp*1.7;
control = pid(pp,ii,dd);
GPlant = tf([25],[1 4 25]); 
sys =GPlant*control;
step(feedback(sys,1), feedback(GPlant,1));
legend('Compensated','Uncompensated','Location','SouthEast')
yss = evalfr(feedback(sys,1),0);
disp(yss);

end