%Punto 2
syms y t 
f = 8*t*exp(2*t)*sin(3*t + deg2rad(45));
a = laplace(f);
latex(a);
   

%Punto 3
x = linspace(0,10);
y = 2 - 4*exp(-2*x/3)/3;

plot(x,y)
title('Voltage vs. Time')
ylabel('e_0(t)')
xlabel('Time in seconds')
