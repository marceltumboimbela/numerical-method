function e = euler(x0,y0,b,h,soal)

n = (b-x0)/h;
y = y0;
x = x0;

for r = 1 : n
    y = y + (h * fungsi(x,y,soal));
    x = x + h;
end

e = str2num(sprintf('%7f',y));
    