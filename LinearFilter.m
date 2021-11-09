function [ Out ] = LinearFilter( img,filter,postproc )
[Hfilter,Wfilter] = size(filter);
[H,W,L] = size(img);
Out = double(zeros(H,W,L));
padsize = uint8(Hfilter/2)-1;
tempbuffer = padarray (img,[double(padsize),double(padsize)],0,'both');
for i = 1:H
    for j = 1:W
        val =0;
        for k= 1:Hfilter
            for z = 1:Hfilter
                val = val +(tempbuffer(i+k-1,j+z-1)*filter(k,z));
            end
        end
        if (strcmp(postproc,'cutoff')==1)
            val = uint8(val);
        elseif (strcmp(postproc , 'absolute')==1)
            val = abs(val);
        end
        Out(i,j)= val;
    end
end
figure,imshow(uint8(Out));
end


