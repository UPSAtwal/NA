clc
clear all

f =@(x) x*x-x-12;
df = @(x) 2*x-1;
g =@(x) x-(f(x)/df(x));

old = input('Enter one guess point: ');
tol = input('Tolerable error: ');

error = 10;
count = 0;

while error >= tol
    new = g(old);
    error = abs(new-old);
    old=new;
    count = count+1;
end
sprintf('The approx root of function is %d',new)
sprintf('no.of iterations : %d',count)