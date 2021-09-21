# **Code Description**

## Programming Assignment

### **Question**

One of the many applications of Internet of Things (IoT) consists of continuous monitoring of temperature
in an area. To that end, several temperature sensors are installed at different locations. These sensors
measure and store the recorded value of temperature over time. However, due to limitations of hardware,
the sensor memory needs to be cleared periodically and this is done by transmitting the stored values to
a base unit. Assume that x[n] denotes the samples of the true value of temperature recorded by a sensor.
However, it is found that the received signal y[n] at the base unit suffers from blur distortions and noise
(additive). Hence, the signal y[n] needs to be first processed so that we can recover x[n] from it. Assume
that blur happens via a system characterized an impulse response
 h[n] = 1/16 [1 4 6 4 1]
(assume that the center value of 6/16 corresponds to n = 0) Then, implement the following two approaches to

recover the original signal x[n] from distorted signal y[n].
1. First remove noise and then sharpen (deblur). Let the resulting signal be x1[n].
1. First sharpen (deblur) and then remove noise. Let the resulting signal be x2[n].

Now, compare x1[n] and x2[n] with x[n]. What conclusions can you draw from your observations? Also,
explain your observations from a theoretical perspective if possible.


## **Contents**

The folder will have the following components:

### x1[n]

This contains the MatLab codes for the output signal x1[n] which is formed by de-noising then sharpening the given distorted signal.

### x2[n]
This contains the MatLab codes for the output signal x2[n] which is formed by de-blurring then removing noise from the given distorted signal.


### Report

The required conclusions and results of the assignment.

### ReadMe file

Pre-requisite information about the assignment and necessary intel to run the provided code.

## **How to run the Code**

The following codes are written in MatLab which can be downloaded from
[here](https://in.mathworks.com/products/matlab.html).

After sucessfully installing MatLab, open the folders to get the code files in MatLab interface.

There after, import the provided data(also attached with the folders) in the MatLab workspace using the import button in the 'Home' tab OR right click the data.csv file and workspace.mat file and import the data.

After setting up the interface required plot the results, follow the below steps as per the plot required:

### **For x1[n]:**

Follow the follwing sequence and run each part of the code in order

1. de_noise.m

        main denoise function

1. Hjw.m

        sampling and fourier of h

1. fourier_dt.m

        calculation of fourier transform of denoised signal


1. de_blur.m

        division of the obtained fouriers

1. inverse_dt.m

        taking fourier inverse and retrieving the signal

After following the sequence, a graph will be shown at the end of executing the "inverse_dt.m" file which will be the final graph of x1[n].

### **For x2[n]:**

Follow the follwing sequence and run each part of the code in order

1. Hjw.m 

        sampling and fourier of h

1. fourier_dt.m

        calculation of fourier transform of denoised signal


1. de_blur.m

        division of the obtained fouriers

1. inverse_dt.m

        taking fourier inverse to deblur

1. de_noise.m - main denoise function 

        denoising and retrieving the signal


After following the sequence, a graph will be shown at the end of executing the "denoise.m" file which will be the final graph of x2[n].

For assistance and quick running of the code, workspace provided can also be imported and only the 5th point of the code sequence can be executed, however this would still require the editor window to be active.

## **Authors**

Aaditya Baranwal (B20EE001)

Haardik Ravat (B20EE021)

## Citations:

[Mathworks](https://in.mathworks.com/products/matlab.html)

[EEL2010](https://sites.google.com/iitj.ac.in/eel2010/)

