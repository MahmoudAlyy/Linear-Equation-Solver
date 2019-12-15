%%% START OF READ, LIMITAION: 26 EQUATION STARTING WITH (a) ending with (z)
clc
fid = fopen('fgetl.txt');
iter_s = fgetl(fid);
iter = str2num(['uint8(',iter_s,')']);

st_x = 'x^';
ch = char(97:97+iter-1);

method = fgetl(fid);    % if iterative will add one to iter for arguments-

mat=[];
a=[];
b=[];

for counter = 1:iter
    fn = fgetl(fid);
    TF = contains(fn,'a');
    if ~TF
        st_a='1*a + ';
        fn = strcat(st_a,fn);
    end

    
    for ns = 1:length(ch)
        st = strcat(st_x , int2str(abs(iter-ns+1)) );
        fn = strrep(fn,ch(ns),st);
    end
    
    c = coeffs(fn,[x],'All');
    c = eval(c);
    %c =vpa(c);
    
   
    if ~TF
        c(1) = 0 ;
    end
    
    mat = [mat;c];

    
end

fclose(fid);

%mat = float(mat)

for counter = 1:iter

    a = [a;mat(counter,1:end-1)];
    b = [b;mat(counter,end)] ;

end
b=-b;


method
a
b

disp('END OF READ')

%%% END OF READ

n = iter;

for k = 1:n-1
   
    for i = k+1:n
        %disp('factor cal at i =');
        %disp(i);
        fac_u = a(i,k)*1.0 ; 
        fac_d= a(k,k)*1.0 ;
        class(fac_u);
        %factor = a(i,k)) / double(a(k,k))
        factor = fac_u / fac_d;
        
        class(factor);
        
        
        

        
        for j = k : n
            i;
            j;
            k;
            a(i,j) = a(i,j) - factor*a(k,j);
            a;
        end
        
        b(i) = b(i) - factor* b(k);
        
    end
  
    
end

a
b












