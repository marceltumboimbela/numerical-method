%function y = PCAM(func, x0, y0, xn, h)
function ans = PCAM2(x0,y0,b,h,soal)
% initialize
%f = fungsi(x0,y0,soal);
global z;
x=0.5;
y(1) = x0;
z(1) = y0;
x(1) = 0.5;
n = (b-x0)/h;
f = @(x,y,z,soal) fungsi2(x,y,z,soal);
if soal==5.3
    soal_turunan=7;
else
    soal_turunan=6;
end

for i = 1:3
	k1 = f(x(i), y(i),z(i),soal_turunan);
	k2 = f(x(i) + h/2, y(i) + h/2*k1,z(i),soal_turunan);
	k3 = f(x(i) + h/2, y(i) + h/2*k2,z(i),soal_turunan);
	k4 = f(x(i) + h, y(i) + h*k3,z(i),soal_turunan);
	y(i+1) = y(i) + h/6*(k1 + 2*k2 + 2*k3 + k4);
    
    k1 = f(x(i), y(i),z(i),soal);
	k2 = f(x(i) + h/2, y(i) + h/2*k1,z(i),soal);
	k3 = f(x(i) + h/2, y(i) + h/2*k2,z(i),soal);
	k4 = f(x(i) + h, y(i) + h*k3,z(i),soal);
	z(i+1) = z(i) + h/6*(k1 + 2*k2 + 2*k3 + k4);
    x(i+1) = x(i) + h;
end

% iterate
for i = 4:n
    % Adams-Bashforth -- *predict*
	y(i+1) = y(i) + h/24*(55*f(x(i), y(i),z(i),soal_turunan) - 59*f(x(i-1),y(i-1),z(i),soal_turunan) ...
		+ 37*f(x(i-2),y(i-2),z(i),soal_turunan) - 9*f(x(i-3),y(i-3),z(i),soal_turunan));
    z(i+1) = z(i) + h/24*(55*f(x(i), y(i),z(i),soal) - 59*f(x(i-1),y(i-1),z(i),soal) ...
		+ 37*f(x(i-2),y(i-2),z(i),soal) - 9*f(x(i-3),y(i-3),z(i),soal));

    x(i+1) = x(i) + h;
    
    % Adams-Moulton -- *correct*
	y(i+1) = y(i) + h/24*(9*f(x(i+1),y(i+1),z(i),soal_turunan) + 19*f(x(i),y(i),z(i),soal_turunan) ...
		- 5*f(x(i-1),y(i-1),z(i),soal_turunan) + f(x(i-2),y(i-2),z(i),soal_turunan));
    z(i+1) = z(i) + h/24*(9*f(x(i+1),y(i+1),z(i),soal) + 19*f(x(i),y(i),z(i),soal) ...
		- 5*f(x(i-1),y(i-1),z(i),soal) + f(x(i-2),y(i-2),z(i),soal));
end

ans=z(1);