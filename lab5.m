clear all;
clc
%% ex1
Ts = 0.01;
[X, w] = discrete_ft(x_semnal, Ts);
modulsemnal = sqrt(real(X).^2 + imag(X).^2);
figure;
stem(w, modulsemnal);
title('Densitatea spectrala de amplitudine a semnalului discret');
xlabel('rad/s');

%% ex2

[xn, fs] = audioread('Audio_1.mp3');
Ts = 1/fs;
[X,w] = discrete_ft(xn,Ts);
modulImpDrept=sqrt(real(X).^2+imag(X).^2);
figure(1);plot(w,modulImpDrept);
title('Densitatea spectrala de amplitudine a impulsului dreptunghiular discret')

%%

[xn, fs] = audioread('Audio_2.mp3');
Ts = 1/fs;
[X,w] = discrete_ft(xn,Ts);
modulImpDrept=sqrt(real(X).^2+imag(X).^2);
figure(1);plot(w,modulImpDrept);
title('Densitatea spectrala de amplitudine a impulsului dreptunghiular discret')

%%

[xn, fs] = audioread('Audio_3.mp3');
Ts = 1/fs;
[X,w] = discrete_ft(xn,Ts);
modulImpDrept=sqrt(real(X).^2+imag(X).^2);
figure(1);plot(w,modulImpDrept);
title('Densitatea spectrala de amplitudine a impulsului dreptunghiular discret')

%%

[xn, fs] = audioread('Audio_4.mp3');
Ts = 1/fs;
[X,w] = discrete_ft(xn,Ts);
modulImpDrept=sqrt(real(X).^2+imag(X).^2);
figure(1);plot(w,modulImpDrept);
title('Densitatea spectrala de amplitudine a impulsului dreptunghiular discret')

%%

[xn, fs] = audioread('Audio_5.mp3');
Ts = 1/fs;
[X,w] = discrete_ft(xn,Ts);
modulImpDrept=sqrt(real(X).^2+imag(X).^2);
figure(1);plot(w,modulImpDrept);
title('Densitatea spectrala de amplitudine a impulsului dreptunghiular discret')

%%

[xn, fs] = audioread('Audio_6.mp3');
Ts = 1/fs;
[X,w] = discrete_ft(xn,Ts);
modulImpDrept=sqrt(real(X).^2+imag(X).^2);
figure(1);plot(w,modulImpDrept);
title('Densitatea spectrala de amplitudine a impulsului dreptunghiular discret')

%%

[xn, fs] = audioread('Audio_7.mp3');
Ts = 1/fs;
[X,w] = discrete_ft(xn,Ts);
modulImpDrept=sqrt(real(X).^2+imag(X).^2);
figure(1);plot(w,modulImpDrept);
title('Densitatea spectrala de amplitudine a impulsului dreptunghiular discret')
