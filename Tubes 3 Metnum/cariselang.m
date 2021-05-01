function ab=cariselang(x,pointx,n)

NE = size(pointx,2);
if (n==0)                                   %tidak ada masukan derajat
    ab(1) = 1;
    ab(2) = NE;
elseif (n >= NE)
    fprintf('\nERROR!\ndimensi harus kurang dari %d\n',NE);
    ab(1) = NaN;
    ab(2) = NaN;
else
	jd = n+1;                               %derajat n perlu n+1 data
    if (mod(jd,2)==0)                       %jumlah data genap
        i=1;
        ab(1) = NaN;                        %inisialisasi ab
        ab(2) = NaN;
        while(pointx(i)<=x)                 %pencarian selang awal dan akhir
            ab(1) = i; 
            i=i+1;
            ab(2) = i;
        end
        if (isnan(ab(1)))
            fprintf('\nERROR!\nnilai yang dicari berada di luar polinom (ekstrapolasi)\n');
        end
        ab(1) = ab(1) - floor(n/2);         %pergerseran selang jika dimensi > 1 & genap
        ab(2) = ab(2) + floor(n/2);
        while (ab(1)<1)                     %pergerseran selang jika selang kurang dari data pertama
            ab(1) = ab(1)+1; 
            ab(2) = ab(2)+1; 
        end
        while (ab(2)> NE)                   %pergerseran selang jika selang lebih dari data terakhir
            ab(2) = ab(2)-1;
            ab(1) = ab(1)-1;
        end
    else                                    %jumlah data ganjil
        selisih = 9999999;
        for i=1:NE;             %mencari titik tengah selang
            if (abs(x-pointx(i))<selisih)
                selisih = abs(x-pointx(i));
                center = i;
            end
        end    
        ab(1) = center - (n/2);             %pergerseran selang jika dimensi > 1 & ganjil
        ab(2) = center + (n/2);
        while (ab(1)<1)                     %pergerseran selang jika selang kurang dari data pertama
            ab(1) = ab(1)+1; 
            ab(2) = ab(2)+1;
        end
        while (ab(2)> NE)                   %pergerseran selang jika selang lebih dari data terakhir
            ab(2) = ab(2)-1;
            ab(1) = ab(1)-1;
        end
    end
end