function heun = heun2(x0,y0,b,h,soal)

global z;
n = (b-x0)/h;
x=0.5;
y = x0;
z = y0;
y_s=y0;
if soal==5.3
    soal_turunan=7;
else
    soal_turunan=6;
end

for r = 1 : n   
    y_s = y;
    y = y + (h * fungsi(x,y,soal_turunan));
    y = y_s + h/2 * (fungsi(x,y_s,soal_turunan) + fungsi(x+h,y,soal_turunan));
    z_s = z;
    z = z + (h * fungsi2(x,y_s,z,soal));
    z = z_s + h/2 * (fungsi2(x,y_s,z_s,soal) + fungsi2(x+h,y_s,z,soal));
    x = x + h;
end

heun = str2num(sprintf('%7f',z));
    