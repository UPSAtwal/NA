clc
clear all

f =@(x) x*x-x-12;
df = @(x) 2*x-1;

old = input('Enter one guess point: ');
tol = input('Tolerable error: ');

error = 10;
count = 0;

while error >= tol
    if df(old) == 0
        sprintf('Derivative is zero\n')
    end
    new = old - f(old)/df(old);
    error = abs(new-old);
    old=new;
    count = count+1;
end
sprintf('The approx root of function is %d',new)
sprintf('no.of iterations : %d',count)