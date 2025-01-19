% Clear workspace, command window, and close all figures
clc;
clear all;
close all;

% Load the color image and convert it to grayscale
colorimg = imread("yellowlily.jpg"); % Load the color image
grayImage = rgb2gray(colorimg);      % Convert the image to grayscale

% Display the grayscale and color images side-by-side
figure;
montage({grayImage, colorimg}, 'Size', [1 2]);
title('Grayscale Image (Left) and Original Color Image (Right)');

% Initialize variables
L = 256;                          % Number of gray levels (8-bit image)
[M, N] = size(grayImage);         % Dimensions of the grayscale image
histogram = zeros(1, L);          % Preallocate histogram array

% Compute the histogram manually
for ii = 1:M
    for jj = 1:N
        pixel_value = grayImage(ii, jj); % Get pixel intensity
        histogram(pixel_value + 1) = histogram(pixel_value + 1) + 1; 
    end
end

% Normalize the histogram
total_pixels = sum(histogram);          % Total number of pixels in the image
normalized_histogram = histogram / total_pixels; % Probability of each intensity

% Compute the cumulative distribution function (CDF)
cdf = cumsum(normalized_histogram);     % Cumulative sum of the normalized histogram
cdf_min = min(cdf(cdf > 0));            % Minimum non-zero value in the CDF

% Normalize the CDF to the range [0, L-1]
normalized_cdf = round((cdf - cdf_min) / (1 - cdf_min) * (L - 1));

% Apply the equalized intensity values to create the new image
equalized_image = uint8(normalized_cdf(grayImage + 1));

% Compute the histogram of the equalized image
equalized_histogram = imhist(equalized_image);

% Plot the original grayscale histogram
figure;
bar(0:L-1, histogram, 'BarWidth', 1, 'FaceColor', [0.5 0.5 0.5]);
xlabel('Pixel Intensity (0-255)');
ylabel('Frequency');
title('Histogram of Original Grayscale Image');
grid on;

% Plot the equalized histogram
figure;
bar(0:L-1, equalized_histogram, 'BarWidth', 1, 'FaceColor', 'g');
xlabel('Pixel Intensity (0-255)');
ylabel('Frequency');
title('Histogram of Equalized Image');
grid on;

% Display the original and equalized images side-by-side
figure;
montage({grayImage, equalized_image}, 'Size', [1 2]);
title('Original Grayscale Image (Left) vs Equalized Image (Right)');

% Overlay the CDF on the histogram of the original grayscale image
figure;
yyaxis left;
bar(0:L-1, histogram, 'BarWidth', 1, 'FaceColor', [0.5 0.5 0.5]);
xlabel('Pixel Intensity (0-255)');
ylabel('Frequency');
title('Histogram and CDF of Original Grayscale Image');
grid on;

yyaxis right;
plot(0:L-1, cdf, 'r', 'LineWidth', 2);
ylabel('Cumulative Distribution Function (CDF)');
legend('Histogram', 'CDF');


% Compute the CDF of the equalized image
equalized_cdf = cumsum(equalized_histogram / total_pixels);

% Plot the histogram and CDF of the equalized grayscale image in the same graph
figure;
bar(0:L-1, equalized_histogram, 'BarWidth', 1, 'FaceColor', 'g'); % Plot histogram
hold on;
plot(0:L-1, equalized_cdf * max(equalized_histogram), 'r', 'LineWidth', 2); % Plot scaled CDF
xlabel('Pixel Intensity (0-255)');
ylabel('Frequency / Scaled CDF');
title('Histogram and CDF of Equalized Image');
legend('Equalized Histogram', 'Equalized CDF (Scaled)');
grid on;