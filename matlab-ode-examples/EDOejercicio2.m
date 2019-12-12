%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc

y1=dsolve('2*(x^(1/2))*Dy=(1-y^(2))^(1/2)','y(0)=1')%solucion exacta
y2=dsolve('2*(x^(1/2))*Dy=(1-y^(2))^(1/2)','y(0)=2')%solucion exacta