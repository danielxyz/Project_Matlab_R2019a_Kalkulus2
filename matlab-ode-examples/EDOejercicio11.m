%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc


y=dsolve('D2y-2*Dy=cos(2*x)','y(-pi)=0','Dy(pi)=0','x')

x=-pi:0.01:pi;

fy=matlabFunction(y);
plot(x,fy(x))

