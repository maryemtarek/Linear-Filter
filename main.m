Img = imread('D:\Image Processing\Lab 3\Task\I.bmp');
%B = [ 1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25; 1/25 1/25 1/25 1/25 1/25 ];
%B=[-1 -2 -1; 0 0 0; 1 2 1];
%B = Sobel('H');
%B = LaplacianSharp();
figure ,imshow(Img);
B = EdgeMagnit(double(Img));
%figure,imshow(B);
%x =LinearFilter(double(Img),B,'absolute');
figure,imshow(B);



