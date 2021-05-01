function heun = heun(x0,y0,b,h,soal)

n = (b-x0)/h;
y = y0;
x = x0;

for r = 1 : n
    y_s = y;
    y = y + (h * fungsi(x,y,soal));
    y = y_s + h/2 * (fungsi(x,y_s,soal) + fungsi(x+h,y,soal));
    x = x + h;
end

heun = str2num(sprintf('%7f',y));
    