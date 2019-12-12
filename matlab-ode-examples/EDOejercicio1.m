%   Sergio Alvare Pelaez septiembre 2013

%   Dibujar el campo de pendientes y a funcion y(t)
%   "Mezcla de calculo numerico y simbolico"

clear all
close all
clc

f=@(t,y) -t.*y.^2;
t=-1:0.2:1;
y=-2:0.4:3;
nt=length(t);
ny=length(y);
[t,y]=ndgrid(t,y);
dt=ones(nt,ny);
dy=f(t,y);
quiver(t,y,dt,dy)

clear all

y=dsolve('Dy=-t*y^2','y(0)=2')
fy=matlabFunction(y);
hold on
t=-1:0.2:1;
plot(t,fy(t))