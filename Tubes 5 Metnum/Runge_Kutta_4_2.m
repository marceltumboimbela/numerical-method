function f = Runge_Kutta_4_2(x0,y0,b,h,soal)

global z;
x=0.5;
y = x0;
z = y0;
F_xy = @(x,y,soal) fungsi(x,y,soal);
if soal==5.3
    soal_turunan=7;
else
    soal_turunan=6;
end

for i=1:((b-x0)/h)   %calculation loop
    k_1 = h*F_xy(x,y,soal_turunan);
    k_2 = h*F_xy(x+0.5*h,y+0.5*k_1,soal_turunan);
    k_3 = h*F_xy((x+0.5*h),(y+0.5*k_2),soal_turunan);
    k_4 = h*F_xy((x+h),(y+k_3),soal_turunan);
    
    y0=y;
    y = y + (1/6)*(k_1+2*k_2+2*k_3+k_4);  %main equation
    
    k_1 = h*fungsi2(x,y0,z,soal);
    k_2 = h*fungsi2(x+0.5*h,y0+0.5*k_1,z+0.5*k_1,soal);
    k_3 = h*fungsi2((x+0.5*h),(y0+0.5*k_2),(z+0.5*k_2),soal);
    k_4 = h*fungsi2((x+h),(y0+k_3),(z+k_3),soal);
    
    z = z + (1/6)*(k_1+2*k_2+2*k_3+k_4);  %main equation
    %x = x + h;
end

f = str2num(sprintf('%7f',z));