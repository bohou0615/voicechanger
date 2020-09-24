## high quality voice changers

# Idea
In this project, we aim to change the frequency of the human voice and make the changed voice more natural without being detected robotic sounds.

# Method
Here, we apply three different methods to do this task. First is Phase vocoder, second is sinusoidal modeling and third is Straight vocoder. 
The first and second methods are based on Short-time Fast Fourier transform. Moreover, we add some smooth function in the second method in order to improve the quality of the human voice
The thrid method utilizes legacy-STRAIGHT tool.

# Result
Below is the comparison of quality and the rate of transforming among these three methods.

Method                | Quality | Rate |
----------------------|:-------:|-----:| 
Phase vocoder         |  worst  | fast |
sinusoidal modeling   |  medium |  mid |
Straight vocoder      |  best   | slow |   


# Author
This project is completed by Po-Hao WU and Yu-Cheng Hsiao

# Note
* Main file is in DSP_Final. 
* other .m files are for the second method. 
* Straight Vocoder is downloaded from https://github.com/HidekiKawahara/legacy_STRAIGHT.git  
* DSP System Toolbox and Wavelet Toolbox are required 
* Audio files are not uploaded beased on the personal privacy 
* Report, named Team 10, is written in Chinese and Supplementary constituted of figures of the report.

# Reference
1.  Pitch Shifting and Time Dilation Using a Phase Vocoder in MATLAB https://ww2.mathworks.cn/help/audio/ug/pitch-shifting-and-time-dilation-using-a-phase-vocoder-in-matlab.html;jsessionid=f0f3f57fe27c3d826ac71a646ceb
2.  EE664100 Analysis and synthesis of digital audio signals-Lec6 SinMod
3.  Legacy STRAIGHT
