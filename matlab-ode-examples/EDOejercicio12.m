%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc


% 'Dx=2*x-y+2*z'
% 'Dy=x+y-z'
% 'Dz=-x+y+z'

S=dsolve('Dx=2*x-y+2*z','Dy=x+y-z','Dz=-x+y+z','x(0)=1','y(0)=1','z(0)=1','t')

S.x

S.y

S.z

t=-1:0.01:1;

fy=matlabFunction(S.x);
plot(t,fy(t),'k')

hold on
fy=matlabFunction(S.y);
plot(t,fy(t),'r')

hold on
fy=matlabFunction(S.z);
plot(t,fy(t),'b')