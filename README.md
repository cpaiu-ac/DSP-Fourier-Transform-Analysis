# DSP-Fourier-Transform-Analysis
# Digital Signal Processing: FFT & Harmonic Analysis

## 📌 About the Project
This repository contains a suite of MATLAB scripts developed for advanced Digital Signal Processing (DSP). The project focuses on frequency-domain analysis of continuous and discrete-time signals using the Fast Fourier Transform (FFT). 

Understanding signal spectrums, harmonic reconstruction, and spectral density is essential in fields like Automotive Engineering (sensor filtering, NVH analysis), Telecommunications, and embedded data processing.

## ⚙️ Core Features
* **Discrete & Continuous Fourier Transforms:** Custom implementations to compute the Fourier transform for both discrete ($X(e^{j\omega T_s})$) and continuous-time signals.
* **Harmonic Analysis & Signal Reconstruction:** Calculates the Fourier cosine series coefficients and phases to find the optimal approximation of a given signal.
* **Audio Signal Processing:** Reads and processes real-world audio files (`.mp3`), extracting and visualizing their amplitude spectral density.
* **Error Optimization:** Iteratively determines the optimal polynomial order for signal reconstruction by minimizing the Euclidean distance between the original and the approximated signal.

## 🛠️ Tech Stack & Concepts
* **Environment:** MATLAB
* **Concepts:** Digital Signal Processing (DSP), Fast Fourier Transform (FFT), Spectral Density, Harmonic Approximation, Mathematical Modeling.

## 📁 Repository Structure
* `lab5.m` - The main execution script analyzing the spectral density of an array of audio signals and a base discrete signal.
* `a_fourier_cos_fft.m` - Core algorithm for harmonic Fourier analysis, returning modified cosine polynomials, coefficients, and phases.
* `Analiza_armonica_fft.m` - Iterative script that plots the error margins and visualizes the optimal signal reconstruction against the original data.
* `discrete_ft.m` / `cont_ft.m` - Helper functions computing the Discrete and Continuous Time Fourier Transforms using MATLAB's built-in `fft()` function.
* `distanta.m` - Utility function computing the Euclidean distance (error) between two signal vectors.
