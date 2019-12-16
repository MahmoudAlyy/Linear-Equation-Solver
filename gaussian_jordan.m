function [s] = gaussian_jordan(a,b)


n = size(a);
n = n(1);
happened = false;


for k = 1:n
    
    
    
%%% PIVOTING
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
%%% PIVOTING END


if a(k,k) == 0
    error "division by zero"
end



  for i = 1:n
        
        if k ~= i
        fac_u = a(i,k)*1.0 ; 
        fac_d= a(k,k)*1.0 ;
        factor = fac_u / fac_d;
        
        for j = 1 :n
            a(i,j) = a(i,j) - factor*a(k,j);
        end
        b(i) = b(i) - factor* b(k); 

        
        end
      
  end

end

a;
b;

for i = 1:n
    s(i) = b(i)/a(i,i);
end

s = s';



