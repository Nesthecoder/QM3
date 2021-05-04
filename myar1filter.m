function [mu,eps] = myar1filter(y,param)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
mu = zeros(length(y),1);
eps = zeros(length(y),1);
mu(1) = (param(1))/(1-param(2));
eps(1) = y(1) - mu(1);
for t = 2:length(y)
mu(t) = param(1) + param(2)*y(t-1)+ eps(t-1);
eps(t) = y(t) - mu(t);
end

