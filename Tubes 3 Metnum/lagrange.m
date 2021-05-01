function y=lagrange(x,pointx,pointy,n)

m=size(pointx,2);
L=ones(m,size(x,2));
ab = cariselang(x,pointx,n);
if (size(pointx,2)~=size(pointy,2))
   fprintf(1,'\nERROR!\nPOINTX and POINTY must have the same number of elements\n');
   y=NaN;
else
   for i=ab(1):ab(2)
      for j=ab(1):ab(2)
         if (i~=j)
            L(i,:)=L(i,:).*(x-pointx(j))/(pointx(i)-pointx(j));
         end
      end
   end
   y=0;
   for i=ab(1):ab(2)
      y=y+pointy(i)*L(i,:);
   end
end
