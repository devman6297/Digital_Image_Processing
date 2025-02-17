# Digital Image Processing - Lab 1

Introduction to Color Images

Color images are composed of three primary color channels: Red (R), Green (G), and Blue (B). Each channel represents intensity values for its respective color, combining to form a full-color image. Understanding how to process these channels individually is fundamental in digital image processing.

This lab introduces you to:

Reading color images.

Extracting individual color components (R, G, B).


Converting color images to grayscale.




# Digital Image Processing - Lab 2



This lab focuses on implementing Histogram Equalization for grayscale images to enhance their contrast. The key objective is to improve image quality by redistributing the intensity levels more uniformly across the entire dynamic range.





# Steps Performed in Lab-2





-->Loading and Grayscale Conversion:


A color image is loaded using imread().
The image is converted to grayscale using rgb2gray() for easier processing.



-->Histogram Computation:


The intensity levels of the grayscale image are analyzed, and the histogram is computed manually.
Each intensity level's frequency is calculated using nested loops.



-->Cumulative Distribution Function (CDF):


The cumulative distribution function (CDF) of the normalized histogram is computed.
The minimum CDF value (cdf_min) is used to map intensity values to their new equalized levels.



-->Histogram Equalization:


The grayscale image is transformed using the normalized CDF values to produce an equalized image.
This ensures a more uniform distribution of pixel intensities.



-->Visualization:


The original and equalized histograms are plotted.
The original and equalized grayscale images are displayed side-by-side for comparison.
The CDF is overlaid on the histogram for both the original and equalized images to illustrate the redistribution of intensity levels.








# Lab 3: Bit Plane Slicing

## Overview
This lab explores **Bit Plane Slicing**, a technique used in image processing to analyze and manipulate individual bit planes of an image. By decomposing an image into its binary representation, we can visualize how different bit planes contribute to the overall image structure. Lower bit planes capture finer details, while higher bit planes preserve significant image information.

## Objectives
- Understand the concept of bit plane slicing.
- Extract and visualize different bit planes of an image.
- Analyze the significance of each bit plane in image representation.

## Implementation
The program processes a grayscale image and extracts its **8-bit planes**, allowing observation of how each bit influences the image's appearance.


## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/bit-plane-slicing.git
   cd bit-plane-slicing










