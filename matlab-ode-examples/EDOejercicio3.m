%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc


y=dsolve('x*Dy-y=2*(x^2)*y','y(1)=1','x')

x=-1:0.01:2;

fy=matlabFunction(y);
plot(x,fy(x))

hold on
plot(1,1,'*r')