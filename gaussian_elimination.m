function [s] = gaussian_elimination(a,b)



%%% FORWARD ELIMINATION
n = size(a);
n = n(1);
happened = false;


for k = 1:n-1
% pick pivot

%pivot
max=0;
for p = k:n
    if abs(a(p,k)) > max
        happened = true;
        max = abs(a(p,k));
        max_i = p;
    end
end

if happened
a([k max_i],:)=a([max_i k],:);
b([k max_i],:)=b([max_i k],:);
happened = false;
end



a;

if a(k,k) == 0
    error "division by zero"
end
    
  for i = k+1:n
    %
        fac_u = a(i,k)*1.0 ; 
        fac_d= a(k,k)*1.0 ;
        factor = fac_u / fac_d;
        for j = k : n    %% 1:n
            i;
            j;
            k;
            a(i,j) = a(i,j) - factor*a(k,j);
            a;
        end
        b(i) = b(i) - factor* b(k); 
    end
end

%%% END OF FORWARD ELIMINATION

a;
b;

%disp('END OF FORWARD ELIMINATION')



%%% BACK SUBSTITUTION
s=[];
s(n) = b(n)/a(n,n);
n;
for i = n-1:-1:1
    
    sum = 0;
    for j = i+1:n
        i;
        j;
        a(i,j);
        s(j);
        sum = sum + a(i,j)*s(j);
    end
    s(i) = (b(i) - sum) / a(i,i);
end

s = s';
