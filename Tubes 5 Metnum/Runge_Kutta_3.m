function f = Runge_Kutta_3(x0,y0,b,h,soal)

x = x0;
y = y0;
F_xy = @(x,y) fungsi(x,y,soal);

for i=1:((b-x0)/h)   %calculation loop
    k_1 = h*F_xy(x,y);
    k_2 = h*F_xy(x+0.5*h,y+0.5*k_1);
    k_3 = h*F_xy(x+h,y-k_1+2*k_2);

    y = y + (1/6)*(k_1+4*k_2+k_3);  %main equation
    x = x + h;
end

f = str2num(sprintf('%7f',y));