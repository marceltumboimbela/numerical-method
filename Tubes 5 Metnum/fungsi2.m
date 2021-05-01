function f = fungsi2(x,y,z,soal)

global epsilon; %0.01,0.1,1,10
global omega;
epsilon = 10;
omega = 1;

switch soal
    case 0
        %f = x + y;
        f = 1 + y*y;
        
    case 1
        f = epsilon * (x^2) - (omega^2) * x;
        
    case 2
        f = (-2*z+x*(y*y*0.1)^(3/2))/x;
        
    case 3
        %f =
        
    case 4
        f = a*y - b*(y^2);
        
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
    case 20
        %f = -0.5*x;
        f = 4-0.3*z-0.1*y;
    case 25
        f = -0.5*y;
end