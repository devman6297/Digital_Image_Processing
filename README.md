# 📸 Digital Image Processing Labs  

This repository contains practical implementations of fundamental **Digital Image Processing (DIP)** techniques, covering **color image processing, histogram equalization, bit plane slicing, and Shannon-Fano coding for image compression**. Each lab focuses on a key concept in image processing with step-by-step execution.

---

## 📚 **Labs Overview**

### 🟢 **Lab 1: Introduction to Color Images**
**Objective:** Understand how color images are represented in digital format using the **RGB color model** and how to process them.

✔️ Reading and displaying color images.  
✔️ Extracting individual **Red (R), Green (G), and Blue (B)** color channels.  
✔️ Converting a color image to **grayscale** for further processing.  
✔️ Visualizing the impact of each color component on the image.


---

### 🟠 **Lab 2: Histogram Equalization**
**Objective:** Enhance image contrast using **histogram equalization**, a technique that spreads out intensity levels more evenly.

✔️ Converting an image to **grayscale**.  
✔️ Computing and visualizing the **histogram** of the image.  
✔️ Computing the **Cumulative Distribution Function (CDF)**.  
✔️ Mapping pixel values using the CDF to create an **equalized image**.  
✔️ Comparing the **before and after** effect of histogram equalization.



---

### 🔵 **Lab 3: Bit Plane Slicing**
**Objective:** Analyze and extract different **bit planes** of an image to understand their significance in image formation.

✔️ Decomposing an image into **8-bit planes**.  
✔️ Understanding how **higher** bit planes contribute to image details.  
✔️ Observing how **lower** bit planes capture fine details/noise.  
✔️ Combining selected bit planes for customized image reconstruction.



---

### 🔴 **Lab 4: Shannon-Fano Coding (Image Compression)**
**Objective:** Implement **Shannon-Fano coding**, an entropy-based algorithm used for lossless image compression.

✔️ Understanding **probability-based encoding**.  
✔️ Sorting intensity values based on **frequency**.  
✔️ Constructing **variable-length codes** for efficient compression.  
✔️ Using MATLAB to generate Shannon-Fano codes dynamically.  
✔️ Comparing the effectiveness of Shannon-Fano with **uniform encoding**.

#### **Shannon-Fano Algorithm Process:**
1. Compute the **probability distribution** of intensity values.  
2. Sort probabilities in **descending order**.  
3. Recursively **divide** probability groups into two halves.  
4. Assign **binary codes** to each group.  
5. Generate **compressed bit sequences** for image encoding.  


---

## 🛠 How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/Digital_Image_Processing.git
   cd Digital_Image_Processing
