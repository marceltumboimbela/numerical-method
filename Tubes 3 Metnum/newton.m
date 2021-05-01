function fp = newton(x,pointx,pointy,n)

NE = size(pointx,2);
a(1) = pointy(1);
for k = 1 : NE - 1
   d(k, 1) = (pointy(k+1) - pointy(k))/(pointx(k+1) - pointx(k));
end
for j = 2 : NE - 1
   for k = 1 : NE - j
      d(k, j) = str2num(sprintf('%7f',(d(k+1, j - 1) - d(k, j - 1))/(pointx(k+j) - pointx(k))));
   end
end
d
for j = 2 : NE
   a(j) = d(1, j-1);
end
Df(1) = 1;
c(1) = a(1);
for j = 2 : n+1
   Df(j)=(x - pointx(j-1)) .* Df(j-1);
   c(j) = a(j) .* Df(j)
end
fp=str2num(sprintf('%7f',sum(c)));