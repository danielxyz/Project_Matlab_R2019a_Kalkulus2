%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc


y=dsolve('D3y+2*D2y+Dy=exp(x)','y(0)=1','Dy(0)=0','D2y(0)=1','x')

syms x

%   iguales_si_cero:
diff(diff(diff(y)))+2*diff(diff(y))+diff(y)-exp(x)

