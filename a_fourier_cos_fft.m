function [time,poly_cos,coefs_cos,faza_cos,polyaprox]=a_fourier_cos_fft(x,Ts,m)
% function [time,poly_cos,coefs_cos,faza_cos,polyaprox]=a_fourier_cos_fft(x,Ts,m)
%
% Analiza armonica Fourier a semnalului x, esantionat cu perioada Ts bazata
% pe transformata Fourier discreta (Fast Fourier Transform)
% intrari
%    x         - semnalul analizat
%    Ts        - perioada de esantionare
%    m         - numarul de polinoame trigonometrice tip cos( ) utilizate in analiza armonica 
% iesiri
%    time       - durata semnalului analizat
%    polycos    - polinoamele cosinusoidale modificate
%    coefs_cos  - coeficientii Fourier ai seriei cosinusoidale
%    faza_cos   - fazele seriei Fourier cosinusoidale
%    polyaprox  - aproximantul semnalului 
%  
%     Bibliografie:
%         V.Horga, T.Ganciu, Identificarea sistemelor continue. Teorie si aplicatii
%          Editura Politehnium, Iasi,2009, IV.1. Metoda caracterizarii
%          spectrale a semnalelor

%*** Verificare sintaxa utilizare functie ***
if nargin<3,error('Numarul argumentelor incorect!'),return,end
%    size(x,1) - determina numarul de linii
%    size(x,2) - determina numarul de coloane 
if size(x,1)>size(x,2),
    % x este vector coloana
	x=x';
    % x este vector linie
end
%*** Calcul numar esantioane semnal	
N=length(x);        
%*** Determinare orizont de timp pentru semnal
T=(N-1)*Ts; 
%*** Determinare pulsatie fundamentala
w0=2*pi/T;	
%*** Calcul vector timp  
time=Ts*(0:(N-1));
%     initializare vector coeficienti
coefs_cos=zeros(1,m+1);
%     initializare vector faza
faza_cos=zeros(1,m+1);
%*** Calcul transformata Fourier discreta a semnalului x
X=Ts*fft(x);

%*** Calcul coeficienti Fourier -serie cosinusoidala
%     parametrii pentru componenta continua
coefs_cos(1)=1/(N*Ts)*abs(X(1));
faza_cos(1)=0;
for i=2:m+1
	coefs_cos(i)=2/(N*Ts)*abs(X(i));
    faza_cos(i)=atan2(imag(X(i)),real(X(i))); 
end

%*** Construirea setului de polinoame cosinusoidale Fourier si determinarea
%    valorilor in punctele de discretizare
%*** Initializare matrice polinoame 
poly_cos=zeros(m+1,N);
poly_cos(1,:)=ones(1,N);
for i=1:m,
   poly_cos(i+1,:)  =cos(i*w0*time+faza_cos(i+1));
end

%*** Calcul aproximant
polyaprox=zeros(1,N);
for i=1:m+1
   	polyaprox=polyaprox+coefs_cos(i)*poly_cos(i,:);
end
