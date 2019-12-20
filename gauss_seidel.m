function [x,it] = gauss_seidel(a,b,input)

a;
b;
iter = 50;
eps = 0.00001;
x=input;
old_x = input;
error=[];
%x=[];
n = size(a);
n = n(1);

%for i = 1:n
%x(i) = 0;
%end

for it = 1:iter
for i = 1:n
     
    sum=0;
    for j = 1:n
        if i ~= j
        sum = sum + a(i,j)*x(j);
        end
    end
    x(i) = (b(i)-sum) /a(i,i);
    error(i) = abs(  (x(i) - old_x(i)) / x(i) ) ;
   
    
end
old_x = x;
x;
error;
%%% check for convergence
converge = true;
for e = 1:n
    if error(e) > eps
        converge = false;
    end
end

if converge 
    it 
    break
end

end
