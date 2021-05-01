function fp=faktorial(p)
fak = 1;
for k = 2 : p
    fak = fak * k;
end
fp = fak;