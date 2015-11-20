function [ y ] = fast_convolve( x, h )
    if(length(x) <= length(h))
        s = x; l = h;
    else
        s = h; l = x;
    end;
   
    m = ceil(length(l)/ length(s));
    
    %double length of shorter signal with 0s
    s1 = s;
    s1(2*length(s)) = 0;
    S1 = fft(s1);

    mat = cell(m,1);
    for n = 1:m
     %take chunk (shorter signal sized) of longer signal, double length of chunk with 0s
        %l1 = zeros(length(s));
        startIndex = 1 + (n-1)*length(s);
        try
            l1 = l(startIndex:startIndex+length(s));
        catch
            l1 = l(startIndex:end);
        end
        l1(2*length(s)) = 0;
    
        L1 = fft(l1);
        Y1 = L1.*S1;
        y1 = ifft(Y1);
    
        mat{n} = y1; 
    end
    
    a = zeros(m, (length(s)* (m+1) ));
    for z = 1:m
        a(z, [1:length(s1)] + (length(s)*(z-1))) = mat{z};
    end
    y = sum(a);
    y((length(s) + length(l)):end) = [];
end

