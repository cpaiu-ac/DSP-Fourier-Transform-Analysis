% Aproximarea optima a semnalului folosind analiza Fourier
%                (Seria Fourier polara calculata cu ajuorul algoritmului FFT)
close all
D=[];



for i=1:50
   [tn,P,C,F,Pa]=a_fourier_cos_fft(x,Ts,i);
    d=distanta(x(1:length(tn)),Pa);
    D=[D d];
end
ordin_aprox=1:i;
figure
stem(ordin_aprox,D);
xlabel('Timp [s]')
ylabel('y - y_a [%]');
grid
% title(['Aproximantul de ordinul - ' num2str(ordin_aprox,3)]);
[value,ordin_min_aprox]=min(D);
[tn,P,C,F,Pa]=a_fourier_cos_fft(x,Ts,ordin_min_aprox);
figure
plot(tn,x)
grid
hold on
plot(tn,Pa,'r')
xlabel('Timp [s]')
ylabel('y - y_a [%]');
title(['Aproximantul de ordinul - ' num2str(ordin_min_aprox,3)]);
figure
subplot(211)
f0=1/T;
frecventa=f0*(0:ordin_min_aprox);
stem(frecventa,C)
ylabel('Coeficientii spectrali c_i');
title(['Dezvoltare in serie Fourier cosinusoidala (folosind FFT) de ordinul - ' num2str(ordin_min_aprox)]);
grid
subplot(212)
stem(frecventa,F*180/pi)
xlabel('frecventa [Hz]');
ylabel('Faza [grade]');
grid

