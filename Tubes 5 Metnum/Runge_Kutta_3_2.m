function f = Runge_Kutta_3_2(x0,y0,b,h,soal)

global z;
F_xy = @(x,y,soal) fungsi(x,y,soal);
x=0.5;
y = x0;
z = y0;
if soal==5.3
    soal_turunan=7;
else
    soal_turunan=6;
end

for i=1:((b-x0)/h)   %calculation loop
%for i=1:1   %calculation loop   
    k_1 = h*F_xy(x,y,soal_turunan);
    k_2 = h*F_xy(x+0.5*h,y+0.5*k_1,soal_turunan);
    k_3 = h*F_xy(x+h,y-k_1+2*k_2,soal_turunan);
    y0=y;
    y = y + (1/6)*(k_1+4*k_2+k_3);  %main equation
    
    k_1 = h*fungsi2(x,y0,z,soal);
    k_2 = h*fungsi2(x+0.5*h,y0+0.5*k_1,z+0.5*k_1,soal);
    k_3 = h*fungsi2(x+h,y0-k_1+2*k_2,z-k_1+2*k_2,soal);

    z = z + (1/6)*(k_1+4*k_2+k_3);  %main equation

    x = x + h;
end

f = str2num(sprintf('%7f',z));