fid = fopen('fgetl.txt');
iter_s = fgetl(fid);
iter = str2num(['uint8(',iter_s,')']);

st_x = 'x^';
ch = char(97:97+iter-1);

method = fgetl(fid);    % if iterative will add one to iter for arguments-

mat=[]

for a = 1:iter
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
   
    if ~TF
        c(1) = 0 
    end
    
    mat = [mat;c];

    
end

mat

fclose(fid);

%str=input('function = ','s')
%f=str2func(str)
%f(5,6)