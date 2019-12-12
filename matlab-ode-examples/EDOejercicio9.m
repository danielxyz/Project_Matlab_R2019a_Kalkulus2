%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc


y=dsolve('Dy=t*y+t*exp(t^2)*y^2','y(0)=2')

t=-1.5:0.01:1.5;

fy=matlabFunction(y);
plot(t,fy(t))

hold on
plot(1,1,'*r')