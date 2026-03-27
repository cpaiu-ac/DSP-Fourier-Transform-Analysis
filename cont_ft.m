function [X,w] = cont_ft(x,Ts)
% CONTFFT [X,w] = cont_ft(x,Ts)
%  
% Computes the Fourier transform of a continuous time signal
%  using the FFT.  The input is the sampled continuous
%  time signal x and the sampling time Ts.  The output is
%  the Fourier transform X(jw) and the frequency vector w.
%
[n,m] = size(x);
if n<m,
  x = x';
end
Xn = fft(x);
N = length(x);
n = 0:N-1;
n(1) = eps;
X = (1-exp(-j*2*pi*n/N))./(j*2*pi*n/N/Ts).*Xn.';
w = 2*pi*n/N/Ts;