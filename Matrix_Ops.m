clc
clear all
x = input('Enter size of array as x: ');
fprintf('%f\n',x)
if rem(x,2)==0
    sprintf('Even number')
else
    sprintf('Odd Number')
end
for i=x:-1:1
    fprintf('%f, ',i)
end
sprintf('Array one values....\n')
var A(x,x);
for i=1:1:x
    for j=1:1:x
        A(i,j) = input('');
    end
end
sprintf('Array two values....\n')
var B(x,x);
for i=1:1:x
    for j=1:1:x
        B(i,j) = input('');
    end
end
C = A*B
sprintf('\n');