%   Sergio Alvare Pelaez septiembre 2013

clear all
close all
clc


% 'Dx=x+2*y+2*z'
% 'Dy=2*x+7*y+z'
% 'Dz=2*x+y+7*z'

S=dsolve('Dx=x+2*y+2*z','Dy=2*x+7*y+z','Dz=2*x+y+7*z','x(0)=1','y(0)=0','z(0)=1.5','t')

S.x

S.y

S.z