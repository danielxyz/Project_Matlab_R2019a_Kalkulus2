%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc


y=dsolve('D2y-y=sin(x)','y(0)=0','y(pi)=0','x')

x=0:0.01:pi;

fy=matlabFunction(y);
plot(x,fy(x))