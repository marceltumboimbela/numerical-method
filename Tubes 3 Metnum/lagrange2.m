function L = lagrange2(x,y,headerx,headery,matrix,nx,ny)

abx = cariselang(x,headerx,nx);
i=1;

for j = abx(1) : abx(2)
   py(i) = lagrange (y, headery, matrix(j,:),ny);
   i=i+1;
end

L = lagrange(x,headerx(abx(1):abx(2)),py,nx);