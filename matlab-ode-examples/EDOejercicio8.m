%   Sergio Alvare Pelaez septiembre 2013

%   Dibujar el campo de pendientes y a funcion y(t)
%   "Mezcla de calculo numerico y simbolico"

%  A PARTIR DE EDOejercicio1.m:

clear all
close all
clc

f=@(t,y) -t.*y+t.*exp(t.^2)*2.*y;
t=-1:0.3:1;
y=-2:0.4:3;
nt=length(t);
ny=length(y);
[t,y]=ndgrid(t,y);
dt=ones(nt,ny);
dy=f(t,y);
quiver(t,y,dt,dy)

clear all

y=dsolve('Dy=-t*y+t*exp(t^2)*2*y','y(0)=2')
fy=matlabFunction(y);
hold on
t=-1:0.3:1;
plot(t,fy(t))