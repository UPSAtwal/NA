clc
clear all

f =@(x) x*x-x-12;
fplot(f)
a = input('Enter start interval: ');
b = input('Enter end interval: ');
tol = input('Tolerable error: ');

while f(a)*f(b)>0
    sprintf('Root is not contained in [a,b]...Enter correct values\n')
    a = input('Enter start interval: ');
    b = input('Enter end interval: ');
end

while abs(b-a) > tol
    c = (a+b)/2;
    if f(c)== 0
        sprintf('The root of funtion is %d',c)
        return;
    else
        if f(a)*f(c)<0
            b=c;
        else
            a=c;
        end
    end
end
c = (a+b)/2;
sprintf('The approx root of function is %d',c)