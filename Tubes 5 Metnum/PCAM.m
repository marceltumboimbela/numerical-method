%function y = PCAM(func, x0, y0, xn, h)
function y = PCAM(x0,y0,b,h,soal)
% initialize
%f = fungsi(x0,y0,soal);
x(1) = x0;
y(1) = y0;
n = (b-x0)/h;
f = @(x,y) fungsi(x,y,soal);

% generate starting estimates using Runge-Kutta
for i = 1:3
	k1 = f(x(i), y(i));
	k2 = f(x(i) + h/2, y(i) + h/2*k1);
	k3 = f(x(i) + h/2, y(i) + h/2*k2);
	k4 = f(x(i) + h, y(i) + h*k3);
	y(i+1) = y(i) + h/6*(k1 + 2*k2 + 2*k3 + k4);
	x(i+1) = x(i) + h;
end

% iterate
for i = 4:n
	% Adams-Bashforth -- *predict*
	y(i+1) = y(i) + h/24*(55*f(x(i), y(i)) - 59*f(x(i-1),y(i-1)) ...
		+ 37*f(x(i-2),y(i-2)) - 9*f(x(i-3),y(i-3)));
	x(i+1) = x(i) + h;
	% Adams-Moulton -- *correct*
	y(i+1) = y(i) + h/24*(9*f(x(i+1),y(i+1)) + 19*f(x(i),y(i)) ...
		- 5*f(x(i-1),y(i-1)) + f(x(i-2),y(i-2)));
end