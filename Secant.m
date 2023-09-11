clc
clear all

f =@(x) x*x-x-12;

a = input('Enter start interval: ');
b = input('Enter end interval: ');
tol = input('Tolerable error: ');

while f(a)*f(b)>0
    sprintf('Root is not contained in [a,b]...Enter correct values\n')
    a = input('Enter start interval: ');
    b = input('Enter end interval: ');
end

while abs(b-a) > tol
    c = b - ((a - b)/ (f(a) - f(b)))*f(b);
    a=b;
    b=c;
end
sprintf('The approx root of function is %d',c)