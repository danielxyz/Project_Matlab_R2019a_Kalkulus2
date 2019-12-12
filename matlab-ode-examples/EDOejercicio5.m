%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc

y=dsolve('Dy=2*y+x^2','y(0)=1','x')

syms x

%   iguales_si_cero:
diff(y)-2*y-x^2