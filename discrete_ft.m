function [X,w] = discrete_ft(x,Ts)
% DISCFFT [X,w] = discrete_ft(x,Ts)
%  
% Computes the Fourier transform of a discrete time signal
%  using the FFT.  The input is the sampled discrete
%  time signal x and the sampling time Ts.  The output is
%  the Discrete Time Fourier transform X(ejwTs) and the frequency vector w.
%
[n,m] = size(x);
if n<m,
  x = x';
end
Xn =fft(x);
N = length(x);
n = 0:N-1;
n(1) = eps;
X = Ts*Xn.';
w = 2*pi*n/N/Ts;