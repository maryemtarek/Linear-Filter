function[res]=EdgeMagnit(I)
res =uint8( LinearFilter(I,Sobel('H'),'absolute')+LinearFilter(I,Sobel('V'),'absolute'));
end