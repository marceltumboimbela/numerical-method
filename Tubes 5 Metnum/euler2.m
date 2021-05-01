function e = euler2(x0,y0,b,h,soal)

global z;
n = (b-x0)/h;
x=0.5;
y = x0;
z = y0;
if soal==5.3
    soal_turunan=7;
else
    soal_turunan=6;
end

for r = 1 : n
    %x = x + (h * fungsi(x0,y,soal+5));
    y0 = y;
    y = y + (h * fungsi(x,y,soal_turunan));
    z = z + (h * fungsi(x,y0,soal));
    x = x + h;
end

e = str2num(sprintf('%7f',z));
    