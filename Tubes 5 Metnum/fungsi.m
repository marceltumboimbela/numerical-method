function f = fungsi(x,y,soal)

global epsilon; %0.01,0.1,1,10
global omega;
global z;
global a;
global b2;
global c;
global l;
global r;
%epsilon = 10;
omega = 1;
a = 0.02;
b2 = 0.00004;

switch soal
    case 0
        %f = x + y;
        f = 1 + y*y;
        
    case 1
        f = epsilon * (x^2) - (omega^2) * x;
        
    case 2
        f = (-2*z+x*(y*y*0.1)^(3/2))/x;
        
    case 3
        f = (y-1/c*x-r*y)/z;
        
    case 4
        f = a*y - b2*(y^2);
        
    case 5.1
        f = (x^3) + (y^2);
        
    case 5.2
        f = exp(-2*x) - 2*y;
        
    case 5.3
        f = 4-0.3*z-0.1*y;
    case 6
        f = y;
    case 7
        f = -0.5*y;
end