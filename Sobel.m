function [res]=Sobel(Mask)
if (strcmp(Mask,'H')==1)
    res = [-1 -2 -1; 0 0 0;1 2 1]
elseif (strcmp(Mask,'V')==1)
    res = [-1 0 1; -2 0 2;-1 0 1]
end
end