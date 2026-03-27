function [d]=distanta(f,g)
% function [d]=distanta(f,g)
%
% Calculeaza distanta dintre doua semnale  
%  intrari:
%      f   - primul semnal
%      g   - al doilea semnal
%  iesire:
%      d   - distanta dintre semnale 
%

%*** Verificare sintaxa utilizare functie ***
if nargin<2,error('Numarul argumentelor incorect!'),return,end

%    size(x,1) - determina numarul de linii
%    size(x,2) - determina numarul de coloane 
if size(f,1)>size(f,2),
    % f este vector coloana
	f=f';
    % f este vector linie
end
if size(g,1)>size(g,2),
    % g este vector coloana
     g=g';
    % g este vector linie    
end
%*** Calcul eroare 
    e=f-g;
%*** Determinare distanta
    d=(e*e')^(1/2);
    