function fp = newton_gregory_mundur(x,y,xs,n)

selang = cariselang(xs,x,n)
i = 0;
for k = selang(1) : selang(2)
    i = i + 1;
    xt(i) = x(k);
    yt(i) = y(k);
end
for k = 1 : n+1
    TS(k,1) = yt(k);
end
for k = 2 : n+1
    for i = k : n+1
        TS(i,k) = TS(i,k-1) - TS(i-1,k-1);
    end
end
h = xt(2) - xt(1);
s = (xs - xt(n+1))/h;
jumlah = TS(n+1,1);
for i = 2 : n+1
    suku = TS(n+1,i);
    for k = 1 : i-1
        suku = suku * (s+k-1);
    end
    suku = suku/faktorial(i-1);
    jumlah = jumlah + suku;
end
fp=str2num(sprintf('%.7f',jumlah));
%fp = jumlah;

