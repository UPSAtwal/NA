clc;
clear all;

A = [8 4 -2 0 ; 2 -10 -3 1 ; 6 4 -15 3 ; 2 0 -1 4];
B = [0 ; 4 ; -34 ; -8];
Y = [A B];
sprintf('Before guass elimination: ')
[n,m] = size(Y);

for i=1:1:n-1
    for k=i+1:1:n
        multi = Y(k,i) / Y(i,i);
        Y(k,:)= -multi * Y(i,:) + Y(k,:);
    end
        %sprintf('After pass %d :',i)
        %A
end

sprintf('After guass elimination: ')
Y

x=zeros(1,n);
for i=n:-1:1
    x(i) = ((Y(i,m) - sum(Y(i,1:n).*x))/(Y(i,i)));
end

x