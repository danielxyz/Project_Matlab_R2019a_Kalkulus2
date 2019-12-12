%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc


y=dsolve('D2y+2*Dy=exp(x)','y(0)=1','Dy(0)=0','x')

syms x

%   iguales_si_cero:
diff(diff(y))+2*diff(y)-exp(x)