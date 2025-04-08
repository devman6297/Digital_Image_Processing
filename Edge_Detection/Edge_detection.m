clc;
clear all;
close all;
colorimg = imread('yellowlily.jpg');
grayimg = rgb2gray(colorimg);
grayimg = double(grayimg);  % Convert to double for processing

% Define masks for Roberts Operator
roberts_x = [1 0; 0 -1];
roberts_y = [0 1; -1 0];

% Define masks for Sobel Operator
sobel_x = [-1 0 1; -2 0 2; -1 0 1];
sobel_y = [-1 -2 -1; 0 0 0; 1 2 1];

% Define masks for Prewitt Operator
prewitt_x = [-1 0 1; -1 0 1; -1 0 1];
prewitt_y = [-1 -1 -1; 0 0 0; 1 1 1];

% Apply Roberts Operator
Gx_roberts = conv2(grayimg, roberts_x, 'same');
Gy_roberts = conv2(grayimg, roberts_y, 'same');
roberts_edge = sqrt(Gx_roberts.^2 + Gy_roberts.^2);

% Apply Sobel Operator
Gx_sobel = conv2(grayimg, sobel_x, 'same');
Gy_sobel = conv2(grayimg, sobel_y, 'same');
sobel_edge = sqrt(Gx_sobel.^2 + Gy_sobel.^2);

% Apply Prewitt Operator
Gx_prewitt = conv2(grayimg, prewitt_x, 'same');
Gy_prewitt = conv2(grayimg, prewitt_y, 'same');
prewitt_edge = sqrt(Gx_prewitt.^2 + Gy_prewitt.^2);

% Display results
figure;
subplot(2,2,1), imshow(uint8(grayimg)), title('Grayscale Input Image');
subplot(2,2,2), imshow(uint8(roberts_edge)), title('Roberts Edge');
subplot(2,2,3), imshow(uint8(sobel_edge)), title('Sobel Edge');
subplot(2,2,4), imshow(uint8(prewitt_edge)), title('Prewitt Edge');
