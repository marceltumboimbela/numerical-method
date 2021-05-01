function f = Runge_Kutta_4(x0,y0,b,h,soal)

%h=1.5; step size
%x = 0:h:3;  Calculates upto y(3)
%y = zeros(1,length(x)); 
%y(1) = 5;
x = x0;
y = y0;
%F_xy = @(t,r) 3.*exp(-t)-0.4*r; change the function as you desire
F_xy = @(x,y) fungsi(x,y,soal);

for i=1:((b-x0)/h)   %calculation loop
    k_1 = h*F_xy(x,y);
    k_2 = h*F_xy(x+0.5*h,y+0.5*k_1);
    k_3 = h*F_xy((x+0.5*h),(y+0.5*k_2));
    k_4 = h*F_xy((x+h),(y+k_3));

    y = y + (1/6)*(k_1+2*k_2+2*k_3+k_4);  %main equation
    x = x + h;
end

f = str2num(sprintf('%7f',y));